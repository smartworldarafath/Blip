package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AbandonSearch$Companion$ADAPTER$1 extends ProtoAdapter<AbandonSearch> {
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
                return new AbandonSearch(str, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        AbandonSearch abandonSearch = (AbandonSearch) obj;
        protoWriter.getClass();
        abandonSearch.getClass();
        String str = abandonSearch.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        protoWriter.a(abandonSearch.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        AbandonSearch abandonSearch = (AbandonSearch) obj;
        reverseProtoWriter.getClass();
        abandonSearch.getClass();
        reverseProtoWriter.d(abandonSearch.a());
        String str = abandonSearch.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        AbandonSearch abandonSearch = (AbandonSearch) obj;
        abandonSearch.getClass();
        int e = abandonSearch.a().e();
        String str = abandonSearch.m;
        if (!Intrinsics.a(str, "")) {
            return ProtoAdapter.p.i(1, str) + e;
        }
        return e;
    }
}
