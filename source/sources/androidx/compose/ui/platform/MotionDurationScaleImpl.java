package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.MotionDurationScale;
import defpackage.u2;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MotionDurationScaleImpl implements MotionDurationScale {
    public final Context j;
    public ContextScope k;
    public final MutableFloatState l = PrimitiveSnapshotStateKt.a(1.0f);
    public Job m;

    public MotionDurationScaleImpl(Context context) {
        this.j = context;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext A(CoroutineContext coroutineContext) {
        return CoroutineContext.Element.DefaultImpls.c(this, coroutineContext);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object P0(Object obj, Function2 function2) {
        return function2.n(obj, this);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    @Override // androidx.compose.ui.MotionDurationScale
    public final float a0() {
        StateFlow stateFlow;
        if (this.m == null) {
            Context context = this.j;
            MutableScatterMap mutableScatterMap = WindowRecomposer_androidKt.a;
            synchronized (mutableScatterMap) {
                try {
                    Object e = mutableScatterMap.e(context);
                    if (e == null) {
                        ContentResolver contentResolver = context.getContentResolver();
                        Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                        final BufferedChannel a = ChannelKt.a(-1, 6, null);
                        final Handler createAsync = Handler.createAsync(Looper.getMainLooper());
                        Flow p = FlowKt.p(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(createAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                            @Override // android.database.ContentObserver
                            public final void onChange(boolean z, Uri uri) {
                                BufferedChannel.this.j(Unit.a);
                            }
                        }, a, context, null));
                        Job b = SupervisorKt.b();
                        DefaultScheduler defaultScheduler = Dispatchers.a;
                        e = FlowKt.v(p, new ContextScope(CoroutineContext.Element.DefaultImpls.c((JobSupport) b, MainDispatcherLoader.a)), SharingStarted.Companion.a(), Float.valueOf(Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f)));
                        mutableScatterMap.o(context, e);
                    }
                    stateFlow = (StateFlow) e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            ((SnapshotMutableFloatStateImpl) this.l).k(((Number) stateFlow.getValue()).floatValue());
            ContextScope contextScope = this.k;
            if (contextScope != null) {
                this.m = BuildersKt.c(contextScope, null, null, new MotionDurationScaleImpl$startObservingSystemScaleFactor$1(stateFlow, this, null), 3);
            } else {
                u2.l("MotionDurationScale scale factor requested before recomposer loop start");
                return 0.0f;
            }
        }
        return ((SnapshotMutableFloatStateImpl) this.l).j();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext g0(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.b(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element v(CoroutineContext.Key key) {
        return CoroutineContext.Element.DefaultImpls.a(this, key);
    }
}
