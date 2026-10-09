package com.squareup.wire;

import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DoubleArrayProtoAdapter extends ProtoAdapter<double[]> {
    public final DoubleProtoAdapter v;

    public DoubleArrayProtoAdapter(DoubleProtoAdapter doubleProtoAdapter) {
        super(FieldEncoding.m, Reflection.a(double[].class), null, doubleProtoAdapter.d, new double[0], 32, 0);
        this.v = doubleProtoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new double[]{Double.longBitsToDouble(((ByteArrayProtoReader32) protoReader32).l())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new double[]{Double.longBitsToDouble(protoReader.m())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        double[] dArr = (double[]) obj;
        protoWriter.getClass();
        dArr.getClass();
        for (double d : dArr) {
            this.v.d(protoWriter, Double.valueOf(d));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        double[] dArr = (double[]) obj;
        reverseProtoWriter.getClass();
        dArr.getClass();
        int length = dArr.length;
        while (true) {
            length--;
            if (-1 < length) {
                reverseProtoWriter.f(Double.doubleToLongBits(dArr[length]));
            } else {
                return;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        double[] dArr = (double[]) obj;
        protoWriter.getClass();
        if (dArr != null && dArr.length != 0) {
            super.f(protoWriter, i, dArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        double[] dArr = (double[]) obj;
        reverseProtoWriter.getClass();
        if (dArr != null && dArr.length != 0) {
            super.g(reverseProtoWriter, i, dArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        int i = 0;
        for (double d : dArr) {
            this.v.h(Double.valueOf(d));
            i += 8;
        }
        return i;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        double[] dArr = (double[]) obj;
        if (dArr != null && dArr.length != 0) {
            return super.i(i, dArr);
        }
        return 0;
    }
}
