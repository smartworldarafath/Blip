package kotlinx.serialization.json.internal;

import defpackage.p0;
import defpackage.q;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.PolymorphicSerializerKt;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.AbstractDecoder;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.ElementMarker;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonException;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;
import kotlinx.serialization.json.internal.JsonPath;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class StreamingJsonDecoder extends AbstractDecoder implements JsonDecoder {
    public final Json a;
    public final WriteMode b;
    public final StringJsonLexer c;
    public final SerializersModule d;
    public int e;
    public final JsonElementMarker f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DiscriminatorHolder {
        public String a;
    }

    public StreamingJsonDecoder(Json json, WriteMode writeMode, StringJsonLexer stringJsonLexer, SerialDescriptor serialDescriptor, DiscriminatorHolder discriminatorHolder) {
        JsonElementMarker jsonElementMarker;
        json.getClass();
        serialDescriptor.getClass();
        this.a = json;
        this.b = writeMode;
        this.c = stringJsonLexer;
        this.d = json.b;
        this.e = -1;
        if (json.a.a) {
            jsonElementMarker = null;
        } else {
            jsonElementMarker = new JsonElementMarker(serialDescriptor);
        }
        this.f = jsonElementMarker;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final float A() {
        StringJsonLexer stringJsonLexer = this.c;
        String h = stringJsonLexer.h();
        try {
            float parseFloat = Float.parseFloat(h);
            JsonConfiguration jsonConfiguration = this.a.a;
            if (Math.abs(parseFloat) <= Float.MAX_VALUE) {
                return parseFloat;
            }
            AbstractJsonLexer.j(stringJsonLexer, JsonExceptionsKt.e(Float.valueOf(parseFloat), null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.j(stringJsonLexer, "Failed to parse type 'float' for input '" + h + '\'', 0, null, 6);
            throw null;
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final double B() {
        StringJsonLexer stringJsonLexer = this.c;
        String h = stringJsonLexer.h();
        try {
            double parseDouble = Double.parseDouble(h);
            JsonConfiguration jsonConfiguration = this.a.a;
            if (Math.abs(parseDouble) <= Double.MAX_VALUE) {
                return parseDouble;
            }
            AbstractJsonLexer.j(stringJsonLexer, JsonExceptionsKt.e(Double.valueOf(parseDouble), null), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            AbstractJsonLexer.j(stringJsonLexer, "Failed to parse type 'double' for input '" + h + '\'', 0, null, 6);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if (kotlinx.serialization.json.internal.JsonNamesMapKt.a(r5, r2) != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (s(r5) != (-1)) goto L20;
     */
    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        int f = serialDescriptor.f();
        Json json = this.a;
        if (f == 0) {
        }
        StringJsonLexer stringJsonLexer = this.c;
        if (!stringJsonLexer.p()) {
            stringJsonLexer.s(this.b.k);
            JsonPath jsonPath = stringJsonLexer.c;
            int i = jsonPath.d;
            int[] iArr = jsonPath.c;
            if (iArr[i] == -2) {
                iArr[i] = -1;
                jsonPath.d = i - 1;
            }
            int i2 = jsonPath.d;
            if (i2 != -1) {
                jsonPath.d = i2 - 1;
                return;
            }
            return;
        }
        JsonConfiguration jsonConfiguration = json.a;
        JsonExceptionsKt.b(stringJsonLexer, "");
        throw null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final SerializersModule b() {
        return this.d;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder c(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Json json = this.a;
        WriteMode b = WriteModeKt.b(serialDescriptor, json);
        StringJsonLexer stringJsonLexer = this.c;
        JsonPath jsonPath = stringJsonLexer.c;
        jsonPath.getClass();
        int i = jsonPath.d + 1;
        jsonPath.d = i;
        if (i == jsonPath.b.length) {
            jsonPath.b();
        }
        jsonPath.b[i] = serialDescriptor;
        stringJsonLexer.s(b.j);
        if (stringJsonLexer.l() != 4) {
            int ordinal = b.ordinal();
            if (ordinal != 1 && ordinal != 2 && ordinal != 3) {
                if (this.b == b && json.a.a) {
                    return this;
                }
                return new StreamingJsonDecoder(this.a, b, stringJsonLexer, serialDescriptor, null);
            }
            return new StreamingJsonDecoder(this.a, b, stringJsonLexer, serialDescriptor, null);
        }
        AbstractJsonLexer.j(stringJsonLexer, "Unexpected leading comma", 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean f() {
        boolean z;
        boolean z2;
        StringJsonLexer stringJsonLexer = this.c;
        int o = stringJsonLexer.o();
        String str = stringJsonLexer.f;
        if (o != str.length()) {
            if (str.charAt(o) == '\"') {
                o++;
                z = true;
            } else {
                z = false;
            }
            int n = stringJsonLexer.n(o);
            if (n < str.length() && n != -1) {
                int i = n + 1;
                int charAt = str.charAt(n) | ' ';
                if (charAt != 102) {
                    if (charAt == 116) {
                        stringJsonLexer.b(i, "rue");
                        z2 = true;
                    } else {
                        AbstractJsonLexer.j(stringJsonLexer, "Expected valid boolean literal prefix, but had '" + stringJsonLexer.h() + '\'', 0, null, 6);
                        throw null;
                    }
                } else {
                    stringJsonLexer.b(i, "alse");
                    z2 = false;
                }
                if (z) {
                    if (stringJsonLexer.b != str.length()) {
                        if (str.charAt(stringJsonLexer.b) == '\"') {
                            stringJsonLexer.b++;
                            return z2;
                        }
                        AbstractJsonLexer.j(stringJsonLexer, "Expected closing quotation mark", 0, null, 6);
                        throw null;
                    }
                    AbstractJsonLexer.j(stringJsonLexer, "EOF", 0, null, 6);
                    throw null;
                }
                return z2;
            }
            AbstractJsonLexer.j(stringJsonLexer, "EOF", 0, null, 6);
            throw null;
        }
        AbstractJsonLexer.j(stringJsonLexer, "EOF", 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final char h() {
        StringJsonLexer stringJsonLexer = this.c;
        String h = stringJsonLexer.h();
        if (h.length() == 1) {
            return h.charAt(0);
        }
        AbstractJsonLexer.j(stringJsonLexer, "Expected single char, but got '" + h + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final JsonElement l() {
        return new JsonTreeReader(this.a.a, this.c).b();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final int m() {
        StringJsonLexer stringJsonLexer = this.c;
        long f = stringJsonLexer.f();
        int i = (int) f;
        if (f == i) {
            return i;
        }
        AbstractJsonLexer.j(stringJsonLexer, "Failed to parse int for input '" + f + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public final Object n(SerialDescriptor serialDescriptor, int i, DeserializationStrategy deserializationStrategy, Object obj) {
        boolean z;
        Object obj2;
        JsonPath jsonPath = this.c.c;
        serialDescriptor.getClass();
        deserializationStrategy.getClass();
        if (this.b == WriteMode.n && (i & 1) == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            int[] iArr = jsonPath.c;
            int i2 = jsonPath.d;
            if (iArr[i2] == -2) {
                jsonPath.b[i2] = JsonPath.Tombstone.a;
            }
        }
        Object x = x(deserializationStrategy);
        if (z) {
            int[] iArr2 = jsonPath.c;
            int i3 = jsonPath.d;
            if (iArr2[i3] != -2) {
                int i4 = i3 + 1;
                jsonPath.d = i4;
                if (i4 == jsonPath.b.length) {
                    jsonPath.b();
                }
            }
            Object[] objArr = jsonPath.b;
            int i5 = jsonPath.d;
            if (jsonPath.a.f) {
                obj2 = x;
            } else {
                obj2 = JsonPath.RedactedKey.a;
            }
            objArr[i5] = obj2;
            jsonPath.c[i5] = -2;
        }
        return x;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final String o() {
        return this.c.g();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final long q() {
        return this.c.f();
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean r() {
        boolean z;
        boolean z2;
        JsonElementMarker jsonElementMarker = this.f;
        if (jsonElementMarker != null) {
            z = jsonElementMarker.b;
        } else {
            z = false;
        }
        if (!z) {
            StringJsonLexer stringJsonLexer = this.c;
            int n = stringJsonLexer.n(stringJsonLexer.o());
            String str = stringJsonLexer.f;
            int length = str.length() - n;
            if (length >= 4 && n != -1) {
                int i = 0;
                while (true) {
                    if (i < 4) {
                        if ("null".charAt(i) != str.charAt(n + i)) {
                            break;
                        }
                        i++;
                    } else if (length <= 4 || AbstractJsonLexerKt.a(str.charAt(n + 4)) != 0) {
                        stringJsonLexer.b = n + 4;
                        z2 = true;
                    }
                }
            }
            z2 = false;
            if (!z2) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.Throwable, java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.Throwable, java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v19 */
    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int s(SerialDescriptor serialDescriptor) {
        byte b;
        Object obj;
        ?? r14;
        boolean z;
        StringJsonLexer stringJsonLexer = this.c;
        JsonPath jsonPath = stringJsonLexer.c;
        serialDescriptor.getClass();
        WriteMode writeMode = this.b;
        int ordinal = writeMode.ordinal();
        char c = ':';
        int i = 0;
        r8 = false;
        boolean z2 = false;
        Json json = this.a;
        byte b2 = 1;
        int i2 = -1;
        Throwable th = null;
        if (ordinal != 0) {
            if (ordinal != 2) {
                boolean p = stringJsonLexer.p();
                if (stringJsonLexer.r()) {
                    int i3 = this.e;
                    if (i3 != -1 && !p) {
                        AbstractJsonLexer.j(stringJsonLexer, "Expected end of the array or comma", 0, null, 6);
                        throw null;
                    }
                    i2 = i3 + 1;
                    this.e = i2;
                } else if (p) {
                    JsonConfiguration jsonConfiguration = json.a;
                    JsonExceptionsKt.b(stringJsonLexer, "array");
                    throw null;
                }
            } else {
                int i4 = this.e;
                if (i4 % 2 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    if (i4 != -1) {
                        z2 = stringJsonLexer.p();
                    }
                } else {
                    stringJsonLexer.s(':');
                }
                if (stringJsonLexer.r()) {
                    if (z) {
                        int i5 = this.e;
                        int i6 = stringJsonLexer.b;
                        if (i5 == -1) {
                            if (z2) {
                                AbstractJsonLexer.j(stringJsonLexer, "Unexpected leading comma", i6, null, 4);
                                throw null;
                            }
                        } else if (!z2) {
                            AbstractJsonLexer.j(stringJsonLexer, "Expected comma after the key-value pair", i6, null, 4);
                            throw null;
                        }
                    }
                    i2 = this.e + 1;
                    this.e = i2;
                } else if (z2) {
                    JsonConfiguration jsonConfiguration2 = json.a;
                    JsonExceptionsKt.c(stringJsonLexer);
                    throw null;
                }
            }
        } else {
            boolean p2 = stringJsonLexer.p();
            while (true) {
                boolean r = stringJsonLexer.r();
                Throwable th2 = th;
                JsonElementMarker jsonElementMarker = this.f;
                if (r) {
                    String c2 = stringJsonLexer.c();
                    stringJsonLexer.s(c);
                    serialDescriptor.getClass();
                    json.getClass();
                    c2.getClass();
                    JsonNamesMapKt.b(serialDescriptor, json);
                    int d = serialDescriptor.d(c2);
                    if (d != -3) {
                        b = b2;
                    } else {
                        b = b2;
                        if (json.a.d) {
                            DescriptorSchemaCache descriptorSchemaCache = json.c;
                            p0 p0Var = new p0(19, serialDescriptor, json);
                            descriptorSchemaCache.getClass();
                            ConcurrentHashMap concurrentHashMap = descriptorSchemaCache.a;
                            Map map = (Map) concurrentHashMap.get(serialDescriptor);
                            DescriptorSchemaCache.Key key = JsonNamesMapKt.a;
                            if (map != null) {
                                obj = map.get(key);
                            } else {
                                obj = th2;
                            }
                            if (obj == null) {
                                obj = th2;
                            }
                            if (obj == null) {
                                obj = p0Var.a();
                                Object obj2 = concurrentHashMap.get(serialDescriptor);
                                Object obj3 = obj2;
                                if (obj2 == null) {
                                    ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap(2);
                                    concurrentHashMap.put(serialDescriptor, concurrentHashMap2);
                                    obj3 = concurrentHashMap2;
                                }
                                ((Map) obj3).put(key, obj);
                            }
                            Integer num = (Integer) ((Map) obj).get(c2);
                            d = num != null ? num.intValue() : -3;
                        }
                    }
                    if (d != -3) {
                        if (jsonElementMarker != null) {
                            ElementMarker elementMarker = jsonElementMarker.a;
                            if (d < 64) {
                                elementMarker.c |= 1 << d;
                            } else {
                                int i7 = (d >>> 6) - 1;
                                long[] jArr = elementMarker.d;
                                jArr[i7] = jArr[i7] | (1 << (d & 63));
                            }
                        }
                        i2 = d;
                    } else {
                        if (!JsonNamesMapKt.a(serialDescriptor, json)) {
                            int i8 = jsonPath.d;
                            int[] iArr = jsonPath.c;
                            if (iArr[i8] == -2) {
                                iArr[i8] = -1;
                                jsonPath.d = i8 - 1;
                            }
                            int i9 = jsonPath.d;
                            if (i9 != -1) {
                                jsonPath.d = i9 - 1;
                            }
                            stringJsonLexer.i("Encountered an unknown key '" + c2 + '\'', StringsKt.w(stringJsonLexer.f.subSequence(0, stringJsonLexer.b).toString(), 6, c2), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
                            throw th2;
                        }
                        ArrayList arrayList = new ArrayList();
                        byte l = stringJsonLexer.l();
                        if (l == 8 || l == 6) {
                            while (true) {
                                byte l2 = stringJsonLexer.l();
                                b2 = b;
                                if (l2 == b2) {
                                    stringJsonLexer.c();
                                    b = b2;
                                } else {
                                    if (l2 == 8 || l2 == 6) {
                                        r14 = false;
                                        arrayList.add(Byte.valueOf(l2));
                                    } else if (l2 == 9) {
                                        if (((Number) CollectionsKt.z(arrayList)).byteValue() == 8) {
                                            CollectionsKt.L(arrayList);
                                            r14 = false;
                                        } else {
                                            ?? r13 = th2;
                                            AbstractJsonLexer.j(stringJsonLexer, "found ] instead of }", 0, r13, 6);
                                            throw r13;
                                        }
                                    } else {
                                        ?? r132 = th2;
                                        r14 = false;
                                        if (l2 == 7) {
                                            if (((Number) CollectionsKt.z(arrayList)).byteValue() == 6) {
                                                CollectionsKt.L(arrayList);
                                            } else {
                                                AbstractJsonLexer.j(stringJsonLexer, "found } instead of ]", 0, r132, 6);
                                                throw r132;
                                            }
                                        } else if (l2 == 10) {
                                            AbstractJsonLexer.j(stringJsonLexer, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, r132, 6);
                                            throw r132;
                                        }
                                    }
                                    stringJsonLexer.d();
                                    if (arrayList.size() == 0) {
                                        break;
                                    }
                                    b = b2;
                                    th2 = null;
                                }
                            }
                        } else {
                            stringJsonLexer.h();
                            b2 = b;
                            r14 = false;
                        }
                        p2 = stringJsonLexer.p();
                        i = r14;
                        c = ':';
                        th = null;
                    }
                } else {
                    int i10 = i;
                    if (!p2) {
                        if (jsonElementMarker != null) {
                            ElementMarker elementMarker2 = jsonElementMarker.a;
                            Function2 function2 = elementMarker2.b;
                            SerialDescriptor serialDescriptor2 = elementMarker2.a;
                            int f = serialDescriptor2.f();
                            while (true) {
                                long j = elementMarker2.c;
                                long j2 = -1;
                                if (j != -1) {
                                    int numberOfTrailingZeros = Long.numberOfTrailingZeros(~j);
                                    elementMarker2.c |= 1 << numberOfTrailingZeros;
                                    if (((Boolean) ((JsonElementMarker$origin$1) function2).n(serialDescriptor2, Integer.valueOf(numberOfTrailingZeros))).booleanValue()) {
                                        i2 = numberOfTrailingZeros;
                                        break;
                                    }
                                } else if (f > 64) {
                                    long[] jArr2 = elementMarker2.d;
                                    int length = jArr2.length;
                                    loop3: while (true) {
                                        if (i10 >= length) {
                                            break;
                                        }
                                        int i11 = i10 + 1;
                                        int i12 = i11 * 64;
                                        long j3 = jArr2[i10];
                                        while (j3 != j2) {
                                            int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(~j3);
                                            j3 |= 1 << numberOfTrailingZeros2;
                                            int i13 = numberOfTrailingZeros2 + i12;
                                            if (((Boolean) ((JsonElementMarker$origin$1) function2).n(serialDescriptor2, Integer.valueOf(i13))).booleanValue()) {
                                                jArr2[i10] = j3;
                                                i2 = i13;
                                                break loop3;
                                            }
                                            j2 = -1;
                                        }
                                        jArr2[i10] = j3;
                                        i10 = i11;
                                        j2 = -1;
                                    }
                                }
                            }
                        }
                    } else {
                        JsonConfiguration jsonConfiguration3 = json.a;
                        JsonExceptionsKt.c(stringJsonLexer);
                        throw null;
                    }
                }
            }
        }
        if (writeMode != WriteMode.n) {
            jsonPath.c[jsonPath.d] = i2;
        }
        return i2;
    }

    @Override // kotlinx.serialization.json.JsonDecoder
    public final Json t() {
        return this.a;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final Decoder u(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (StreamingJsonEncoderKt.a(serialDescriptor)) {
            return new JsonDecoderForUnsignedTypes(this.c, this.a);
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlinx.serialization.encoding.Decoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object x(DeserializationStrategy deserializationStrategy) {
        String m;
        String substring;
        String str;
        String str2;
        String str3;
        deserializationStrategy.getClass();
        if (deserializationStrategy instanceof AbstractPolymorphicSerializer) {
            Json json = this.a;
            JsonConfiguration jsonConfiguration = json.a;
            PolymorphicSerializer polymorphicSerializer = (PolymorphicSerializer) ((AbstractPolymorphicSerializer) deserializationStrategy);
            String a = PolymorphicKt.a(polymorphicSerializer.c(), json);
            a.getClass();
            StringJsonLexer stringJsonLexer = this.c;
            int i = stringJsonLexer.b;
            try {
                if (stringJsonLexer.d() == 6 && Intrinsics.a(stringJsonLexer.m(), a)) {
                    stringJsonLexer.d = null;
                    if (stringJsonLexer.d() == 5) {
                        m = stringJsonLexer.m();
                        if (m != null) {
                            JsonConfiguration jsonConfiguration2 = json.a;
                            String a2 = PolymorphicKt.a(polymorphicSerializer.c(), json);
                            JsonElement l = l();
                            String a3 = polymorphicSerializer.c().a();
                            if (!(l instanceof JsonObject)) {
                                String str4 = "Expected " + Reflection.a(JsonObject.class).c() + ", but had " + Reflection.a(l.getClass()).c() + " as the serialized body of " + a3;
                                String a4 = stringJsonLexer.c.a();
                                if (json.a.f) {
                                    str3 = q.m(l, -1);
                                } else {
                                    str3 = null;
                                }
                                throw new JsonException(JsonExceptionsKt.a(-1, str4, a4, null, str3));
                            }
                            JsonObject jsonObject = (JsonObject) l;
                            JsonElement jsonElement = (JsonElement) jsonObject.get(a2);
                            try {
                                if (jsonElement != null) {
                                    JsonPrimitive a5 = JsonElementKt.a(jsonElement);
                                    if (!(a5 instanceof JsonNull)) {
                                        str = a5.b();
                                        PolymorphicSerializerKt.a((AbstractPolymorphicSerializer) deserializationStrategy, this, str);
                                        throw null;
                                    }
                                }
                                PolymorphicSerializerKt.a((AbstractPolymorphicSerializer) deserializationStrategy, this, str);
                                throw null;
                            } catch (SerializationException e) {
                                String message = e.getMessage();
                                message.getClass();
                                if (json.a.f) {
                                    str2 = JsonExceptionsKt.d(jsonObject.toString(), -1).toString();
                                } else {
                                    str2 = null;
                                }
                                throw new JsonException(JsonExceptionsKt.a(-1, message, null, null, str2));
                            }
                            str = null;
                        } else {
                            try {
                                PolymorphicSerializerKt.a((AbstractPolymorphicSerializer) deserializationStrategy, this, m);
                                throw null;
                            } catch (SerializationException e2) {
                                String message2 = e2.getMessage();
                                message2.getClass();
                                String C = StringsKt.C(StringsKt.N(message2, '\n'), ".");
                                String message3 = e2.getMessage();
                                message3.getClass();
                                int q = StringsKt.q(message3, '\n', 0, 6);
                                if (q == -1) {
                                    substring = "";
                                } else {
                                    substring = message3.substring(q + 1, message3.length());
                                }
                                AbstractJsonLexer.j(stringJsonLexer, C, 0, substring, 2);
                                throw null;
                            }
                        }
                    }
                }
                stringJsonLexer.b = i;
                stringJsonLexer.d = null;
                m = null;
                if (m != null) {
                }
            } finally {
                stringJsonLexer.b = i;
                stringJsonLexer.d = null;
            }
        } else {
            return deserializationStrategy.a(this);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final byte y() {
        StringJsonLexer stringJsonLexer = this.c;
        long f = stringJsonLexer.f();
        byte b = (byte) f;
        if (f == b) {
            return b;
        }
        AbstractJsonLexer.j(stringJsonLexer, "Failed to parse byte for input '" + f + '\'', 0, null, 6);
        throw null;
    }

    @Override // kotlinx.serialization.encoding.AbstractDecoder, kotlinx.serialization.encoding.Decoder
    public final short z() {
        StringJsonLexer stringJsonLexer = this.c;
        long f = stringJsonLexer.f();
        short s = (short) f;
        if (f == s) {
            return s;
        }
        AbstractJsonLexer.j(stringJsonLexer, "Failed to parse short for input '" + f + '\'', 0, null, 6);
        throw null;
    }
}
