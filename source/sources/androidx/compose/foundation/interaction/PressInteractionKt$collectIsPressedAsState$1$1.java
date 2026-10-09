package androidx.compose.foundation.interaction;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.interaction.PressInteractionKt$collectIsPressedAsState$1$1", f = "PressInteraction.kt", l = {85}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class PressInteractionKt$collectIsPressedAsState$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ InteractionSource o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PressInteractionKt$collectIsPressedAsState$1$1(InteractionSource interactionSource, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.o = interactionSource;
        this.p = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PressInteractionKt$collectIsPressedAsState$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PressInteractionKt$collectIsPressedAsState$1$1(this.o, this.p, continuation);
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
        final ArrayList arrayList = new ArrayList();
        SharedFlowImpl sharedFlowImpl = ((MutableInteractionSourceImpl) this.o).a;
        final MutableState mutableState = this.p;
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.interaction.PressInteractionKt$collectIsPressedAsState$1$1.1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object r(Object obj2, Continuation continuation) {
                Interaction interaction = (Interaction) obj2;
                boolean z = interaction instanceof PressInteraction.Press;
                ArrayList arrayList2 = arrayList;
                if (z) {
                    arrayList2.add(interaction);
                } else if (interaction instanceof PressInteraction.Release) {
                    arrayList2.remove(((PressInteraction.Release) interaction).a);
                } else if (interaction instanceof PressInteraction.Cancel) {
                    arrayList2.remove(((PressInteraction.Cancel) interaction).a);
                }
                mutableState.setValue(Boolean.valueOf(!arrayList2.isEmpty()));
                return Unit.a;
            }
        };
        this.n = 1;
        sharedFlowImpl.getClass();
        SharedFlowImpl.l(sharedFlowImpl, flowCollector, this);
        return coroutineSingletons;
    }
}
