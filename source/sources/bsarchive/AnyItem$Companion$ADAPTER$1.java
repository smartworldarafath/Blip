package bsarchive;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnyItem$Companion$ADAPTER$1 extends ProtoAdapter<AnyItem> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            if (h != 4) {
                                protoReader.o(h);
                            } else {
                                obj4 = FolderStub.o.c(protoReader);
                            }
                        } else {
                            obj3 = Link.n.c(protoReader);
                        }
                    } else {
                        obj2 = Folder.m.c(protoReader);
                    }
                } else {
                    obj = File.p.c(protoReader);
                }
            } else {
                return new AnyItem((File) obj, (Folder) obj2, (Link) obj3, (FolderStub) obj4, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        AnyItem anyItem = (AnyItem) obj;
        protoWriter.getClass();
        anyItem.getClass();
        File.p.f(protoWriter, 1, anyItem.m);
        Folder.m.f(protoWriter, 2, anyItem.n);
        Link.n.f(protoWriter, 3, anyItem.o);
        FolderStub.o.f(protoWriter, 4, anyItem.p);
        protoWriter.a(anyItem.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        AnyItem anyItem = (AnyItem) obj;
        reverseProtoWriter.getClass();
        anyItem.getClass();
        reverseProtoWriter.d(anyItem.a());
        FolderStub.o.g(reverseProtoWriter, 4, anyItem.p);
        Link.n.g(reverseProtoWriter, 3, anyItem.o);
        Folder.m.g(reverseProtoWriter, 2, anyItem.n);
        File.p.g(reverseProtoWriter, 1, anyItem.m);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        AnyItem anyItem = (AnyItem) obj;
        anyItem.getClass();
        return FolderStub.o.i(4, anyItem.p) + Link.n.i(3, anyItem.o) + Folder.m.i(2, anyItem.n) + File.p.i(1, anyItem.m) + anyItem.a().e();
    }
}
