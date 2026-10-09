package com.squareup.wire;

import com.squareup.wire.ProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonInt32$1 extends ProtoAdapter<Integer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Integer.valueOf(((ByteArrayProtoReader32) protoReader32).o());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Integer.valueOf(protoReader.p());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        int intValue = ((Number) obj).intValue();
        protoWriter.getClass();
        if (intValue >= 0) {
            protoWriter.b(intValue);
        } else {
            protoWriter.c(intValue);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        int intValue = ((Number) obj).intValue();
        reverseProtoWriter.getClass();
        if (intValue >= 0) {
            reverseProtoWriter.g(intValue);
        } else {
            reverseProtoWriter.h(intValue);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int intValue = ((Number) obj).intValue();
        if (intValue >= 0) {
            return ProtoWriter.Companion.a(intValue);
        }
        return 10;
    }
}
