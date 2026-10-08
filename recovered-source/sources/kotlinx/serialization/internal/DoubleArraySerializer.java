package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DoubleArraySerializer extends PrimitiveArraySerializer<Double, double[], DoubleArrayBuilder> implements KSerializer<double[]> {
    public static final DoubleArraySerializer c = new PrimitiveArraySerializer(DoubleSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        return dArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        DoubleArrayBuilder doubleArrayBuilder = (DoubleArrayBuilder) obj;
        doubleArrayBuilder.getClass();
        double w = compositeDecoder.w(this.b, i);
        doubleArrayBuilder.b(doubleArrayBuilder.d() + 1);
        double[] dArr = doubleArrayBuilder.a;
        int i2 = doubleArrayBuilder.b;
        doubleArrayBuilder.b = i2 + 1;
        dArr[i2] = w;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.serialization.internal.DoubleArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        double[] dArr = (double[]) obj;
        dArr.getClass();
        ?? obj2 = new Object();
        obj2.a = dArr;
        obj2.b = dArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new double[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        double[] dArr = (double[]) obj;
        compositeEncoder.getClass();
        dArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            double d = dArr[i2];
            AbstractEncoder abstractEncoder = (AbstractEncoder) compositeEncoder;
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.b;
            primitiveArrayDescriptor.getClass();
            abstractEncoder.p(primitiveArrayDescriptor, i2);
            abstractEncoder.f(d);
        }
    }
}
