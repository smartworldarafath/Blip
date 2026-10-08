package com.squareup.wire;

import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongArrayProtoAdapter extends ProtoAdapter<long[]> {
    public final ProtoAdapter v;

    public LongArrayProtoAdapter(ProtoAdapter protoAdapter) {
        super(FieldEncoding.m, Reflection.a(long[].class), null, protoAdapter.d, new long[0], 32, 0);
        this.v = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new long[]{((Number) this.v.b(protoReader32)).longValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new long[]{((Number) this.v.c(protoReader)).longValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        long[] jArr = (long[]) obj;
        protoWriter.getClass();
        jArr.getClass();
        for (long j : jArr) {
            this.v.d(protoWriter, Long.valueOf(j));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        long[] jArr = (long[]) obj;
        reverseProtoWriter.getClass();
        jArr.getClass();
        int length = jArr.length;
        while (true) {
            length--;
            if (-1 < length) {
                this.v.e(reverseProtoWriter, Long.valueOf(jArr[length]));
            } else {
                return;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        long[] jArr = (long[]) obj;
        protoWriter.getClass();
        if (jArr != null && jArr.length != 0) {
            super.f(protoWriter, i, jArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        long[] jArr = (long[]) obj;
        reverseProtoWriter.getClass();
        if (jArr != null && jArr.length != 0) {
            super.g(reverseProtoWriter, i, jArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        int i = 0;
        for (long j : jArr) {
            i += this.v.h(Long.valueOf(j));
        }
        return i;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        long[] jArr = (long[]) obj;
        if (jArr != null && jArr.length != 0) {
            return super.i(i, jArr);
        }
        return 0;
    }
}
