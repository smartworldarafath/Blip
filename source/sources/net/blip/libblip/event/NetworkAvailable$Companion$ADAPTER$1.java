package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkAvailable$Companion$ADAPTER$1 extends ProtoAdapter<NetworkAvailable> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        long j = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        ProtoAdapter.l.getClass();
                        j = protoReader.q();
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new NetworkAvailable(str, j, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        NetworkAvailable networkAvailable = (NetworkAvailable) obj;
        protoWriter.getClass();
        networkAvailable.getClass();
        String str = networkAvailable.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        long j = networkAvailable.n;
        if (j != 0) {
            ProtoAdapter.l.f(protoWriter, 2, Long.valueOf(j));
        }
        protoWriter.a(networkAvailable.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        NetworkAvailable networkAvailable = (NetworkAvailable) obj;
        reverseProtoWriter.getClass();
        networkAvailable.getClass();
        String str = networkAvailable.m;
        reverseProtoWriter.d(networkAvailable.a());
        long j = networkAvailable.n;
        if (j != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 2, Long.valueOf(j));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        NetworkAvailable networkAvailable = (NetworkAvailable) obj;
        networkAvailable.getClass();
        int e = networkAvailable.a().e();
        String str = networkAvailable.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        long j = networkAvailable.n;
        if (j != 0) {
            return ProtoAdapter.l.i(2, Long.valueOf(j)) + e;
        }
        return e;
    }
}
