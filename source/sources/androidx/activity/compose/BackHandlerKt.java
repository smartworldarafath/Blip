package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.media.MediaMetadataRetriever;
import android.view.View;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.BackHandlerKt;
import androidx.activity.compose.internal.BackHandlerCompat;
import androidx.activity.compose.internal.BackHandlerCompat$onBackPressedCallback$1;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import androidx.navigationevent.NavigationEventDispatcher;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import defpackage.fe;
import defpackage.n;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BackHandlerKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v7, types: [androidx.activity.compose.internal.BackHandlerCompat, androidx.activity.compose.ComposeBackHandler, java.lang.Object] */
    public static final void a(boolean z, final Function0 function0, Composer composer, final int i, final int i2) {
        final boolean z2;
        int i3;
        int i4;
        boolean z3;
        final boolean z4;
        NavigationEventDispatcherOwner navigationEventDispatcherOwner;
        NavigationEventDispatcher navigationEventDispatcher;
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner;
        boolean z5;
        boolean z6;
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner2;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-361453782);
        int i6 = i2 & 1;
        if (i6 != 0) {
            i4 = i | 6;
            z2 = z;
        } else {
            z2 = z;
            if (gapComposer.g(z2)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i4 = i3 | i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function0)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i4 |= i5;
        }
        if ((i4 & 19) != 18) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i4 & 1, z3)) {
            if (i6 != 0) {
                z4 = true;
            } else {
                z4 = z2;
            }
            Object obj = (NavigationEventDispatcherOwner) gapComposer.j(LocalNavigationEventDispatcherOwner.a);
            OnBackPressedDispatcher onBackPressedDispatcher = null;
            if (obj == null) {
                gapComposer.W(535274673);
                obj = (OnBackPressedDispatcherOwner) gapComposer.j(LocalOnBackPressedDispatcherOwner.a);
                if (obj == null) {
                    gapComposer.W(1208426157);
                    View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
                    view.getClass();
                    while (true) {
                        if (view != null) {
                            Object tag = view.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                            if (tag instanceof OnBackPressedDispatcherOwner) {
                                onBackPressedDispatcherOwner2 = (OnBackPressedDispatcherOwner) tag;
                            } else {
                                onBackPressedDispatcherOwner2 = null;
                            }
                            if (onBackPressedDispatcherOwner2 != null) {
                                obj = onBackPressedDispatcherOwner2;
                                break;
                            }
                            Object a = ViewTree.a(view);
                            if (a instanceof View) {
                                view = (View) a;
                            } else {
                                view = null;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                } else {
                    gapComposer.W(1208423708);
                }
                gapComposer.p(false);
                if (obj == null) {
                    gapComposer.W(1208428160);
                    Object obj2 = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
                    while (true) {
                        if (obj2 instanceof ContextWrapper) {
                            if (obj2 instanceof OnBackPressedDispatcherOwner) {
                                break;
                            } else {
                                obj2 = ((ContextWrapper) obj2).getBaseContext();
                            }
                        } else {
                            obj2 = null;
                            break;
                        }
                    }
                    obj = (OnBackPressedDispatcherOwner) obj2;
                } else {
                    gapComposer.W(1208423789);
                }
                gapComposer.p(false);
            } else {
                gapComposer.W(535271790);
            }
            gapComposer.p(false);
            if (obj != null) {
                boolean f = gapComposer.f(obj);
                Object K = gapComposer.K();
                Object obj3 = Composer.Companion.a;
                if (f || K == obj3) {
                    if (obj instanceof NavigationEventDispatcherOwner) {
                        navigationEventDispatcherOwner = (NavigationEventDispatcherOwner) obj;
                    } else {
                        navigationEventDispatcherOwner = null;
                    }
                    if (navigationEventDispatcherOwner != null) {
                        navigationEventDispatcher = navigationEventDispatcherOwner.b();
                    } else {
                        navigationEventDispatcher = null;
                    }
                    if (obj instanceof OnBackPressedDispatcherOwner) {
                        onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) obj;
                    } else {
                        onBackPressedDispatcherOwner = null;
                    }
                    if (onBackPressedDispatcherOwner != null) {
                        onBackPressedDispatcher = onBackPressedDispatcherOwner.a();
                    }
                    K = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcher);
                    gapComposer.g0(K);
                }
                final BackHandlerDispatcherCompat backHandlerDispatcherCompat = (BackHandlerDispatcherCompat) K;
                long j = gapComposer.T;
                boolean f2 = gapComposer.f(backHandlerDispatcherCompat) | gapComposer.e(j);
                Object K2 = gapComposer.K();
                Object obj4 = K2;
                if (f2 || K2 == obj3) {
                    ?? backHandlerCompat = new BackHandlerCompat(new BackHandlerInfo(j, obj));
                    backHandlerCompat.c = new n(19);
                    gapComposer.g0(backHandlerCompat);
                    obj4 = backHandlerCompat;
                }
                final ComposeBackHandler composeBackHandler = (ComposeBackHandler) obj4;
                gapComposer.W(-585307852);
                boolean h = gapComposer.h(composeBackHandler);
                if ((i4 & 112) == 32) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                boolean z7 = h | z5;
                Object K3 = gapComposer.K();
                if (z7 || K3 == obj3) {
                    K3 = new Function0() { // from class: androidx.activity.compose.a
                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            ComposeBackHandler.this.c = function0;
                            return Unit.a;
                        }
                    };
                    gapComposer.g0(K3);
                }
                EffectsKt.g((Function0) K3, gapComposer);
                Boolean valueOf = Boolean.valueOf(z4);
                boolean h2 = gapComposer.h(composeBackHandler);
                int i7 = i4 & 14;
                if (i7 == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean z8 = h2 | z6;
                Object K4 = gapComposer.K();
                if (z8 || K4 == obj3) {
                    K4 = new Function1() { // from class: androidx.activity.compose.b
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj5) {
                            ComposeBackHandler composeBackHandler2 = ComposeBackHandler.this;
                            BackHandlerCompat$onBackPressedCallback$1 backHandlerCompat$onBackPressedCallback$1 = composeBackHandler2.a;
                            boolean z9 = z4;
                            backHandlerCompat$onBackPressedCallback$1.e(z9);
                            composeBackHandler2.b.f(z9);
                            return new LifecycleStopOrDisposeEffectResult((LifecycleStartStopEffectScope) obj5, composeBackHandler2) { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1
                                public final /* synthetic */ ComposeBackHandler a;

                                {
                                    this.a = composeBackHandler2;
                                }

                                @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
                                public final void a() {
                                    ComposeBackHandler composeBackHandler3 = this.a;
                                    composeBackHandler3.a.e(false);
                                    composeBackHandler3.b.f(false);
                                }
                            };
                        }
                    };
                    gapComposer.g0(K4);
                }
                LifecycleEffectKt.a(valueOf, composeBackHandler, null, (Function1) K4, gapComposer, i7);
                boolean h3 = gapComposer.h(backHandlerDispatcherCompat) | gapComposer.h(composeBackHandler);
                Object K5 = gapComposer.K();
                if (h3 || K5 == obj3) {
                    K5 = new Function1() { // from class: androidx.activity.compose.c
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj5) {
                            final BackHandlerDispatcherCompat backHandlerDispatcherCompat2 = BackHandlerDispatcherCompat.this;
                            NavigationEventDispatcher navigationEventDispatcher2 = backHandlerDispatcherCompat2.a;
                            final ComposeBackHandler composeBackHandler2 = composeBackHandler;
                            if (navigationEventDispatcher2 != null) {
                                NavigationEventDispatcher.a(navigationEventDispatcher2, composeBackHandler2.b);
                            } else {
                                OnBackPressedDispatcher onBackPressedDispatcher2 = backHandlerDispatcherCompat2.b;
                                if (onBackPressedDispatcher2 != null) {
                                    onBackPressedDispatcher2.a(composeBackHandler2.a);
                                } else {
                                    u2.l("Unreachable");
                                    return null;
                                }
                            }
                            return new DisposableEffectResult() { // from class: androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public final void a() {
                                    boolean isTerminated;
                                    BackHandlerDispatcherCompat backHandlerDispatcherCompat3 = BackHandlerDispatcherCompat.this;
                                    NavigationEventDispatcher navigationEventDispatcher3 = backHandlerDispatcherCompat3.a;
                                    ComposeBackHandler composeBackHandler3 = composeBackHandler2;
                                    if (navigationEventDispatcher3 != null) {
                                        composeBackHandler3.b.e();
                                        return;
                                    }
                                    if (backHandlerDispatcherCompat3.b != null) {
                                        BackHandlerCompat$onBackPressedCallback$1 backHandlerCompat$onBackPressedCallback$1 = composeBackHandler3.a;
                                        ArrayList arrayList = backHandlerCompat$onBackPressedCallback$1.a;
                                        CopyOnWriteArrayList copyOnWriteArrayList = backHandlerCompat$onBackPressedCallback$1.c;
                                        Iterator it = copyOnWriteArrayList.iterator();
                                        it.getClass();
                                        while (it.hasNext()) {
                                            AutoCloseable autoCloseable = (AutoCloseable) it.next();
                                            if (autoCloseable instanceof AutoCloseable) {
                                                autoCloseable.close();
                                            } else if (autoCloseable instanceof ExecutorService) {
                                                ExecutorService executorService = (ExecutorService) autoCloseable;
                                                if (executorService != ForkJoinPool.commonPool() && !(isTerminated = executorService.isTerminated())) {
                                                    executorService.shutdown();
                                                    boolean z9 = false;
                                                    while (!isTerminated) {
                                                        try {
                                                            isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                                                        } catch (InterruptedException unused) {
                                                            if (!z9) {
                                                                executorService.shutdownNow();
                                                                z9 = true;
                                                            }
                                                        }
                                                    }
                                                    if (z9) {
                                                        Thread.currentThread().interrupt();
                                                    }
                                                }
                                            } else if (autoCloseable instanceof TypedArray) {
                                                ((TypedArray) autoCloseable).recycle();
                                            } else if (autoCloseable instanceof MediaMetadataRetriever) {
                                                ((MediaMetadataRetriever) autoCloseable).release();
                                            } else {
                                                fe.h();
                                                return;
                                            }
                                        }
                                        copyOnWriteArrayList.clear();
                                        Iterator it2 = arrayList.iterator();
                                        while (it2.hasNext()) {
                                            ((OnBackPressedCallback.OnBackPressedEventHandler) it2.next()).e();
                                        }
                                        arrayList.clear();
                                        return;
                                    }
                                    u2.l("Unreachable");
                                }
                            };
                        }
                    };
                    gapComposer.g0(K5);
                }
                EffectsKt.b(backHandlerDispatcherCompat, composeBackHandler, (Function1) K5, gapComposer);
                gapComposer.p(false);
                z2 = z4;
            } else {
                u2.l("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: a4
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj5, Object obj6) {
                    ((Integer) obj6).getClass();
                    int a2 = RecomposeScopeImplKt.a(i | 1);
                    BackHandlerKt.a(z2, function0, (Composer) obj5, a2, i2);
                    return Unit.a;
                }
            };
        }
    }
}
