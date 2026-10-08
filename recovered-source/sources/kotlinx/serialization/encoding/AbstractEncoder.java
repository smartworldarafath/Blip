package kotlinx.serialization.encoding;

import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractEncoder implements Encoder, CompositeEncoder {
    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void f(double d);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void g(short s);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void h(byte b);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void i(boolean z);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void j(float f);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void k(char c);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void l(int i);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract Encoder m(SerialDescriptor serialDescriptor);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void n(long j);

    public abstract void p(SerialDescriptor serialDescriptor, int i);

    public final Encoder q(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        p(primitiveArrayDescriptor, i);
        return m(primitiveArrayDescriptor.j(i));
    }

    public final void r(SerialDescriptor serialDescriptor, int i, SerializationStrategy serializationStrategy, Object obj) {
        serialDescriptor.getClass();
        serializationStrategy.getClass();
        p(serialDescriptor, i);
        d(serializationStrategy, obj);
    }
}
