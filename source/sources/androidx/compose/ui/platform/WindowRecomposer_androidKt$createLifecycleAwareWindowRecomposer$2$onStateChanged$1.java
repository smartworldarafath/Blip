package androidx.compose.ui.platform;

import androidx.compose.runtime.Recomposer;
import androidx.lifecycle.LifecycleOwner;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1", f = "WindowRecomposer.android.kt", l = {379}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Ref$ObjectRef o;
    public final /* synthetic */ Recomposer p;
    public final /* synthetic */ LifecycleOwner q;
    public final /* synthetic */ WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(Ref$ObjectRef ref$ObjectRef, Recomposer recomposer, LifecycleOwner lifecycleOwner, WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2, Continuation continuation) {
        super(2, continuation);
        this.o = ref$ObjectRef;
        this.p = recomposer;
        this.q = lifecycleOwner;
        this.r = windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(this.o, this.p, this.q, this.r, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 = this.r;
        LifecycleOwner lifecycleOwner = this.q;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                MotionDurationScaleImpl motionDurationScaleImpl = (MotionDurationScaleImpl) this.o.j;
                Recomposer recomposer = this.p;
                if (motionDurationScaleImpl != null) {
                    motionDurationScaleImpl.k = CoroutineScopeKt.a(recomposer.x);
                }
                this.n = 1;
                if (recomposer.N(this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            lifecycleOwner.g().b(windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2);
            return Unit.a;
        } catch (Throwable th) {
            lifecycleOwner.g().b(windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2);
            throw th;
        }
    }
}
