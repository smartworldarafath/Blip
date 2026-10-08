package androidx.compose.material.ripple;

import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.DrawModifierNodeKt;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.ripple.RippleNode$onAttach$1", f = "Ripple.kt", l = {364}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class RippleNode$onAttach$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ RippleNode p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleNode$onAttach$1(RippleNode rippleNode, Continuation continuation) {
        super(2, continuation);
        this.p = rippleNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((RippleNode$onAttach$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        RippleNode$onAttach$1 rippleNode$onAttach$1 = new RippleNode$onAttach$1(this.p, continuation);
        rippleNode$onAttach$1.o = obj;
        return rippleNode$onAttach$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return Unit.a;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        final CoroutineScope coroutineScope = (CoroutineScope) this.o;
        final RippleNode rippleNode = this.p;
        SharedFlowImpl c = rippleNode.x.c();
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material.ripple.RippleNode$onAttach$1.1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object r(Object obj2, Continuation continuation) {
                float f;
                Interaction interaction = (Interaction) obj2;
                boolean z = interaction instanceof PressInteraction;
                RippleNode rippleNode2 = RippleNode.this;
                if (z) {
                    if (rippleNode2.E) {
                        rippleNode2.Y0((PressInteraction) interaction);
                    } else {
                        rippleNode2.F.g(interaction);
                    }
                } else {
                    StateLayer stateLayer = rippleNode2.B;
                    if (stateLayer == null) {
                        stateLayer = new StateLayer(rippleNode2.y, rippleNode2.A);
                        DrawModifierNodeKt.a(rippleNode2);
                        rippleNode2.B = stateLayer;
                    }
                    ArrayList arrayList = stateLayer.d;
                    if (interaction instanceof HoverInteraction$Enter) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof HoverInteraction$Exit) {
                        arrayList.remove(((HoverInteraction$Exit) interaction).a);
                    } else if (interaction instanceof FocusInteraction$Focus) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof FocusInteraction$Unfocus) {
                        arrayList.remove(((FocusInteraction$Unfocus) interaction).a);
                    } else if (interaction instanceof DragInteraction$Start) {
                        arrayList.add(interaction);
                    } else if (interaction instanceof DragInteraction$Stop) {
                        arrayList.remove(((DragInteraction$Stop) interaction).a);
                    } else if (interaction instanceof DragInteraction$Cancel) {
                        arrayList.remove(((DragInteraction$Cancel) interaction).a);
                    }
                    Interaction interaction2 = (Interaction) CollectionsKt.A(arrayList);
                    if (!Intrinsics.a(stateLayer.e, interaction2)) {
                        CoroutineScope coroutineScope2 = coroutineScope;
                        if (interaction2 != null) {
                            RippleAlpha rippleAlpha = (RippleAlpha) stateLayer.b.a();
                            boolean z2 = interaction2 instanceof HoverInteraction$Enter;
                            if (z2) {
                                f = rippleAlpha.c;
                            } else if (interaction2 instanceof FocusInteraction$Focus) {
                                f = rippleAlpha.b;
                            } else if (interaction2 instanceof DragInteraction$Start) {
                                f = rippleAlpha.a;
                            } else {
                                f = 0.0f;
                            }
                            TweenSpec tweenSpec = RippleKt.a;
                            if (!z2) {
                                if (interaction2 instanceof FocusInteraction$Focus) {
                                    tweenSpec = new TweenSpec(45, EasingKt.c, 2);
                                } else if (interaction2 instanceof DragInteraction$Start) {
                                    tweenSpec = new TweenSpec(45, EasingKt.c, 2);
                                }
                            }
                            BuildersKt.c(coroutineScope2, null, null, new StateLayer$handleInteraction$1(stateLayer, f, tweenSpec, null), 3);
                        } else {
                            Interaction interaction3 = stateLayer.e;
                            TweenSpec tweenSpec2 = RippleKt.a;
                            if (!(interaction3 instanceof HoverInteraction$Enter) && !(interaction3 instanceof FocusInteraction$Focus) && (interaction3 instanceof DragInteraction$Start)) {
                                tweenSpec2 = new TweenSpec(150, EasingKt.c, 2);
                            }
                            BuildersKt.c(coroutineScope2, null, null, new StateLayer$handleInteraction$2(stateLayer, tweenSpec2, null), 3);
                        }
                        stateLayer.e = interaction2;
                    }
                }
                return Unit.a;
            }
        };
        this.n = 1;
        c.getClass();
        SharedFlowImpl.l(c, flowCollector, this);
        return coroutineSingletons;
    }
}
