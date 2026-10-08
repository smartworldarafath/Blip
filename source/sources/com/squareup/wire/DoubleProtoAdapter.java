package com.squareup.wire;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DoubleProtoAdapter extends ProtoAdapter<Double> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Double.valueOf(Double.longBitsToDouble(((ByteArrayProtoReader32) protoReader32).l()));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Double.valueOf(Double.longBitsToDouble(protoReader.m()));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        double doubleValue = ((Number) obj).doubleValue();
        protoWriter.getClass();
        protoWriter.a.C(Double.doubleToLongBits(doubleValue));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        double doubleValue = ((Number) obj).doubleValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.f(Double.doubleToLongBits(doubleValue));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ int h(Object obj) {
        ((Number) obj).doubleValue();
        return 8;
    }
}
