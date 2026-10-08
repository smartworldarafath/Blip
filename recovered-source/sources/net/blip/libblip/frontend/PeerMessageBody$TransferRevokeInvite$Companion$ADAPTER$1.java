package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeerMessageBody$TransferRevokeInvite$Companion$ADAPTER$1 extends ProtoAdapter<PeerMessageBody$TransferRevokeInvite> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                } else {
                    protoReader.o(h);
                }
            } else {
                return new PeerMessageBody$TransferRevokeInvite(str, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        PeerMessageBody$TransferRevokeInvite peerMessageBody$TransferRevokeInvite = (PeerMessageBody$TransferRevokeInvite) obj;
        protoWriter.getClass();
        peerMessageBody$TransferRevokeInvite.getClass();
        String str = peerMessageBody$TransferRevokeInvite.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        protoWriter.a(peerMessageBody$TransferRevokeInvite.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        PeerMessageBody$TransferRevokeInvite peerMessageBody$TransferRevokeInvite = (PeerMessageBody$TransferRevokeInvite) obj;
        reverseProtoWriter.getClass();
        peerMessageBody$TransferRevokeInvite.getClass();
        reverseProtoWriter.d(peerMessageBody$TransferRevokeInvite.a());
        String str = peerMessageBody$TransferRevokeInvite.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        PeerMessageBody$TransferRevokeInvite peerMessageBody$TransferRevokeInvite = (PeerMessageBody$TransferRevokeInvite) obj;
        peerMessageBody$TransferRevokeInvite.getClass();
        int e = peerMessageBody$TransferRevokeInvite.a().e();
        String str = peerMessageBody$TransferRevokeInvite.m;
        if (!Intrinsics.a(str, "")) {
            return ProtoAdapter.p.i(1, str) + e;
        }
        return e;
    }
}
