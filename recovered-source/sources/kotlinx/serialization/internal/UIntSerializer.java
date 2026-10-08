package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UIntSerializer implements KSerializer<UInt> {
    public static final UIntSerializer a = new Object();
    public static final InlineClassDescriptor b = InlineClassDescriptorKt.a("kotlin.UInt", IntSerializer.a);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return new UInt(decoder.u(b).m());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        encoder.m(b).l(((UInt) obj).j);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
