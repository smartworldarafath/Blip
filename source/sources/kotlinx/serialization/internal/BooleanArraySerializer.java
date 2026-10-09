package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BooleanArraySerializer extends PrimitiveArraySerializer<Boolean, boolean[], BooleanArrayBuilder> implements KSerializer<boolean[]> {
    public static final BooleanArraySerializer c = new PrimitiveArraySerializer(BooleanSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        return zArr.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        BooleanArrayBuilder booleanArrayBuilder = (BooleanArrayBuilder) obj;
        booleanArrayBuilder.getClass();
        boolean j = compositeDecoder.j(this.b, i);
        booleanArrayBuilder.b(booleanArrayBuilder.d() + 1);
        boolean[] zArr = booleanArrayBuilder.a;
        int i2 = booleanArrayBuilder.b;
        booleanArrayBuilder.b = i2 + 1;
        zArr[i2] = j;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlinx.serialization.internal.BooleanArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        boolean[] zArr = (boolean[]) obj;
        zArr.getClass();
        ?? obj2 = new Object();
        obj2.a = zArr;
        obj2.b = zArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new boolean[0];
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        boolean[] zArr = (boolean[]) obj;
        compositeEncoder.getClass();
        zArr.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            boolean z = zArr[i2];
            AbstractEncoder abstractEncoder = (AbstractEncoder) compositeEncoder;
            PrimitiveArrayDescriptor primitiveArrayDescriptor = this.b;
            primitiveArrayDescriptor.getClass();
            abstractEncoder.p(primitiveArrayDescriptor, i2);
            abstractEncoder.i(z);
        }
    }
}
