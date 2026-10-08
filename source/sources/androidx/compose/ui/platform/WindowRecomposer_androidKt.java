package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.core.viewtree.ViewTree;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import defpackage.f7;
import defpackage.k8;
import defpackage.ri;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.android.HandlerDispatcherKt;
import kotlinx.coroutines.internal.ContextScope;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WindowRecomposer_androidKt {
    public static final MutableScatterMap a;

    static {
        long[] jArr = ScatterMapKt.a;
        a = new MutableScatterMap();
    }

    public static final CompositionContext a(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final Recomposer b(final View view) {
        CoroutineContext coroutineContext;
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        Lifecycle lifecycle;
        if (!view.isAttachedToWindow()) {
            InlineClassHelperKt.b("Cannot locate windowRecomposer; View " + view + " is not attached to a window");
        }
        Object a2 = ViewTree.a(view);
        while (a2 instanceof View) {
            View view2 = (View) a2;
            if (view2.getId() == 16908290) {
                break;
            }
            a2 = view2.getParent();
            view = view2;
        }
        CompositionContext a3 = a(view);
        if (a3 == null) {
            ((ri) ((WindowRecomposerFactory) WindowRecomposerPolicy.a.get())).getClass();
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.j;
            Lazy lazy = AndroidUiDispatcher.v;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                coroutineContext = (CoroutineContext) AndroidUiDispatcher.v.getValue();
            } else {
                coroutineContext = AndroidUiDispatcher.w.get();
                if (coroutineContext == null) {
                    u2.l("no AndroidUiDispatcher for this thread");
                    return null;
                }
            }
            CoroutineContext A = coroutineContext.A(emptyCoroutineContext);
            MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) A.v(MonotonicFrameClock.Key.j);
            if (monotonicFrameClock != null) {
                PausableMonotonicFrameClock pausableMonotonicFrameClock2 = new PausableMonotonicFrameClock(monotonicFrameClock);
                Latch latch = pausableMonotonicFrameClock2.k;
                synchronized (latch.a) {
                    latch.d = false;
                    pausableMonotonicFrameClock = pausableMonotonicFrameClock2;
                }
            } else {
                pausableMonotonicFrameClock = 0;
            }
            final ?? obj = new Object();
            CoroutineContext coroutineContext2 = (MotionDurationScale) A.v(MotionDurationScale.Key.j);
            if (coroutineContext2 == null) {
                coroutineContext2 = new MotionDurationScaleImpl(view.getContext().getApplicationContext());
                obj.j = coroutineContext2;
            }
            if (pausableMonotonicFrameClock != 0) {
                emptyCoroutineContext = pausableMonotonicFrameClock;
            }
            CoroutineContext A2 = A.A(emptyCoroutineContext).A(coroutineContext2);
            final Recomposer recomposer = new Recomposer(A2);
            synchronized (recomposer.c) {
                recomposer.t = true;
            }
            final ContextScope a4 = CoroutineScopeKt.a(A2);
            LifecycleOwner a5 = ViewTreeLifecycleOwner.a(view);
            if (a5 != null) {
                lifecycle = a5.g();
            } else {
                lifecycle = null;
            }
            if (lifecycle != null) {
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view3) {
                        view.removeOnAttachStateChangeListener(this);
                        recomposer.x();
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view3) {
                    }
                });
                lifecycle.a(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2

                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                    /* loaded from: classes.dex */
                    public static final /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] a;

                        static {
                            int[] iArr = new int[Lifecycle.Event.values().length];
                            try {
                                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            try {
                                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                            } catch (NoSuchFieldError unused4) {
                            }
                            try {
                                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                            } catch (NoSuchFieldError unused5) {
                            }
                            try {
                                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                            } catch (NoSuchFieldError unused6) {
                            }
                            try {
                                iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                            } catch (NoSuchFieldError unused7) {
                            }
                            a = iArr;
                        }
                    }

                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        boolean z;
                        CancellableContinuation cancellableContinuation = null;
                        switch (WhenMappings.a[event.ordinal()]) {
                            case 1:
                                BuildersKt.c(ContextScope.this, null, CoroutineStart.m, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(obj, recomposer, lifecycleOwner, this, null), 1);
                                return;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                PausableMonotonicFrameClock pausableMonotonicFrameClock3 = pausableMonotonicFrameClock;
                                if (pausableMonotonicFrameClock3 != null) {
                                    Latch latch2 = pausableMonotonicFrameClock3.k;
                                    synchronized (latch2.a) {
                                        try {
                                            synchronized (latch2.a) {
                                                z = latch2.d;
                                            }
                                            if (!z) {
                                                ArrayList arrayList = latch2.b;
                                                latch2.b = latch2.c;
                                                latch2.c = arrayList;
                                                latch2.d = true;
                                                int size = arrayList.size();
                                                for (int i = 0; i < size; i++) {
                                                    ((Continuation) arrayList.get(i)).g(Unit.a);
                                                }
                                                arrayList.clear();
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                }
                                Recomposer recomposer2 = recomposer;
                                synchronized (recomposer2.c) {
                                    if (recomposer2.t) {
                                        recomposer2.t = false;
                                        cancellableContinuation = recomposer2.y();
                                    }
                                }
                                if (cancellableContinuation != null) {
                                    ((CancellableContinuationImpl) cancellableContinuation).g(Unit.a);
                                    return;
                                }
                                return;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                Recomposer recomposer3 = recomposer;
                                synchronized (recomposer3.c) {
                                    recomposer3.t = true;
                                }
                                return;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                recomposer.x();
                                return;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                return;
                            default:
                                k8.e();
                                return;
                        }
                    }
                });
                view.setTag(R.id.androidx_compose_ui_view_composition_context, recomposer);
                GlobalScope globalScope = GlobalScope.j;
                Handler handler = view.getHandler();
                int i = HandlerDispatcherKt.a;
                final Job c = BuildersKt.c(globalScope, new HandlerContext(handler, "windowRecomposer cleanup", false).o, null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(recomposer, view, null), 2);
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposerPolicy$createAndInstallWindowRecomposer$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view3) {
                        view3.removeOnAttachStateChangeListener(this);
                        ((JobSupport) Job.this).n(null);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view3) {
                    }
                });
                return recomposer;
            }
            InlineClassHelperKt.c("ViewTreeLifecycleOwner not found from " + view);
            f7.h();
            return null;
        }
        if (a3 instanceof Recomposer) {
            return (Recomposer) a3;
        }
        u2.l("root viewTreeParentCompositionContext is not a Recomposer");
        return null;
    }
}
