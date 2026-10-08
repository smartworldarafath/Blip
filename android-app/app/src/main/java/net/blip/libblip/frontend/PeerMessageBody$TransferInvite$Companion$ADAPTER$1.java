package net.blip.libblip.frontend;

import bsarchive.Metadata;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeerMessageBody$TransferInvite$Companion$ADAPTER$1 extends ProtoAdapter<PeerMessageBody$TransferInvite> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        obj = Metadata.o.c(protoReader);
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new PeerMessageBody$TransferInvite(str, (Metadata) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite = (PeerMessageBody$TransferInvite) obj;
        protoWriter.getClass();
        peerMessageBody$TransferInvite.getClass();
        String str = peerMessageBody$TransferInvite.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        Metadata metadata = peerMessageBody$TransferInvite.n;
        if (metadata != null) {
            Metadata.o.f(protoWriter, 2, metadata);
        }
        protoWriter.a(peerMessageBody$TransferInvite.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite = (PeerMessageBody$TransferInvite) obj;
        reverseProtoWriter.getClass();
        peerMessageBody$TransferInvite.getClass();
        String str = peerMessageBody$TransferInvite.m;
        reverseProtoWriter.d(peerMessageBody$TransferInvite.a());
        Metadata metadata = peerMessageBody$TransferInvite.n;
        if (metadata != null) {
            Metadata.o.g(reverseProtoWriter, 2, metadata);
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite = (PeerMessageBody$TransferInvite) obj;
        peerMessageBody$TransferInvite.getClass();
        int e = peerMessageBody$TransferInvite.a().e();
        String str = peerMessageBody$TransferInvite.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        Metadata metadata = peerMessageBody$TransferInvite.n;
        if (metadata != null) {
            return Metadata.o.i(2, metadata) + e;
        }
        return e;
    }
}
