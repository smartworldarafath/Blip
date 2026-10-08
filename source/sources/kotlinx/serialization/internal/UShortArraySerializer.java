package kotlinx.serialization.internal;

import kotlin.UShort;
import kotlin.UShortArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UShortArraySerializer extends PrimitiveArraySerializer<UShort, UShortArray, UShortArrayBuilder> implements KSerializer<UShortArray> {
    public static final UShortArraySerializer c = new PrimitiveArraySerializer(UShortSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        return ((UShortArray) obj).j.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        UShortArrayBuilder uShortArrayBuilder = (UShortArrayBuilder) obj;
        uShortArrayBuilder.getClass();
        short z = compositeDecoder.v(this.b, i).z();
        uShortArrayBuilder.b(uShortArrayBuilder.d() + 1);
        short[] sArr = uShortArrayBuilder.a;
        int i2 = uShortArrayBuilder.b;
        uShortArrayBuilder.b = i2 + 1;
        sArr[i2] = z;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.serialization.internal.UShortArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        short[] sArr = ((UShortArray) obj).j;
        ?? obj2 = new Object();
        obj2.a = sArr;
        obj2.b = sArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new UShortArray(new short[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        short[] sArr = ((UShortArray) obj).j;
        compositeEncoder.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            ((AbstractEncoder) compositeEncoder).q(this.b, i2).g(sArr[i2]);
        }
    }
}
