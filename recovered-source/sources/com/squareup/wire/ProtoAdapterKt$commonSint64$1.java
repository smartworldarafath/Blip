package com.squareup.wire;

import com.squareup.wire.ProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonSint64$1 extends ProtoAdapter<Long> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        long p = ((ByteArrayProtoReader32) protoReader32).p();
        return Long.valueOf((-(p & 1)) ^ (p >>> 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long q = protoReader.q();
        return Long.valueOf((-(q & 1)) ^ (q >>> 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long longValue = ((Number) obj).longValue();
        protoWriter.getClass();
        protoWriter.c((longValue >> 63) ^ (longValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long longValue = ((Number) obj).longValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.h((longValue >> 63) ^ (longValue << 1));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        long longValue = ((Number) obj).longValue();
        return ProtoWriter.Companion.b((longValue >> 63) ^ (longValue << 1));
    }
}
