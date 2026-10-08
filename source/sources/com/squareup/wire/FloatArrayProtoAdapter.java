package com.squareup.wire;

import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatArrayProtoAdapter extends ProtoAdapter<float[]> {
    public final FloatProtoAdapter v;

    public FloatArrayProtoAdapter(FloatProtoAdapter floatProtoAdapter) {
        super(FieldEncoding.m, Reflection.a(float[].class), null, floatProtoAdapter.d, new float[0], 32, 0);
        this.v = floatProtoAdapter;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object b(ProtoReader32 protoReader32) {
        protoReader32.getClass();
        return new float[]{Float.intBitsToFloat(((ByteArrayProtoReader32) protoReader32).k())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        return new float[]{Float.intBitsToFloat(protoReader.l())};
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        float[] fArr = (float[]) obj;
        protoWriter.getClass();
        fArr.getClass();
        for (float f : fArr) {
            this.v.d(protoWriter, Float.valueOf(f));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        float[] fArr = (float[]) obj;
        reverseProtoWriter.getClass();
        fArr.getClass();
        int length = fArr.length;
        while (true) {
            length--;
            if (-1 < length) {
                reverseProtoWriter.e(Float.floatToIntBits(fArr[length]));
            } else {
                return;
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void f(ProtoWriter protoWriter, int i, Object obj) {
        float[] fArr = (float[]) obj;
        protoWriter.getClass();
        if (fArr != null && fArr.length != 0) {
            super.f(protoWriter, i, fArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void g(ReverseProtoWriter reverseProtoWriter, int i, Object obj) {
        float[] fArr = (float[]) obj;
        reverseProtoWriter.getClass();
        if (fArr != null && fArr.length != 0) {
            super.g(reverseProtoWriter, i, fArr);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        int i = 0;
        for (float f : fArr) {
            this.v.getClass();
            i += 4;
        }
        return i;
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int i(int i, Object obj) {
        float[] fArr = (float[]) obj;
        if (fArr != null && fArr.length != 0) {
            return super.i(i, fArr);
        }
        return 0;
    }
}
