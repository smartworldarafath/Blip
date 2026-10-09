package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.TweenSpec;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SnackbarHostKt$animatedScale$1$1", f = "SnackbarHost.kt", l = {354}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SnackbarHostKt$animatedScale$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Animatable o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ TweenSpec q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedScale$1$1(Animatable animatable, boolean z, TweenSpec tweenSpec, Continuation continuation) {
        super(2, continuation);
        this.o = animatable;
        this.p = z;
        this.q = tweenSpec;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SnackbarHostKt$animatedScale$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SnackbarHostKt$animatedScale$1$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            if (this.p) {
                f = 1.0f;
            } else {
                f = 0.8f;
            }
            Float f2 = new Float(f);
            this.n = 1;
            if (Animatable.d(this.o, f2, this.q, null, this, 12) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
