package kotlinx.serialization.json;

import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.InlineClassDescriptorKt;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JsonElementKt {
    public static final InlineClassDescriptor a = InlineClassDescriptorKt.a("kotlinx.serialization.json.JsonUnquotedLiteral", StringSerializer.a);

    public static final JsonPrimitive a(JsonElement jsonElement) {
        JsonPrimitive jsonPrimitive;
        if (jsonElement instanceof JsonPrimitive) {
            jsonPrimitive = (JsonPrimitive) jsonElement;
        } else {
            jsonPrimitive = null;
        }
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        throw new IllegalArgumentException("Element " + Reflection.a(jsonElement.getClass()) + " is not a JsonPrimitive");
    }
}
