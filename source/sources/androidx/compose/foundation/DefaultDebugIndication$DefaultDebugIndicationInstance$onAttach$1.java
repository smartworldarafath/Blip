package androidx.compose.foundation;

import androidx.compose.foundation.DefaultDebugIndication;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.DrawModifierNodeKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1", f = "Indication.kt", l = {228}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ DefaultDebugIndication.DefaultDebugIndicationInstance o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance, Continuation continuation) {
        super(2, continuation);
        this.o = defaultDebugIndicationInstance;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1(this.o, continuation);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
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
        final ?? obj2 = new Object();
        final ?? obj3 = new Object();
        final ?? obj4 = new Object();
        final DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance = this.o;
        SharedFlowImpl c = defaultDebugIndicationInstance.x.c();
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.DefaultDebugIndication$DefaultDebugIndicationInstance$onAttach$1.1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object r(Object obj5, Continuation continuation) {
                boolean z;
                boolean z2;
                boolean z3;
                Interaction interaction = (Interaction) obj5;
                boolean z4 = interaction instanceof PressInteraction.Press;
                Ref$IntRef ref$IntRef = obj4;
                Ref$IntRef ref$IntRef2 = obj3;
                Ref$IntRef ref$IntRef3 = Ref$IntRef.this;
                boolean z5 = true;
                if (z4) {
                    ref$IntRef3.j++;
                } else if (interaction instanceof PressInteraction.Release) {
                    ref$IntRef3.j--;
                } else if (interaction instanceof PressInteraction.Cancel) {
                    ref$IntRef3.j--;
                } else if (interaction instanceof HoverInteraction$Enter) {
                    ref$IntRef2.j++;
                } else if (interaction instanceof HoverInteraction$Exit) {
                    ref$IntRef2.j--;
                } else if (interaction instanceof FocusInteraction$Focus) {
                    ref$IntRef.j++;
                } else if (interaction instanceof FocusInteraction$Unfocus) {
                    ref$IntRef.j--;
                }
                boolean z6 = false;
                if (ref$IntRef3.j > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (ref$IntRef2.j > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (ref$IntRef.j > 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                DefaultDebugIndication.DefaultDebugIndicationInstance defaultDebugIndicationInstance2 = defaultDebugIndicationInstance;
                if (defaultDebugIndicationInstance2.y != z) {
                    defaultDebugIndicationInstance2.y = z;
                    z6 = true;
                }
                if (defaultDebugIndicationInstance2.z != z2) {
                    defaultDebugIndicationInstance2.z = z2;
                    z6 = true;
                }
                if (defaultDebugIndicationInstance2.A != z3) {
                    defaultDebugIndicationInstance2.A = z3;
                } else {
                    z5 = z6;
                }
                if (z5) {
                    DrawModifierNodeKt.a(defaultDebugIndicationInstance2);
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
