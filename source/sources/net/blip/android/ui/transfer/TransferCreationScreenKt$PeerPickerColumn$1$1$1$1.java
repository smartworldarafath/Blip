package net.blip.android.ui.transfer;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.event.Search;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class TransferCreationScreenKt$PeerPickerColumn$1$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) this.k;
        peerPickerViewModel.a.b.b(new Search(peerPickerViewModel.b, (String) peerPickerViewModel.e.getValue()));
        return Unit.a;
    }
}
