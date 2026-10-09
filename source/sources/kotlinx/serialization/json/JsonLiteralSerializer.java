package kotlinx.serialization.json;

import defpackage.q;
import kotlin.ULong;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.json.internal.JsonExceptionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class JsonLiteralSerializer implements KSerializer<JsonLiteral> {
    public static final JsonLiteralSerializer a = new Object();
    public static final PrimitiveSerialDescriptor b = SerialDescriptorsKt.a("kotlinx.serialization.json.JsonLiteral");

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        String str;
        JsonDecoder b2 = JsonElementSerializersKt.b(decoder);
        JsonElement l = b2.l();
        if (!(l instanceof JsonLiteral)) {
            String str2 = "Unexpected JSON element, expected JsonLiteral, had " + Reflection.a(l.getClass());
            if (b2.t().a.f) {
                str = q.m(l, -1);
            } else {
                str = null;
            }
            throw new JsonException(JsonExceptionsKt.a(-1, str2, null, null, str));
        }
        return (JsonLiteral) l;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        Boolean bool;
        JsonLiteral jsonLiteral = (JsonLiteral) obj;
        jsonLiteral.getClass();
        String str = jsonLiteral.k;
        JsonElementSerializersKt.a(encoder);
        if (jsonLiteral.j) {
            encoder.o(str);
            return;
        }
        Long T = StringsKt.T(str);
        if (T != null) {
            encoder.n(T.longValue());
            return;
        }
        ULong e = UStringsKt.e(str);
        if (e != null) {
            encoder.m(ULongSerializer.b).n(e.j);
            return;
        }
        Double R = StringsKt.R(str);
        if (R != null) {
            encoder.f(R.doubleValue());
            return;
        }
        if (str.equals("true")) {
            bool = Boolean.TRUE;
        } else if (str.equals("false")) {
            bool = Boolean.FALSE;
        } else {
            bool = null;
        }
        if (bool != null) {
            encoder.i(bool.booleanValue());
        } else {
            encoder.o(str);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
