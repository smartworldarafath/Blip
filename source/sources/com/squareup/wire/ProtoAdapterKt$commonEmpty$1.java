package com.squareup.wire;

import kotlin.Unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonEmpty$1 extends ProtoAdapter<Unit> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        int d = byteArrayProtoReader32.d();
        while (true) {
            int h = byteArrayProtoReader32.h();
            if (h != -1) {
                byteArrayProtoReader32.n(h);
            } else {
                byteArrayProtoReader32.f(d);
                return Unit.a;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                protoReader.f(d);
                return Unit.a;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        protoWriter.getClass();
        ((Unit) obj).getClass();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        reverseProtoWriter.getClass();
        ((Unit) obj).getClass();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ((Unit) obj).getClass();
        return 0;
    }
}
