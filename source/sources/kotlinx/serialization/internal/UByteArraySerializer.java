package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.UByteArray;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UByteArraySerializer extends PrimitiveArraySerializer<UByte, UByteArray, UByteArrayBuilder> implements KSerializer<UByteArray> {
    public static final UByteArraySerializer c = new PrimitiveArraySerializer(UByteSerializer.a);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int g(Object obj) {
        return ((UByteArray) obj).j.length;
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void i(CompositeDecoder compositeDecoder, int i, Object obj) {
        UByteArrayBuilder uByteArrayBuilder = (UByteArrayBuilder) obj;
        uByteArrayBuilder.getClass();
        byte y = compositeDecoder.v(this.b, i).y();
        uByteArrayBuilder.b(uByteArrayBuilder.d() + 1);
        byte[] bArr = uByteArrayBuilder.a;
        int i2 = uByteArrayBuilder.b;
        uByteArrayBuilder.b = i2 + 1;
        bArr[i2] = y;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.serialization.internal.UByteArrayBuilder, java.lang.Object] */
    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object j(Object obj) {
        byte[] bArr = ((UByteArray) obj).j;
        ?? obj2 = new Object();
        obj2.a = bArr;
        obj2.b = bArr.length;
        obj2.b(10);
        return obj2;
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final Object m() {
        return new UByteArray(new byte[0]);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public final void n(CompositeEncoder compositeEncoder, Object obj, int i) {
        byte[] bArr = ((UByteArray) obj).j;
        compositeEncoder.getClass();
        for (int i2 = 0; i2 < i; i2++) {
            ((AbstractEncoder) compositeEncoder).q(this.b, i2).h(bArr[i2]);
        }
    }
}
