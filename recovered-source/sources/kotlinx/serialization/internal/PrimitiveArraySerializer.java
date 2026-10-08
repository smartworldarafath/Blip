package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveArrayBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PrimitiveArraySerializer<Element, Array, Builder extends PrimitiveArrayBuilder<Array>> extends CollectionLikeSerializer<Element, Array, Builder> {
    public final PrimitiveArrayDescriptor b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimitiveArraySerializer(KSerializer kSerializer) {
        super(kSerializer);
        kSerializer.getClass();
        this.b = new PrimitiveArrayDescriptor(kSerializer.c());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return h(decoder);
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        int g = g(obj);
        PrimitiveArrayDescriptor primitiveArrayDescriptor = this.b;
        primitiveArrayDescriptor.getClass();
        CompositeEncoder c = encoder.c(primitiveArrayDescriptor);
        n(c, obj, g);
        c.a(primitiveArrayDescriptor);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return this.b;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object d() {
        return (PrimitiveArrayBuilder) j(m());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int e(Object obj) {
        PrimitiveArrayBuilder primitiveArrayBuilder = (PrimitiveArrayBuilder) obj;
        primitiveArrayBuilder.getClass();
        return primitiveArrayBuilder.d();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Iterator f(Object obj) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Object k(Object obj) {
        PrimitiveArrayBuilder primitiveArrayBuilder = (PrimitiveArrayBuilder) obj;
        primitiveArrayBuilder.getClass();
        return primitiveArrayBuilder.a();
    }

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public final void l(int i, Object obj, Object obj2) {
        ((PrimitiveArrayBuilder) obj).getClass();
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    public abstract Object m();

    public abstract void n(CompositeEncoder compositeEncoder, Object obj, int i);
}
