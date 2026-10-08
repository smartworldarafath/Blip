package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongArraySerializer extends PrimitiveArraySerializer<Long, long[], LongArrayBuilder> implements KSerializer<long[]> {
    public static final LongArraySerializer c = new PrimitiveArraySerializer(LongSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        return jArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        LongArrayBuilder longArrayBuilder = (LongArrayBuilder) obj;
        longArrayBuilder.getClass();
        long p = compositeDecoder.p(this.b, i);
        longArrayBuilder.b(longArrayBuilder.d() + 1);
        long[] jArr = longArrayBuilder.a;
        int i2 = longArrayBuilder.b;
        longArrayBuilder.b = i2 + 1;
        jArr[i2] = p;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.serialization.internal.LongArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        long[] jArr = (long[]) obj;
        jArr.getClass();
        ?? obj2 = new Object();
        obj2.a = jArr;
        obj2.b = jArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new long[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        long[] jArr = (long[]) obj;
        compositeEncoder.getClass();
        jArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            long j = jArr[i2];
            AbstractEncoder abstractEncoder = (AbstractEncoder) compositeEncoder;
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.b;
            primitiveArrayDescriptor.getClass();
            abstractEncoder.p(primitiveArrayDescriptor, i2);
            abstractEncoder.n(j);
        }
    }
}
