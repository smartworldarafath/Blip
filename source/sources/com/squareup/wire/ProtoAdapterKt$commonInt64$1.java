package com.squareup.wire;

import com.squareup.wire.ProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtoAdapterKt$commonInt64$1 extends ProtoAdapter<Long> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return Long.valueOf(((ByteArrayProtoReader32) protoReader32).p());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return Long.valueOf(protoReader.q());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long longValue = ((Number) obj).longValue();
        protoWriter.getClass();
        protoWriter.c(longValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long longValue = ((Number) obj).longValue();
        reverseProtoWriter.getClass();
        reverseProtoWriter.h(longValue);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        return ProtoWriter.Companion.b(((Number) obj).longValue());
    }
}
