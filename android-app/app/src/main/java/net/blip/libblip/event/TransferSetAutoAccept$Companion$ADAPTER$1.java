package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferSetAutoAccept$Companion$ADAPTER$1 extends ProtoAdapter<TransferSetAutoAccept> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                } else {
                    protoReader.o(h);
                }
            } else {
                return new TransferSetAutoAccept(z, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferSetAutoAccept transferSetAutoAccept = (TransferSetAutoAccept) obj;
        protoWriter.getClass();
        transferSetAutoAccept.getClass();
        boolean z = transferSetAutoAccept.m;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 1, Boolean.valueOf(z));
        }
        protoWriter.a(transferSetAutoAccept.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferSetAutoAccept transferSetAutoAccept = (TransferSetAutoAccept) obj;
        reverseProtoWriter.getClass();
        transferSetAutoAccept.getClass();
        reverseProtoWriter.d(transferSetAutoAccept.a());
        boolean z = transferSetAutoAccept.m;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 1, Boolean.valueOf(z));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferSetAutoAccept transferSetAutoAccept = (TransferSetAutoAccept) obj;
        transferSetAutoAccept.getClass();
        int e = transferSetAutoAccept.a().e();
        boolean z = transferSetAutoAccept.m;
        if (z) {
            return q.c(z, ProtoAdapter.g, 1, e);
        }
        return e;
    }
}
