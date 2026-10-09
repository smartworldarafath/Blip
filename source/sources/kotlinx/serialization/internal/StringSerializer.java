package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StringSerializer implements KSerializer<String> {
    public static final StringSerializer a = new Object();
    public static final PrimitiveSerialDescriptor b = new PrimitiveSerialDescriptor("kotlin.String", PrimitiveKind.STRING.a);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return decoder.o();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        String str = (String) obj;
        str.getClass();
        encoder.o(str);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
