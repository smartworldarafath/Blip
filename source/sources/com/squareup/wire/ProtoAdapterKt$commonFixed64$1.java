package com.squareup.wire;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonFixed64$1 extends ProtoAdapter<Long> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Long.valueOf(((ByteArrayProtoReader32) protoReader32).l());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Long.valueOf(protoReader.m());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long longValue = ((Number) obj).longValue();
        protoWriter.getClass();
        protoWriter.a.C(longValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long longValue = ((Number) obj).longValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.f(longValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ int h(Object obj) {
        ((Number) obj).longValue();
        return 8;
    }
}
