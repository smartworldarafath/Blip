package kotlinx.serialization.json;

import defpackage.a7;
import defpackage.k8;
import defpackage.u2;
import kotlin.collections.ArraysKt;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonElementSerializer implements KSerializer<JsonElement> {
    public static final JsonElementSerializer a = new Object();
    public static final SerialDescriptorImpl b;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.serialization.json.JsonElementSerializer, java.lang.Object] */
    static {
        SerialDescriptor[] serialDescriptorArr = new SerialDescriptor[0];
        a7 a7Var = new a7(23);
        SerialDescriptorImpl serialDescriptorImpl = null;
        if (!StringsKt.t("kotlinx.serialization.json.JsonElement")) {
            StructureKind.CLASS r2 = StructureKind.CLASS.a;
            PolymorphicKind.SEALED sealed = PolymorphicKind.SEALED.a;
            if (!sealed.equals(r2)) {
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder("kotlinx.serialization.json.JsonElement");
                a7Var.b(classSerialDescriptorBuilder);
                serialDescriptorImpl = new SerialDescriptorImpl("kotlinx.serialization.json.JsonElement", sealed, classSerialDescriptorBuilder.b.size(), ArraysKt.v(serialDescriptorArr), classSerialDescriptorBuilder);
            } else {
                u2.g("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            }
        } else {
            u2.g("Blank serial names are prohibited");
        }
        b = serialDescriptorImpl;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return JsonElementSerializersKt.b(decoder).l();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        JsonElement jsonElement = (JsonElement) obj;
        jsonElement.getClass();
        JsonElementSerializersKt.a(encoder);
        if (jsonElement instanceof JsonPrimitive) {
            encoder.d(JsonPrimitiveSerializer.a, jsonElement);
            return;
        }
        if (jsonElement instanceof JsonObject) {
            encoder.d(JsonObjectSerializer.a, jsonElement);
        } else if (jsonElement instanceof JsonArray) {
            encoder.d(JsonArraySerializer.a, jsonElement);
        } else {
            k8.e();
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
