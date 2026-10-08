package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.PeerId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferCreateRequested$Companion$ADAPTER$1 extends ProtoAdapter<TransferCreateRequested> {
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
                return new TransferCreateRequested(str, (PeerId) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferCreateRequested transferCreateRequested = (TransferCreateRequested) obj;
        protoWriter.getClass();
        transferCreateRequested.getClass();
        String str = transferCreateRequested.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        PeerId.o.f(protoWriter, 2, transferCreateRequested.n);
        protoWriter.a(transferCreateRequested.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferCreateRequested transferCreateRequested = (TransferCreateRequested) obj;
        reverseProtoWriter.getClass();
        transferCreateRequested.getClass();
        reverseProtoWriter.d(transferCreateRequested.a());
        PeerId.o.g(reverseProtoWriter, 2, transferCreateRequested.n);
        String str = transferCreateRequested.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferCreateRequested transferCreateRequested = (TransferCreateRequested) obj;
        transferCreateRequested.getClass();
        int e = transferCreateRequested.a().e();
        String str = transferCreateRequested.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        return PeerId.o.i(2, transferCreateRequested.n) + e;
    }
}
