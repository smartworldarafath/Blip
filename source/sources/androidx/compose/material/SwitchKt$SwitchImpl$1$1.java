package androidx.compose.material;

import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.u2;
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

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SwitchKt$SwitchImpl$1$1", f = "Switch.kt", l = {224}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SwitchKt$SwitchImpl$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ InteractionSource o;
    public final /* synthetic */ SnapshotStateList p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwitchKt$SwitchImpl$1$1(InteractionSource interactionSource, SnapshotStateList snapshotStateList, Continuation continuation) {
        super(2, continuation);
        this.o = interactionSource;
        this.p = snapshotStateList;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SwitchKt$SwitchImpl$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SwitchKt$SwitchImpl$1$1(this.o, this.p, continuation);
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
        SharedFlowImpl c = this.o.c();
        final SnapshotStateList snapshotStateList = this.p;
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material.SwitchKt$SwitchImpl$1$1.1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object r(Object obj2, Continuation continuation) {
                Interaction interaction = (Interaction) obj2;
                boolean z = interaction instanceof PressInteraction.Press;
                SnapshotStateList snapshotStateList2 = SnapshotStateList.this;
                if (z) {
                    snapshotStateList2.add(interaction);
                } else if (interaction instanceof PressInteraction.Release) {
                    snapshotStateList2.remove(((PressInteraction.Release) interaction).a);
                } else if (interaction instanceof PressInteraction.Cancel) {
                    snapshotStateList2.remove(((PressInteraction.Cancel) interaction).a);
                } else if (interaction instanceof DragInteraction$Start) {
                    snapshotStateList2.add(interaction);
                } else if (interaction instanceof DragInteraction$Stop) {
                    snapshotStateList2.remove(((DragInteraction$Stop) interaction).a);
                } else if (interaction instanceof DragInteraction$Cancel) {
                    snapshotStateList2.remove(((DragInteraction$Cancel) interaction).a);
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
