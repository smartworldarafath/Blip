package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.UIntArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UIntArraySerializer extends PrimitiveArraySerializer<UInt, UIntArray, UIntArrayBuilder> implements KSerializer<UIntArray> {
    public static final UIntArraySerializer c = new PrimitiveArraySerializer(UIntSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        return ((UIntArray) obj).j.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        UIntArrayBuilder uIntArrayBuilder = (UIntArrayBuilder) obj;
        uIntArrayBuilder.getClass();
        int m = compositeDecoder.v(this.b, i).m();
        uIntArrayBuilder.b(uIntArrayBuilder.d() + 1);
        int[] iArr = uIntArrayBuilder.a;
        int i2 = uIntArrayBuilder.b;
        uIntArrayBuilder.b = i2 + 1;
        iArr[i2] = m;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.serialization.internal.UIntArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        int[] iArr = ((UIntArray) obj).j;
        ?? obj2 = new Object();
        obj2.a = iArr;
        obj2.b = iArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new UIntArray(new int[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        int[] iArr = ((UIntArray) obj).j;
        compositeEncoder.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            ((AbstractEncoder) compositeEncoder).q(this.b, i2).l(iArr[i2]);
        }
    }
}
