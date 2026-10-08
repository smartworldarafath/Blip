package kotlinx.serialization.internal;

import kotlin.ULong;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ULongSerializer implements KSerializer<ULong> {
    public static final ULongSerializer a = new Object();
    public static final InlineClassDescriptor b = InlineClassDescriptorKt.a("kotlin.ULong", LongSerializer.a);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return new ULong(decoder.u(b).q());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        encoder.m(b).n(((ULong) obj).j);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
