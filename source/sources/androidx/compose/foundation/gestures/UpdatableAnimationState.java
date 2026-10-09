package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.MotionDurationScale;
import defpackage.ec;
import defpackage.n1;
import defpackage.p2;
import defpackage.u2;
import defpackage.z0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UpdatableAnimationState {
    public static final AnimationVector1D f = new AnimationVector1D(0.0f);
    public final VectorizedAnimationSpec a;
    public long b = Long.MIN_VALUE;
    public AnimationVector1D c = f;
    public boolean d;
    public float e;

    public UpdatableAnimationState(AnimationSpec animationSpec) {
        this.a = animationSpec.a(VectorConvertersKt.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ae, code lost:
    
        if (r13 != 0.0f) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d5, code lost:
    
        if (androidx.compose.runtime.MonotonicFrameClockKt.a(r0).w(r4, r9) == r3) goto L43;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* JADX WARN: Type inference failed for: r14v7, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a6 -> B:23:0x00a9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(p2 p2Var, n1 n1Var, ContinuationImpl continuationImpl) {
        UpdatableAnimationState$animateToZero$1 updatableAnimationState$animateToZero$1;
        int i;
        AnimationVector1D animationVector1D;
        float f2;
        float f3;
        UpdatableAnimationState$animateToZero$1 updatableAnimationState$animateToZero$12;
        p2 p2Var2;
        Function0 function0;
        try {
            if (continuationImpl instanceof UpdatableAnimationState$animateToZero$1) {
                updatableAnimationState$animateToZero$1 = (UpdatableAnimationState$animateToZero$1) continuationImpl;
                int i2 = updatableAnimationState$animateToZero$1.r;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    updatableAnimationState$animateToZero$1.r = i2 - Integer.MIN_VALUE;
                    Object obj = updatableAnimationState$animateToZero$1.p;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = updatableAnimationState$animateToZero$1.r;
                    animationVector1D = f;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                function0 = (Function0) updatableAnimationState$animateToZero$1.m;
                                ResultKt.b(obj);
                                function0.a();
                                this.b = Long.MIN_VALUE;
                                this.c = animationVector1D;
                                this.d = false;
                                return Unit.a;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        float f4 = updatableAnimationState$animateToZero$1.o;
                        Function0 function02 = updatableAnimationState$animateToZero$1.n;
                        ?? r14 = (Function1) updatableAnimationState$animateToZero$1.m;
                        ResultKt.b(obj);
                        updatableAnimationState$animateToZero$12 = updatableAnimationState$animateToZero$1;
                        function0 = function02;
                        f3 = f4;
                        p2Var2 = r14;
                        function0.a();
                    } else {
                        ResultKt.b(obj);
                        if (this.d) {
                            InlineClassHelperKt.c("animateToZero called while previous animation is running");
                        }
                        CoroutineContext coroutineContext = updatableAnimationState$animateToZero$1.k;
                        coroutineContext.getClass();
                        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.v(MotionDurationScale.Key.j);
                        if (motionDurationScale != null) {
                            f2 = motionDurationScale.a0();
                        } else {
                            f2 = 1.0f;
                        }
                        this.d = true;
                        f3 = f2;
                        updatableAnimationState$animateToZero$12 = updatableAnimationState$animateToZero$1;
                        p2Var2 = p2Var;
                        function0 = n1Var;
                        if (Math.abs(this.e) >= 0.01f) {
                            z0 z0Var = new z0(this, f3, p2Var2);
                            updatableAnimationState$animateToZero$12.m = p2Var2;
                            updatableAnimationState$animateToZero$12.n = function0;
                            updatableAnimationState$animateToZero$12.o = f3;
                            updatableAnimationState$animateToZero$12.r = 1;
                            CoroutineContext coroutineContext2 = updatableAnimationState$animateToZero$12.k;
                            coroutineContext2.getClass();
                            if (MonotonicFrameClockKt.a(coroutineContext2).w(updatableAnimationState$animateToZero$12, z0Var) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            function0.a();
                        } else if (Math.abs(this.e) != 0.0f) {
                            ec ecVar = new ec(25, this, p2Var2);
                            updatableAnimationState$animateToZero$12.m = function0;
                            updatableAnimationState$animateToZero$12.n = null;
                            updatableAnimationState$animateToZero$12.r = 2;
                            CoroutineContext coroutineContext3 = updatableAnimationState$animateToZero$12.k;
                            coroutineContext3.getClass();
                        } else {
                            this.b = Long.MIN_VALUE;
                            this.c = animationVector1D;
                            this.d = false;
                            return Unit.a;
                        }
                    }
                }
            }
            if (i == 0) {
            }
        } catch (Throwable th) {
            this.b = Long.MIN_VALUE;
            this.c = animationVector1D;
            this.d = false;
            throw th;
        }
        updatableAnimationState$animateToZero$1 = new UpdatableAnimationState$animateToZero$1(this, continuationImpl);
        Object obj2 = updatableAnimationState$animateToZero$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = updatableAnimationState$animateToZero$1.r;
        animationVector1D = f;
    }
}
