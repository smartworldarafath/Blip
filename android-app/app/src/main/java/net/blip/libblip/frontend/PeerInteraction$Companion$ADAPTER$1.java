package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import java.time.Instant;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeerInteraction$Companion$ADAPTER$1 extends ProtoAdapter<PeerInteraction> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        boolean z = false;
        Object obj2 = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            protoReader.o(h);
                        } else {
                            z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                        }
                    } else {
                        obj2 = PeerId.o.c(protoReader);
                    }
                } else {
                    obj = ProtoAdapter.u.c(protoReader);
                }
            } else {
                return new PeerInteraction((Instant) obj, (PeerId) obj2, z, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        PeerInteraction peerInteraction = (PeerInteraction) obj;
        protoWriter.getClass();
        peerInteraction.getClass();
        Instant instant = peerInteraction.m;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 1, instant);
        }
        PeerId peerId = peerInteraction.n;
        if (peerId != null) {
            PeerId.o.f(protoWriter, 2, peerId);
        }
        boolean z = peerInteraction.o;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 3, Boolean.valueOf(z));
        }
        protoWriter.a(peerInteraction.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        PeerInteraction peerInteraction = (PeerInteraction) obj;
        reverseProtoWriter.getClass();
        peerInteraction.getClass();
        reverseProtoWriter.d(peerInteraction.a());
        boolean z = peerInteraction.o;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 3, Boolean.valueOf(z));
        }
        PeerId peerId = peerInteraction.n;
        if (peerId != null) {
            PeerId.o.g(reverseProtoWriter, 2, peerId);
        }
        Instant instant = peerInteraction.m;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 1, instant);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        PeerInteraction peerInteraction = (PeerInteraction) obj;
        peerInteraction.getClass();
        int e = peerInteraction.a().e();
        Instant instant = peerInteraction.m;
        if (instant != null) {
            e += ProtoAdapter.u.i(1, instant);
        }
        PeerId peerId = peerInteraction.n;
        if (peerId != null) {
            e += PeerId.o.i(2, peerId);
        }
        boolean z = peerInteraction.o;
        if (z) {
            return q.c(z, ProtoAdapter.g, 3, e);
        }
        return e;
    }
}
