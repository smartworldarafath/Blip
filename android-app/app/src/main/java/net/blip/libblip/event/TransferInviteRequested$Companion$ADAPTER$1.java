package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferInviteRequested$Companion$ADAPTER$1 extends ProtoAdapter<TransferInviteRequested> {
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
                        obj = PeerId.o.c(protoReader);
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new TransferInviteRequested(str, (PeerId) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferInviteRequested transferInviteRequested = (TransferInviteRequested) obj;
        protoWriter.getClass();
        transferInviteRequested.getClass();
        String str = transferInviteRequested.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        PeerId.o.f(protoWriter, 2, transferInviteRequested.n);
        protoWriter.a(transferInviteRequested.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferInviteRequested transferInviteRequested = (TransferInviteRequested) obj;
        reverseProtoWriter.getClass();
        transferInviteRequested.getClass();
        reverseProtoWriter.d(transferInviteRequested.a());
        PeerId.o.g(reverseProtoWriter, 2, transferInviteRequested.n);
        String str = transferInviteRequested.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferInviteRequested transferInviteRequested = (TransferInviteRequested) obj;
        transferInviteRequested.getClass();
        int e = transferInviteRequested.a().e();
        String str = transferInviteRequested.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        return PeerId.o.i(2, transferInviteRequested.n) + e;
    }
}
