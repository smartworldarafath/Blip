package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.Dp;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.DefaultButtonElevation$elevation$2$1", f = "Button.kt", l = {551, 560}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class DefaultButtonElevation$elevation$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Animatable o;
    public final /* synthetic */ float p;
    public final /* synthetic */ boolean q;
    public final /* synthetic */ DefaultButtonElevation r;
    public final /* synthetic */ Interaction s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultButtonElevation$elevation$2$1(Animatable animatable, float f, boolean z, DefaultButtonElevation defaultButtonElevation, Interaction interaction, Continuation continuation) {
        super(2, continuation);
        this.o = animatable;
        this.p = f;
        this.q = z;
        this.r = defaultButtonElevation;
        this.s = interaction;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DefaultButtonElevation$elevation$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DefaultButtonElevation$elevation$2$1(this.o, this.p, this.q, this.r, this.s, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b7, code lost:
    
        if ((r14 instanceof androidx.compose.foundation.interaction.FocusInteraction$Focus) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00de A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Object obj2;
        Object h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        TweenSpec tweenSpec = null;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            return unit;
        }
        ResultKt.b(obj);
        Animatable animatable = this.o;
        float f = ((Dp) ((SnapshotMutableStateImpl) animatable.e).getValue()).j;
        float f2 = this.p;
        if (!Dp.b(f, f2)) {
            if (!this.q) {
                Dp dp = new Dp(f2);
                this.n = 1;
                if (animatable.h(dp, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                float f3 = ((Dp) ((SnapshotMutableStateImpl) animatable.e).getValue()).j;
                if (Dp.b(f3, 8.0f)) {
                    obj2 = new PressInteraction.Press(0L);
                } else if (Dp.b(f3, 4.0f)) {
                    obj2 = new Object();
                } else if (Dp.b(f3, 4.0f)) {
                    obj2 = new Object();
                } else {
                    obj2 = null;
                }
                this.n = 2;
                TweenSpec tweenSpec2 = ElevationKt.b;
                TweenSpec tweenSpec3 = ElevationKt.a;
                Interaction interaction = this.s;
                if (interaction != null) {
                    if ((interaction instanceof PressInteraction.Press) || (interaction instanceof DragInteraction$Start) || (interaction instanceof HoverInteraction$Enter) || (interaction instanceof FocusInteraction$Focus)) {
                        tweenSpec = tweenSpec3;
                    }
                } else if (obj2 != null) {
                    if (!(obj2 instanceof PressInteraction.Press) && !(obj2 instanceof DragInteraction$Start)) {
                        if (obj2 instanceof HoverInteraction$Enter) {
                            tweenSpec = ElevationKt.c;
                        }
                    }
                    tweenSpec = tweenSpec2;
                }
                TweenSpec tweenSpec4 = tweenSpec;
                Animatable animatable2 = this.o;
                if (tweenSpec4 == null ? (h = animatable2.h(new Dp(f2), this)) != coroutineSingletons : (h = Animatable.d(animatable2, new Dp(f2), tweenSpec4, null, this, 12)) != coroutineSingletons) {
                    h = unit;
                }
                if (h == coroutineSingletons) {
                }
            }
        }
        return unit;
    }
}
