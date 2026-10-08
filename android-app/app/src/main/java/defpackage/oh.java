package defpackage;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.PeerId;
import net.blip.libblip.TransferChoosePeerViewModel;
import net.blip.libblip.event.TransferInviteRequested;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class oh implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ TransferChoosePeerViewModel k;

    public /* synthetic */ oh(TransferChoosePeerViewModel transferChoosePeerViewModel, int i) {
        this.j = i;
        this.k = transferChoosePeerViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        TransferChoosePeerViewModel transferChoosePeerViewModel = this.k;
        switch (i) {
            case 0:
                State state = (State) obj;
                state.getClass();
                return (Transfer) state.B.get(transferChoosePeerViewModel.b);
            default:
                PeerId peerId = (PeerId) obj;
                peerId.getClass();
                transferChoosePeerViewModel.getClass();
                transferChoosePeerViewModel.a.b.b(new TransferInviteRequested(transferChoosePeerViewModel.b, peerId));
                return Unit.a;
        }
    }
}
