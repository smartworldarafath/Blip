package com.squareup.wire;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonStructList$1 extends ProtoAdapter<List<?>> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ArrayList arrayList = new ArrayList();
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        int d = byteArrayProtoReader32.d();
        while (true) {
            int h = byteArrayProtoReader32.h();
            if (h != -1) {
                if (h != 1) {
                    byteArrayProtoReader32.r();
                } else {
                    arrayList.add(ProtoAdapter.t.b(protoReader32));
                }
            } else {
                byteArrayProtoReader32.f(d);
                return arrayList;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    protoReader.s();
                } else {
                    arrayList.add(ProtoAdapter.t.c(protoReader));
                }
            } else {
                protoReader.f(d);
                return arrayList;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        List list = (List) obj;
        protoWriter.getClass();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ProtoAdapter.t.f(protoWriter, 1, it.next());
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        List list = (List) obj;
        reverseProtoWriter.getClass();
        if (list != null) {
            for (int size = list.size() - 1; -1 < size; size--) {
                ProtoAdapter.t.g(reverseProtoWriter, 1, list.get(size));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        List list = (List) obj;
        int i = 0;
        if (list == null) {
            return 0;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            i += ProtoAdapter.t.i(1, it.next());
        }
        return i;
    }
}
