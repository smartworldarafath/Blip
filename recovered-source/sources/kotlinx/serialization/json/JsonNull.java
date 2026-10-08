package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonNull extends JsonPrimitive {
    public static final JsonNull INSTANCE = new Object();

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String b() {
        return "null";
    }

    public final KSerializer<JsonNull> serializer() {
        return JsonNullSerializer.a;
    }
}
