package kotlinx.serialization.internal;

import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UuidSerializer implements KSerializer<Uuid> {
    public static final UuidSerializer a = new Object();
    public static final PrimitiveSerialDescriptor b = new PrimitiveSerialDescriptor("kotlin.uuid.Uuid", PrimitiveKind.STRING.a);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return Uuid.Companion.a(decoder.o());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        Uuid uuid = (Uuid) obj;
        uuid.getClass();
        encoder.o(uuid.toString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
