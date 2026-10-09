package kotlinx.serialization.json;

import java.util.List;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListClassDesc;
import kotlinx.serialization.internal.ArrayListSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonArraySerializer implements KSerializer<JsonArray> {
    public static final JsonArraySerializer a = new Object();
    public static final SerialDescriptor b = JsonArrayDescriptor.b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class JsonArrayDescriptor implements SerialDescriptor {
        public static final JsonArrayDescriptor b = new JsonArrayDescriptor();
        public static final String c = "kotlinx.serialization.json.JsonArray";
        public final /* synthetic */ ArrayListClassDesc a = new ArrayListSerializer(JsonElementSerializer.a).b;

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
            return StructureKind.LIST.a;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public final int f() {
            this.a.getClass();
            return 1;
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
        return new JsonArray((List) new ArrayListSerializer(JsonElementSerializer.a).h(decoder));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        JsonArray jsonArray = (JsonArray) obj;
        jsonArray.getClass();
        JsonElementSerializersKt.a(encoder);
        new ArrayListSerializer(JsonElementSerializer.a).b(encoder, jsonArray);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
