package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.JsonExceptionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonNullSerializer implements KSerializer<JsonNull> {
    public static final JsonNullSerializer a = new Object();
    public static final SerialDescriptorImpl b = SerialDescriptorsKt.b("kotlinx.serialization.json.JsonNull", SerialKind.ENUM.a, new SerialDescriptor[0]);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        JsonElementSerializersKt.b(decoder);
        if (!decoder.r()) {
            return JsonNull.INSTANCE;
        }
        throw new JsonException(JsonExceptionsKt.a(-1, "Expected 'null' literal", null, null, null));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        ((JsonNull) obj).getClass();
        JsonElementSerializersKt.a(encoder);
        encoder.e();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
