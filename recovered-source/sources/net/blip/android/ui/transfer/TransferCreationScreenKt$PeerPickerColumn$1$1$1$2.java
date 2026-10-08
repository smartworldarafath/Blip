package net.blip.android.ui.transfer;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerPickerViewModel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class TransferCreationScreenKt$PeerPickerColumn$1$1$1$2 extends FunctionReferenceImpl implements Function1<PeerId, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        PeerId peerId = (PeerId) obj;
        peerId.getClass();
        ((PeerPickerViewModel) this.k).b(peerId);
        return Unit.a;
    }
}
