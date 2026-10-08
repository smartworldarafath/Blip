package androidx.compose.foundation.interaction;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableInteractionSourceImpl implements MutableInteractionSource {
    public final SharedFlowImpl a = SharedFlowKt.a(16, 1, BufferOverflow.k);

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public final Object a(Interaction interaction, Continuation continuation) {
        Object r = this.a.r(interaction, continuation);
        if (r == CoroutineSingletons.j) {
            return r;
        }
        return Unit.a;
    }

    @Override // androidx.compose.foundation.interaction.MutableInteractionSource
    public final boolean b(Interaction interaction) {
        return this.a.h(interaction);
    }

    @Override // androidx.compose.foundation.interaction.InteractionSource
    public final SharedFlowImpl c() {
        return this.a;
    }
}
