package kotlinx.serialization.json;

import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.LinkedHashMapClassDesc;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonObjectSerializer implements KSerializer<JsonObject> {
    public static final JsonObjectSerializer a = new Object();
    public static final SerialDescriptor b = JsonObjectDescriptor.b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class JsonObjectDescriptor implements SerialDescriptor {
        public static final JsonObjectDescriptor b = new JsonObjectDescriptor();
        public static final String c = "kotlinx.serialization.json.JsonObject";
        public final /* synthetic */ LinkedHashMapClassDesc a;

        public JsonObjectDescriptor() {
            StringSerializer stringSerializer = StringSerializer.a;
            JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
            this.a = new LinkedHashMapSerializer().a;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final String a() {
            return c;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean c() {
            this.a.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int d(String str) {
            str.getClass();
            return this.a.d(str);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final SerialKind e() {
            this.a.getClass();
            return StructureKind.MAP.a;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int f() {
            this.a.getClass();
            return 2;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final String g(int i) {
            this.a.getClass();
            return String.valueOf(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List getAnnotations() {
            this.a.getClass();
            return EmptyList.j;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean h() {
            this.a.getClass();
            return false;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final List i(int i) {
            this.a.i(i);
            return EmptyList.j;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final SerialDescriptor j(int i) {
            return this.a.j(i);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final boolean k(int i) {
            this.a.k(i);
            return false;
        }
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        JsonElementSerializersKt.b(decoder);
        StringSerializer stringSerializer = StringSerializer.a;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
        return new JsonObject((Map) new LinkedHashMapSerializer().a(decoder));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        JsonObject jsonObject = (JsonObject) obj;
        jsonObject.getClass();
        JsonElementSerializersKt.a(encoder);
        StringSerializer stringSerializer = StringSerializer.a;
        JsonElementSerializer jsonElementSerializer = JsonElementSerializer.a;
        new LinkedHashMapSerializer().b(encoder, jsonObject);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
