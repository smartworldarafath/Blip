package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId$Companion$ADAPTER$1;
import net.blip.libblip.frontend.Search;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Search$Companion$ADAPTER$1 extends ProtoAdapter<Search> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = Search.Status.m;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long d = protoReader.d();
        String str = "";
        while (true) {
            String str2 = str;
            while (true) {
                int h = protoReader.h();
                if (h != -1) {
                    if (h != 1) {
                        if (h != 2) {
                            if (h != 3) {
                                if (h != 4) {
                                    protoReader.o(h);
                                } else {
                                    arrayList2.add(PeerId.o.c(protoReader));
                                }
                            } else {
                                arrayList.add(PeerId.o.c(protoReader));
                            }
                        } else {
                            try {
                                obj = Search.Status.l.c(protoReader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                            }
                        }
                    }
                } else {
                    return new Search(str2, (Search.Status) obj, arrayList, arrayList2, protoReader.f(d));
                }
            }
            ProtoAdapter.p.getClass();
            str = protoReader.n();
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Search search = (Search) obj;
        protoWriter.getClass();
        search.getClass();
        String str = search.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        Search.Status status = search.n;
        if (status != Search.Status.m) {
            Search.Status.l.f(protoWriter, 2, status);
        }
        PeerId$Companion$ADAPTER$1 peerId$Companion$ADAPTER$1 = PeerId.o;
        peerId$Companion$ADAPTER$1.a().f(protoWriter, 3, search.o);
        peerId$Companion$ADAPTER$1.a().f(protoWriter, 4, search.p);
        protoWriter.a(search.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Search search = (Search) obj;
        reverseProtoWriter.getClass();
        search.getClass();
        String str = search.m;
        reverseProtoWriter.d(search.a());
        PeerId$Companion$ADAPTER$1 peerId$Companion$ADAPTER$1 = PeerId.o;
        peerId$Companion$ADAPTER$1.a().g(reverseProtoWriter, 4, search.p);
        peerId$Companion$ADAPTER$1.a().g(reverseProtoWriter, 3, search.o);
        Search.Status status = search.n;
        if (status != Search.Status.m) {
            Search.Status.l.g(reverseProtoWriter, 2, status);
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Search search = (Search) obj;
        search.getClass();
        int e = search.a().e();
        String str = search.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        Search.Status status = search.n;
        if (status != Search.Status.m) {
            e += Search.Status.l.i(2, status);
        }
        PeerId$Companion$ADAPTER$1 peerId$Companion$ADAPTER$1 = PeerId.o;
        return peerId$Companion$ADAPTER$1.a().i(4, search.p) + peerId$Companion$ADAPTER$1.a().i(3, search.o) + e;
    }
}
