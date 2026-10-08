package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkUnavailable$Companion$ADAPTER$1 extends ProtoAdapter<NetworkUnavailable> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        long j = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    ProtoAdapter.l.getClass();
                    j = protoReader.q();
                } else {
                    protoReader.o(h);
                }
            } else {
                return new NetworkUnavailable(j, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        NetworkUnavailable networkUnavailable = (NetworkUnavailable) obj;
        protoWriter.getClass();
        networkUnavailable.getClass();
        long j = networkUnavailable.m;
        if (j != 0) {
            ProtoAdapter.l.f(protoWriter, 1, Long.valueOf(j));
        }
        protoWriter.a(networkUnavailable.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        NetworkUnavailable networkUnavailable = (NetworkUnavailable) obj;
        reverseProtoWriter.getClass();
        networkUnavailable.getClass();
        reverseProtoWriter.d(networkUnavailable.a());
        long j = networkUnavailable.m;
        if (j != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 1, Long.valueOf(j));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        NetworkUnavailable networkUnavailable = (NetworkUnavailable) obj;
        networkUnavailable.getClass();
        int e = networkUnavailable.a().e();
        long j = networkUnavailable.m;
        if (j != 0) {
            return ProtoAdapter.l.i(1, Long.valueOf(j)) + e;
        }
        return e;
    }
}
