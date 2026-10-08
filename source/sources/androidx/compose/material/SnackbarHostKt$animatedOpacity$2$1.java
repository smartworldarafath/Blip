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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SnackbarHostKt$animatedOpacity$2$1", f = "SnackbarHost.kt", l = {344}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SnackbarHostKt$animatedOpacity$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Animatable o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ TweenSpec q;
    public final /* synthetic */ Function0 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnackbarHostKt$animatedOpacity$2$1(Animatable animatable, boolean z, TweenSpec tweenSpec, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.o = animatable;
        this.p = z;
        this.q = tweenSpec;
        this.r = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SnackbarHostKt$animatedOpacity$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SnackbarHostKt$animatedOpacity$2$1(this.o, this.p, this.q, this.r, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float f;
        SnackbarHostKt$animatedOpacity$2$1 snackbarHostKt$animatedOpacity$2$1;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                snackbarHostKt$animatedOpacity$2$1 = this;
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            if (this.p) {
                f = 1.0f;
            } else {
                f = 0.0f;
            }
            Float f2 = new Float(f);
            this.n = 1;
            snackbarHostKt$animatedOpacity$2$1 = this;
            if (Animatable.d(this.o, f2, this.q, null, snackbarHostKt$animatedOpacity$2$1, 12) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        snackbarHostKt$animatedOpacity$2$1.r.a();
        return Unit.a;
    }
}
