package androidx.compose.animation.core;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.s2;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.Animatable$runAnimation$2", f = "Animatable.kt", l = {308}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class Animatable$runAnimation$2 extends SuspendLambda implements Function1<Continuation<? super AnimationResult<Object, AnimationVector>>, Object> {
    public AnimationState n;
    public Ref$BooleanRef o;
    public int p;
    public final /* synthetic */ Animatable q;
    public final /* synthetic */ Object r;
    public final /* synthetic */ Animation s;
    public final /* synthetic */ long t;
    public final /* synthetic */ Function1 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Animatable$runAnimation$2(Animatable animatable, Object obj, Animation animation, long j, Function1 function1, Continuation continuation) {
        super(1, continuation);
        this.q = animatable;
        this.r = obj;
        this.s = animation;
        this.t = j;
        this.u = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        long j = this.t;
        Function1 function1 = this.u;
        return new Animatable$runAnimation$2(this.q, this.r, this.s, j, function1, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        AnimationState animationState;
        Ref$BooleanRef ref$BooleanRef;
        AnimationEndReason animationEndReason;
        Animation animation = this.s;
        Animatable animatable = this.q;
        AnimationState animationState2 = animatable.c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        try {
            if (i != 0) {
                if (i == 1) {
                    ref$BooleanRef = this.o;
                    animationState = this.n;
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                animationState2.l = (AnimationVector) ((TwoWayConverterImpl) animatable.a).a.b(this.r);
                ((SnapshotMutableStateImpl) animatable.e).setValue(animation.g());
                ((SnapshotMutableStateImpl) animatable.d).setValue(Boolean.TRUE);
                AnimationState animationState3 = new AnimationState(animationState2.j, ((SnapshotMutableStateImpl) animationState2.k).getValue(), AnimationVectorsKt.a(animationState2.l), animationState2.m, Long.MIN_VALUE, animationState2.o);
                ?? obj2 = new Object();
                long j = this.t;
                s2 s2Var = new s2(animatable, animationState3, this.u, (Object) obj2, 0);
                this.n = animationState3;
                this.o = obj2;
                this.p = 1;
                if (SuspendAnimationKt.b(animationState3, animation, j, s2Var, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                animationState = animationState3;
                ref$BooleanRef = obj2;
            }
            if (ref$BooleanRef.j) {
                animationEndReason = AnimationEndReason.j;
            } else {
                animationEndReason = AnimationEndReason.k;
            }
            Animatable.a(animatable);
            return new AnimationResult(animationState, animationEndReason);
        } catch (CancellationException e) {
            Animatable.a(animatable);
            throw e;
        }
    }
}
