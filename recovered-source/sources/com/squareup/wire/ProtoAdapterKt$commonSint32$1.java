package com.squareup.wire;

import com.squareup.wire.ProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonSint32$1 extends ProtoAdapter<Integer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        int o = ((ByteArrayProtoReader32) protoReader32).o();
        return Integer.valueOf((-(o & 1)) ^ (o >>> 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        int p = protoReader.p();
        return Integer.valueOf((-(p & 1)) ^ (p >>> 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        int intValue = ((Number) obj).intValue();
        protoWriter.getClass();
        protoWriter.b((intValue >> 31) ^ (intValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        int intValue = ((Number) obj).intValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.g((intValue >> 31) ^ (intValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int intValue = ((Number) obj).intValue();
        return ProtoWriter.Companion.a((intValue >> 31) ^ (intValue << 1));
    }
}
