package net.blip.libblip.frontend;

import bsarchive.Metadata;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferNotificationResponse$Companion$ADAPTER$1 extends ProtoAdapter<TransferNotificationResponse> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        Object obj = null;
        Object obj2 = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            protoReader.o(h);
                        } else {
                            obj2 = Metadata.o.c(protoReader);
                        }
                    } else {
                        obj = PeerId.o.c(protoReader);
                    }
                } else {
                    z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                }
            } else {
                return new TransferNotificationResponse(z, (PeerId) obj, (Metadata) obj2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferNotificationResponse transferNotificationResponse = (TransferNotificationResponse) obj;
        protoWriter.getClass();
        transferNotificationResponse.getClass();
        boolean z = transferNotificationResponse.m;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 1, Boolean.valueOf(z));
        }
        PeerId peerId = transferNotificationResponse.n;
        if (peerId != null) {
            PeerId.o.f(protoWriter, 2, peerId);
        }
        Metadata metadata = transferNotificationResponse.o;
        if (metadata != null) {
            Metadata.o.f(protoWriter, 3, metadata);
        }
        protoWriter.a(transferNotificationResponse.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferNotificationResponse transferNotificationResponse = (TransferNotificationResponse) obj;
        reverseProtoWriter.getClass();
        transferNotificationResponse.getClass();
        reverseProtoWriter.d(transferNotificationResponse.a());
        Metadata metadata = transferNotificationResponse.o;
        if (metadata != null) {
            Metadata.o.g(reverseProtoWriter, 3, metadata);
        }
        PeerId peerId = transferNotificationResponse.n;
        if (peerId != null) {
            PeerId.o.g(reverseProtoWriter, 2, peerId);
        }
        boolean z = transferNotificationResponse.m;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 1, Boolean.valueOf(z));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferNotificationResponse transferNotificationResponse = (TransferNotificationResponse) obj;
        transferNotificationResponse.getClass();
        int e = transferNotificationResponse.a().e();
        boolean z = transferNotificationResponse.m;
        if (z) {
            e = q.c(z, ProtoAdapter.g, 1, e);
        }
        PeerId peerId = transferNotificationResponse.n;
        if (peerId != null) {
            e += PeerId.o.i(2, peerId);
        }
        Metadata metadata = transferNotificationResponse.o;
        if (metadata != null) {
            return Metadata.o.i(3, metadata) + e;
        }
        return e;
    }
}
