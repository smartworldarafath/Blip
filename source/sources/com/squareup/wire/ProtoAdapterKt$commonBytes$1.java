package com.squareup.wire;

import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonBytes$1 extends ProtoAdapter<ByteString> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return ((ByteArrayProtoReader32) protoReader32).j();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return protoReader.k();
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        ByteString byteString = (ByteString) obj;
        protoWriter.getClass();
        byteString.getClass();
        protoWriter.a.M0(byteString);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        ByteString byteString = (ByteString) obj;
        reverseProtoWriter.getClass();
        byteString.getClass();
        reverseProtoWriter.d(byteString);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        ByteString byteString = (ByteString) obj;
        byteString.getClass();
        return byteString.e();
    }
}
