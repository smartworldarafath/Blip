package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferRemoveRequested$Companion$ADAPTER$1 extends ProtoAdapter<TransferRemoveRequested> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        boolean z = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new TransferRemoveRequested(str, z, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferRemoveRequested transferRemoveRequested = (TransferRemoveRequested) obj;
        protoWriter.getClass();
        transferRemoveRequested.getClass();
        String str = transferRemoveRequested.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        boolean z = transferRemoveRequested.n;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 2, Boolean.valueOf(z));
        }
        protoWriter.a(transferRemoveRequested.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferRemoveRequested transferRemoveRequested = (TransferRemoveRequested) obj;
        reverseProtoWriter.getClass();
        transferRemoveRequested.getClass();
        String str = transferRemoveRequested.m;
        reverseProtoWriter.d(transferRemoveRequested.a());
        boolean z = transferRemoveRequested.n;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 2, Boolean.valueOf(z));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferRemoveRequested transferRemoveRequested = (TransferRemoveRequested) obj;
        transferRemoveRequested.getClass();
        int e = transferRemoveRequested.a().e();
        String str = transferRemoveRequested.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        boolean z = transferRemoveRequested.n;
        if (z) {
            return q.c(z, ProtoAdapter.g, 2, e);
        }
        return e;
    }
}
