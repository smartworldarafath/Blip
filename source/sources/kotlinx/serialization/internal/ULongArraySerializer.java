package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlin.ULongArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ULongArraySerializer extends PrimitiveArraySerializer<ULong, ULongArray, ULongArrayBuilder> implements KSerializer<ULongArray> {
    public static final ULongArraySerializer c = new PrimitiveArraySerializer(ULongSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        return ((ULongArray) obj).j.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        ULongArrayBuilder uLongArrayBuilder = (ULongArrayBuilder) obj;
        uLongArrayBuilder.getClass();
        long q = compositeDecoder.v(this.b, i).q();
        uLongArrayBuilder.b(uLongArrayBuilder.d() + 1);
        long[] jArr = uLongArrayBuilder.a;
        int i2 = uLongArrayBuilder.b;
        uLongArrayBuilder.b = i2 + 1;
        jArr[i2] = q;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.serialization.internal.ULongArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        long[] jArr = ((ULongArray) obj).j;
        ?? obj2 = new Object();
        obj2.a = jArr;
        obj2.b = jArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new ULongArray(new long[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        long[] jArr = ((ULongArray) obj).j;
        compositeEncoder.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            ((AbstractEncoder) compositeEncoder).q(this.b, i2).n(jArr[i2]);
        }
    }
}
