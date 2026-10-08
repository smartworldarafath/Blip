package com.squareup.wire;

import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnyMessage$Companion$ADAPTER$1 extends ProtoAdapter<AnyMessage> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        ByteString byteString = ByteString.m;
        ByteArrayProtoReader32 byteArrayProtoReader32 = (ByteArrayProtoReader32) protoReader32;
        int d = byteArrayProtoReader32.d();
        String str = "";
        while (true) {
            int h = byteArrayProtoReader32.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        byteArrayProtoReader32.n(h);
                    } else {
                        ProtoAdapter.o.getClass();
                        byteString = byteArrayProtoReader32.j();
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = byteArrayProtoReader32.m();
                }
            } else {
                byteArrayProtoReader32.f(d);
                return new AnyMessage(str, byteString);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ByteString byteString = ByteString.m;
        long d = protoReader.d();
        String str = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        ProtoAdapter.o.getClass();
                        byteString = protoReader.k();
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                protoReader.f(d);
                return new AnyMessage(str, byteString);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        AnyMessage anyMessage = (AnyMessage) obj;
        protoWriter.getClass();
        anyMessage.getClass();
        ProtoAdapter.p.f(protoWriter, 1, anyMessage.m);
        ProtoAdapter.o.f(protoWriter, 2, anyMessage.n);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        AnyMessage anyMessage = (AnyMessage) obj;
        reverseProtoWriter.getClass();
        anyMessage.getClass();
        ProtoAdapter.o.g(reverseProtoWriter, 2, anyMessage.n);
        ProtoAdapter.p.g(reverseProtoWriter, 1, anyMessage.m);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        AnyMessage anyMessage = (AnyMessage) obj;
        anyMessage.getClass();
        return ProtoAdapter.o.i(2, anyMessage.n) + ProtoAdapter.p.i(1, anyMessage.m);
    }
}
