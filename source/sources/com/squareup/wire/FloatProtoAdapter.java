package com.squareup.wire;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatProtoAdapter extends ProtoAdapter<Float> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Float.valueOf(Float.intBitsToFloat(((ByteArrayProtoReader32) protoReader32).k()));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Float.valueOf(Float.intBitsToFloat(protoReader.l()));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        float floatValue = ((Number) obj).floatValue();
        protoWriter.getClass();
        protoWriter.a.I(Float.floatToIntBits(floatValue));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        float floatValue = ((Number) obj).floatValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.e(Float.floatToIntBits(floatValue));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ int h(Object obj) {
        ((Number) obj).floatValue();
        return 4;
    }
}
