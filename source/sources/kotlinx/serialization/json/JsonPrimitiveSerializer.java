package kotlinx.serialization.json;

import defpackage.q;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.JsonExceptionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonPrimitiveSerializer implements KSerializer<JsonPrimitive> {
    public static final JsonPrimitiveSerializer a = new Object();
    public static final SerialDescriptorImpl b = SerialDescriptorsKt.b("kotlinx.serialization.json.JsonPrimitive", PrimitiveKind.STRING.a, new SerialDescriptor[0]);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        String str;
        JsonDecoder b2 = JsonElementSerializersKt.b(decoder);
        JsonElement l = b2.l();
        if (!(l instanceof JsonPrimitive)) {
            String str2 = "Unexpected JSON element, expected JsonPrimitive, had " + Reflection.a(l.getClass());
            if (b2.t().a.f) {
                str = q.m(l, -1);
            } else {
                str = null;
            }
            throw new JsonException(JsonExceptionsKt.a(-1, str2, null, null, str));
        }
        return (JsonPrimitive) l;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
        jsonPrimitive.getClass();
        JsonElementSerializersKt.a(encoder);
        if (jsonPrimitive instanceof JsonNull) {
            encoder.d(JsonNullSerializer.a, JsonNull.INSTANCE);
        } else {
            encoder.d(JsonLiteralSerializer.a, (JsonLiteral) jsonPrimitive);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
