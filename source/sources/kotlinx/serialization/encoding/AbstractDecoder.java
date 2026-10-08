package kotlinx.serialization.encoding;

import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractDecoder implements Decoder, CompositeDecoder {
    @Override // kotlinx.serialization.encoding.Decoder
    public float A() {
        C();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public double B() {
        C();
        throw null;
    }

    public final void C() {
        throw new IllegalArgumentException(Reflection.a(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void a(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public CompositeDecoder c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short d(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return z();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float e(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return A();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean f() {
        C();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char g(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return h();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public char h() {
        C();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte i(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return y();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean j(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return f();
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int k(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return m();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract int m();

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public Object n(SerialDescriptor serialDescriptor, int i, DeserializationStrategy deserializationStrategy, Object obj) {
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        return x(deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public String o() {
        C();
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long p(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return q();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract long q();

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean r() {
        return true;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public Decoder u(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        return this;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final Decoder v(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return u(primitiveArrayDescriptor.j(i));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double w(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i) {
        primitiveArrayDescriptor.getClass();
        return B();
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract byte y();

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract short z();
}
