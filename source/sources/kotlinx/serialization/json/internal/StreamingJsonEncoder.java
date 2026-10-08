package kotlinx.serialization.json.internal;

import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.encoding.AbstractEncoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.CachedNames;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonEncoder;
import kotlinx.serialization.json.JsonEncodingException;
import kotlinx.serialization.modules.SerialModuleImpl;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StreamingJsonEncoder extends AbstractEncoder implements JsonEncoder {
    public final Composer a;
    public final Json b;
    public final WriteMode c;
    public final JsonEncoder[] d;
    public final SerializersModule e;
    public boolean f;
    public String g;
    public String h;

    public StreamingJsonEncoder(Composer composer, Json json, WriteMode writeMode, JsonEncoder[] jsonEncoderArr) {
        composer.getClass();
        json.getClass();
        this.a = composer;
        this.b = json;
        this.c = writeMode;
        this.d = jsonEncoderArr;
        this.e = json.b;
        int ordinal = writeMode.ordinal();
        if (jsonEncoderArr != null) {
            JsonEncoder jsonEncoder = jsonEncoderArr[ordinal];
            if (jsonEncoder != null || jsonEncoder != this) {
                jsonEncoderArr[ordinal] = this;
            }
        }
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void a(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        Composer composer = this.a;
        composer.getClass();
        composer.b = false;
        composer.c(this.c.k);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final SerializersModule b() {
        return this.e;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final CompositeEncoder c(SerialDescriptor serialDescriptor) {
        JsonEncoder jsonEncoder;
        serialDescriptor.getClass();
        Json json = this.b;
        WriteMode b = WriteModeKt.b(serialDescriptor, json);
        char c = b.j;
        Composer composer = this.a;
        composer.c(c);
        composer.b = true;
        String str = this.g;
        if (str != null) {
            String str2 = this.h;
            if (str2 == null) {
                str2 = serialDescriptor.a();
            }
            composer.a();
            composer.h(str);
            composer.c(':');
            o(str2);
            this.g = null;
            this.h = null;
        }
        if (this.c == b) {
            return this;
        }
        JsonEncoder[] jsonEncoderArr = this.d;
        if (jsonEncoderArr != null && (jsonEncoder = jsonEncoderArr[b.ordinal()]) != null) {
            return jsonEncoder;
        }
        return new StreamingJsonEncoder(composer, json, b, jsonEncoderArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if (r1 != kotlinx.serialization.json.ClassDiscriminatorMode.j) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x003a, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(r1, kotlinx.serialization.descriptors.StructureKind.OBJECT.a) == false) goto L21;
     */
    @Override // kotlinx.serialization.encoding.Encoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(SerializationStrategy serializationStrategy, Object obj) {
        String a;
        Set set;
        String str;
        serializationStrategy.getClass();
        Json json = this.b;
        boolean z = serializationStrategy instanceof AbstractPolymorphicSerializer;
        ClassDiscriminatorMode classDiscriminatorMode = json.a.e;
        if (!z) {
            int ordinal = classDiscriminatorMode.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        k8.e();
                        return;
                    }
                } else {
                    SerialKind e = serializationStrategy.c().e();
                    if (!Intrinsics.a(e, StructureKind.CLASS.a)) {
                    }
                    a = PolymorphicKt.a(serializationStrategy.c(), json);
                }
            }
            a = null;
        }
        if (z) {
            AbstractPolymorphicSerializer abstractPolymorphicSerializer = (AbstractPolymorphicSerializer) serializationStrategy;
            if (obj == null) {
                fe.u("Value for serializer ", ((PolymorphicSerializer) abstractPolymorphicSerializer).c(), " should always be non-null. Please report issue to the kotlinx.serialization tracker.");
                return;
            }
            abstractPolymorphicSerializer.getClass();
            obj.getClass();
            ((SerialModuleImpl) b()).getClass();
            throw null;
        }
        if (a != null) {
            SerialDescriptor c = serializationStrategy.c();
            c.getClass();
            JsonNamesMapKt.b(c, json);
            c.getClass();
            if (c instanceof CachedNames) {
                set = ((CachedNames) c).b();
            } else {
                HashSet hashSet = new HashSet(c.f());
                int f = c.f();
                for (int i = 0; i < f; i++) {
                    hashSet.add(c.g(i));
                }
                set = hashSet;
            }
            if (set.contains(a)) {
                String a2 = serializationStrategy.c().a();
                String a3 = serializationStrategy.c().a();
                if (json.a.e == ClassDiscriminatorMode.k && Intrinsics.a(a2, a3)) {
                    str = "in ALL_JSON_OBJECTS class discriminator mode";
                } else {
                    str = "as base class '" + a2 + '\'';
                }
                throw new JsonEncodingException(q.l(q.o("Class '", a3, "' cannot be serialized ", str, " because it has property name that conflicts with JSON class discriminator '"), a, "'."), "You can either change class discriminator in JsonConfiguration, or rename property with @SerialName annotation.");
            }
            SerialKind e2 = serializationStrategy.c().e();
            e2.getClass();
            if (!(e2 instanceof SerialKind.ENUM)) {
                if (!(e2 instanceof PrimitiveKind)) {
                    if (!(e2 instanceof PolymorphicKind)) {
                        String a4 = serializationStrategy.c().a();
                        this.g = a;
                        this.h = a4;
                    } else {
                        u2.l("Actual serializer for polymorphic cannot be polymorphic itself");
                        return;
                    }
                } else {
                    u2.l("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
                    return;
                }
            } else {
                u2.l("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
                return;
            }
        }
        serializationStrategy.b(this, obj);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void e() {
        this.a.f("null");
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void f(double d) {
        if (this.f) {
            o(String.valueOf(d));
        } else {
            this.a.a.c(String.valueOf(d));
        }
        if (Math.abs(d) <= Double.MAX_VALUE) {
        } else {
            throw new JsonEncodingException(JsonExceptionsKt.e(Double.valueOf(d), null), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void g(short s) {
        if (this.f) {
            o(String.valueOf((int) s));
        } else {
            this.a.g(s);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void h(byte b) {
        if (this.f) {
            o(String.valueOf((int) b));
        } else {
            this.a.b(b);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void i(boolean z) {
        if (this.f) {
            o(String.valueOf(z));
        } else {
            this.a.a.c(String.valueOf(z));
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void j(float f) {
        if (this.f) {
            o(String.valueOf(f));
        } else {
            this.a.a.c(String.valueOf(f));
        }
        if (Math.abs(f) <= Float.MAX_VALUE) {
        } else {
            throw new JsonEncodingException(JsonExceptionsKt.e(Float.valueOf(f), null), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void k(char c) {
        o(String.valueOf(c));
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void l(int i) {
        if (this.f) {
            o(String.valueOf(i));
        } else {
            this.a.d(i);
        }
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final Encoder m(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        boolean a = StreamingJsonEncoderKt.a(serialDescriptor);
        WriteMode writeMode = this.c;
        Json json = this.b;
        Composer composer = this.a;
        if (a) {
            if (!(composer instanceof ComposerForUnsignedNumbers)) {
                composer = new ComposerForUnsignedNumbers(composer.a, this.f);
            }
            return new StreamingJsonEncoder(composer, json, writeMode, null);
        }
        if (serialDescriptor.h() && serialDescriptor.equals(JsonElementKt.a)) {
            if (!(composer instanceof ComposerForUnquotedLiterals)) {
                composer = new ComposerForUnquotedLiterals(composer.a, this.f);
            }
            return new StreamingJsonEncoder(composer, json, writeMode, null);
        }
        if (this.g != null) {
            this.h = serialDescriptor.a();
        }
        return this;
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder, kotlinx.serialization.encoding.Encoder
    public final void n(long j) {
        if (this.f) {
            o(String.valueOf(j));
        } else {
            this.a.e(j);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void o(String str) {
        str.getClass();
        this.a.h(str);
    }

    @Override // kotlinx.serialization.encoding.AbstractEncoder
    public final void p(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        int ordinal = this.c.ordinal();
        Composer composer = this.a;
        boolean z = true;
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (!composer.b) {
                        composer.c(',');
                    }
                    composer.a();
                    Json json = this.b;
                    json.getClass();
                    JsonNamesMapKt.b(serialDescriptor, json);
                    o(serialDescriptor.g(i));
                    composer.c(':');
                    composer.i();
                    return;
                }
                if (i == 0) {
                    this.f = true;
                }
                if (i == 1) {
                    composer.c(',');
                    composer.i();
                    this.f = false;
                    return;
                }
                return;
            }
            if (!composer.b) {
                if (i % 2 == 0) {
                    composer.c(',');
                    composer.a();
                } else {
                    composer.c(':');
                    composer.i();
                    z = false;
                }
                this.f = z;
                return;
            }
            this.f = true;
            composer.a();
            return;
        }
        if (!composer.b) {
            composer.c(',');
        }
        composer.a();
    }
}
