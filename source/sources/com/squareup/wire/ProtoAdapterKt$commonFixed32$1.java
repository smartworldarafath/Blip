package com.squareup.wire;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonFixed32$1 extends ProtoAdapter<Integer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Integer.valueOf(((ByteArrayProtoReader32) protoReader32).k());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Integer.valueOf(protoReader.l());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        int intValue = ((Number) obj).intValue();
        protoWriter.getClass();
        protoWriter.a.I(intValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        int intValue = ((Number) obj).intValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.e(intValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ int h(Object obj) {
        ((Number) obj).intValue();
        return 4;
    }
}
