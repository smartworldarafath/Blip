package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonEncodingException;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WriteModeKt {
    public static final SerialDescriptor a(SerialDescriptor serialDescriptor, SerializersModule serializersModule) {
        serialDescriptor.getClass();
        serializersModule.getClass();
        if (Intrinsics.a(serialDescriptor.e(), SerialKind.CONTEXTUAL.a)) {
            serialDescriptor.getClass();
            return serialDescriptor;
        }
        if (serialDescriptor.h()) {
            return a(serialDescriptor.j(0), serializersModule);
        }
        return serialDescriptor;
    }

    public static final WriteMode b(SerialDescriptor serialDescriptor, Json json) {
        json.getClass();
        serialDescriptor.getClass();
        SerialKind e = serialDescriptor.e();
        if (e instanceof PolymorphicKind) {
            return WriteMode.o;
        }
        if (Intrinsics.a(e, StructureKind.LIST.a)) {
            return WriteMode.m;
        }
        if (Intrinsics.a(e, StructureKind.MAP.a)) {
            SerialDescriptor a = a(serialDescriptor.j(0), json.b);
            SerialKind e2 = a.e();
            if (!(e2 instanceof PrimitiveKind) && !Intrinsics.a(e2, SerialKind.ENUM.a)) {
                String str = "Value of type '" + a.a() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + a.e() + '\'';
                a.a();
                throw new JsonEncodingException(str, "Use 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
            }
            return WriteMode.n;
        }
        return WriteMode.l;
    }
}
