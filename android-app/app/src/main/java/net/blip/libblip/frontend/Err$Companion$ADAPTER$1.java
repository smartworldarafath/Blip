package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Err$Companion$ADAPTER$1 extends ProtoAdapter<Err> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        int i = 0;
        String str = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        ProtoAdapter.p.getClass();
                        str = protoReader.n();
                    }
                } else {
                    ProtoAdapter.h.getClass();
                    i = protoReader.p();
                }
            } else {
                return new Err(i, str, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Err err = (Err) obj;
        protoWriter.getClass();
        err.getClass();
        String str = err.n;
        int i = err.m;
        if (i != 0) {
            ProtoAdapter.h.f(protoWriter, 1, Integer.valueOf(i));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 2, str);
        }
        protoWriter.a(err.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Err err = (Err) obj;
        reverseProtoWriter.getClass();
        err.getClass();
        reverseProtoWriter.d(err.a());
        String str = err.n;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 2, str);
        }
        int i = err.m;
        if (i != 0) {
            ProtoAdapter.h.g(reverseProtoWriter, 1, Integer.valueOf(i));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Err err = (Err) obj;
        err.getClass();
        String str = err.n;
        int e = err.a().e();
        int i = err.m;
        if (i != 0) {
            e += ProtoAdapter.h.i(1, Integer.valueOf(i));
        }
        if (!Intrinsics.a(str, "")) {
            return ProtoAdapter.p.i(2, str) + e;
        }
        return e;
    }
}
