package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShortArraySerializer extends PrimitiveArraySerializer<Short, short[], ShortArrayBuilder> implements KSerializer<short[]> {
    public static final ShortArraySerializer c = new PrimitiveArraySerializer(ShortSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        return sArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        ShortArrayBuilder shortArrayBuilder = (ShortArrayBuilder) obj;
        shortArrayBuilder.getClass();
        short d = compositeDecoder.d(this.b, i);
        shortArrayBuilder.b(shortArrayBuilder.d() + 1);
        short[] sArr = shortArrayBuilder.a;
        int i2 = shortArrayBuilder.b;
        shortArrayBuilder.b = i2 + 1;
        sArr[i2] = d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.serialization.internal.ShortArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        short[] sArr = (short[]) obj;
        sArr.getClass();
        ?? obj2 = new Object();
        obj2.a = sArr;
        obj2.b = sArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new short[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        short[] sArr = (short[]) obj;
        compositeEncoder.getClass();
        sArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            short s = sArr[i2];
            AbstractEncoder abstractEncoder = (AbstractEncoder) compositeEncoder;
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.b;
            primitiveArrayDescriptor.getClass();
            abstractEncoder.p(primitiveArrayDescriptor, i2);
            abstractEncoder.g(s);
        }
    }
}
