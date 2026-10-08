package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JsonPrimitive extends JsonElement {
    public static final Companion Companion = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public final KSerializer<JsonPrimitive> serializer() {
            return JsonPrimitiveSerializer.a;
        }
    }

    public abstract String b();

    public String toString() {
        return b();
    }
}
