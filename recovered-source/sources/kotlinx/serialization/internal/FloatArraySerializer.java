package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatArraySerializer extends PrimitiveArraySerializer<Float, float[], FloatArrayBuilder> implements KSerializer<float[]> {
    public static final FloatArraySerializer c = new PrimitiveArraySerializer(FloatSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        return fArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        FloatArrayBuilder floatArrayBuilder = (FloatArrayBuilder) obj;
        floatArrayBuilder.getClass();
        float e = compositeDecoder.e(this.b, i);
        floatArrayBuilder.b(floatArrayBuilder.d() + 1);
        float[] fArr = floatArrayBuilder.a;
        int i2 = floatArrayBuilder.b;
        floatArrayBuilder.b = i2 + 1;
        fArr[i2] = e;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.serialization.internal.FloatArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        float[] fArr = (float[]) obj;
        fArr.getClass();
        ?? obj2 = new Object();
        obj2.a = fArr;
        obj2.b = fArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new float[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        float[] fArr = (float[]) obj;
        compositeEncoder.getClass();
        fArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            float f = fArr[i2];
            AbstractEncoder abstractEncoder = (AbstractEncoder) compositeEncoder;
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.b;
            primitiveArrayDescriptor.getClass();
            abstractEncoder.p(primitiveArrayDescriptor, i2);
            abstractEncoder.j(f);
        }
    }
}
