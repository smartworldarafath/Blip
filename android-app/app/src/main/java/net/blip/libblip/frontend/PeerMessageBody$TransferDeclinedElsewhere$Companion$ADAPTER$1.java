package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeerMessageBody$TransferDeclinedElsewhere$Companion$ADAPTER$1 extends ProtoAdapter<PeerMessageBody$TransferDeclinedElsewhere> {
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
                return new PeerMessageBody$TransferDeclinedElsewhere(str, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        PeerMessageBody$TransferDeclinedElsewhere peerMessageBody$TransferDeclinedElsewhere = (PeerMessageBody$TransferDeclinedElsewhere) obj;
        protoWriter.getClass();
        peerMessageBody$TransferDeclinedElsewhere.getClass();
        String str = peerMessageBody$TransferDeclinedElsewhere.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        protoWriter.a(peerMessageBody$TransferDeclinedElsewhere.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        PeerMessageBody$TransferDeclinedElsewhere peerMessageBody$TransferDeclinedElsewhere = (PeerMessageBody$TransferDeclinedElsewhere) obj;
        reverseProtoWriter.getClass();
        peerMessageBody$TransferDeclinedElsewhere.getClass();
        reverseProtoWriter.d(peerMessageBody$TransferDeclinedElsewhere.a());
        String str = peerMessageBody$TransferDeclinedElsewhere.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        PeerMessageBody$TransferDeclinedElsewhere peerMessageBody$TransferDeclinedElsewhere = (PeerMessageBody$TransferDeclinedElsewhere) obj;
        peerMessageBody$TransferDeclinedElsewhere.getClass();
        int e = peerMessageBody$TransferDeclinedElsewhere.a().e();
        String str = peerMessageBody$TransferDeclinedElsewhere.m;
        if (!Intrinsics.a(str, "")) {
            return ProtoAdapter.p.i(1, str) + e;
        }
        return e;
    }
}
