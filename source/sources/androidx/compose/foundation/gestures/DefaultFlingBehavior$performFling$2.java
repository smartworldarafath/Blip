package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import defpackage.p2;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DefaultFlingBehavior$performFling$2", f = "Scrollable.kt", l = {933}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class DefaultFlingBehavior$performFling$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Float>, Object> {
    public Ref$FloatRef n;
    public AnimationState o;
    public int p;
    public final /* synthetic */ float q;
    public final /* synthetic */ DefaultFlingBehavior r;
    public final /* synthetic */ ScrollingLogic$doFlingAnimation$2$reverseScope$1 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(float f, DefaultFlingBehavior defaultFlingBehavior, ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, Continuation continuation) {
        super(2, continuation);
        this.q = f;
        this.r = defaultFlingBehavior;
        this.s = scrollingLogic$doFlingAnimation$2$reverseScope$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DefaultFlingBehavior$performFling$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DefaultFlingBehavior$performFling$2(this.q, this.r, this.s, continuation);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float f;
        AnimationState animationState;
        Ref$FloatRef ref$FloatRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        if (i != 0) {
            if (i == 1) {
                animationState = this.o;
                ref$FloatRef = this.n;
                try {
                    ResultKt.b(obj);
                } catch (CancellationException unused) {
                    ref$FloatRef.j = ((Number) animationState.b()).floatValue();
                    f = ref$FloatRef.j;
                    return new Float(f);
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            f = this.q;
            if (Math.abs(f) > 1.0f) {
                ?? obj2 = new Object();
                obj2.j = f;
                ?? obj3 = new Object();
                AnimationState b = AnimationStateKt.b(0.0f, f, 28);
                try {
                    DefaultFlingBehavior defaultFlingBehavior = this.r;
                    DecayAnimationSpec decayAnimationSpec = defaultFlingBehavior.a;
                    p2 p2Var = new p2((Ref$FloatRef) obj3, this.s, (Ref$FloatRef) obj2, defaultFlingBehavior);
                    this.n = obj2;
                    this.o = b;
                    this.p = 1;
                    if (SuspendAnimationKt.d(b, decayAnimationSpec, false, p2Var, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$FloatRef = obj2;
                } catch (CancellationException unused2) {
                    animationState = b;
                    ref$FloatRef = obj2;
                    ref$FloatRef.j = ((Number) animationState.b()).floatValue();
                    f = ref$FloatRef.j;
                    return new Float(f);
                }
            }
            return new Float(f);
        }
        f = ref$FloatRef.j;
        return new Float(f);
    }
}
