package com.squareup.wire;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonBool$1 extends ProtoAdapter<Boolean> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        boolean z;
        protoReader32.getClass();
        if (((ByteArrayProtoReader32) protoReader32).o() == 0) {
            z = false;
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        boolean z;
        protoReader.getClass();
        if (protoReader.p() == 0) {
            z = false;
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        protoWriter.getClass();
        protoWriter.b(booleanValue ? 1 : 0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.g(booleanValue ? 1 : 0);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final /* bridge */ /* synthetic */ int h(Object obj) {
        ((Boolean) obj).getClass();
        return 1;
    }
}
