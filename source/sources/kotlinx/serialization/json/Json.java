package kotlinx.serialization.json;

import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Json {
    public static final Default d = new Json(new JsonConfiguration(), SerializersModuleKt.a);
    public final JsonConfiguration a;
    public final SerializersModule b;
    public final DescriptorSchemaCache c = new DescriptorSchemaCache();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Default extends Json {
    }

    public Json(JsonConfiguration jsonConfiguration, SerializersModule serializersModule) {
        this.a = jsonConfiguration;
        this.b = serializersModule;
    }
}
