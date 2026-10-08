package com.squareup.wire;

import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntArrayProtoAdapter extends ProtoAdapter<int[]> {
    public final ProtoAdapter v;

    public IntArrayProtoAdapter(ProtoAdapter protoAdapter) {
        super(FieldEncoding.m, Reflection.a(int[].class), null, protoAdapter.d, new int[0], 32, 0);
        this.v = protoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new int[]{((Number) this.v.b(protoReader32)).intValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new int[]{((Number) this.v.c(protoReader)).intValue()};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        int[] iArr = (int[]) obj;
        protoWriter.getClass();
        iArr.getClass();
        for (int i : iArr) {
            this.v.d(protoWriter, Integer.valueOf(i));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        int[] iArr = (int[]) obj;
        reverseProtoWriter.getClass();
        iArr.getClass();
        int length = iArr.length;
        while (true) {
            length--;
            if (-1 < length) {
                this.v.e(reverseProtoWriter, Integer.valueOf(iArr[length]));
            } else {
                return;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        int[] iArr = (int[]) obj;
        protoWriter.getClass();
        if (iArr != null && iArr.length != 0) {
            super.f(protoWriter, i, iArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        int[] iArr = (int[]) obj;
        reverseProtoWriter.getClass();
        if (iArr != null && iArr.length != 0) {
            super.g(reverseProtoWriter, i, iArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        int[] iArr = (int[]) obj;
        iArr.getClass();
        int i = 0;
        for (int i2 : iArr) {
            i += this.v.h(Integer.valueOf(i2));
        }
        return i;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        int[] iArr = (int[]) obj;
        if (iArr != null && iArr.length != 0) {
            return super.i(i, iArr);
        }
        return 0;
    }
}
