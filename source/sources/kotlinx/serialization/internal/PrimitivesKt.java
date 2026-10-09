package kotlinx.serialization.internal;

import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Duration;
import kotlin.time.Instant;
import kotlin.uuid.Uuid;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PrimitivesKt {
    public static final MapBuilder a;

    static {
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put(Reflection.a(String.class), StringSerializer.a);
        mapBuilder.put(Reflection.a(Character.TYPE), CharSerializer.a);
        mapBuilder.put(Reflection.a(char[].class), CharArraySerializer.c);
        mapBuilder.put(Reflection.a(Double.TYPE), DoubleSerializer.a);
        mapBuilder.put(Reflection.a(double[].class), DoubleArraySerializer.c);
        mapBuilder.put(Reflection.a(Float.TYPE), FloatSerializer.a);
        mapBuilder.put(Reflection.a(float[].class), FloatArraySerializer.c);
        mapBuilder.put(Reflection.a(Long.TYPE), LongSerializer.a);
        mapBuilder.put(Reflection.a(long[].class), LongArraySerializer.c);
        mapBuilder.put(Reflection.a(ULong.class), ULongSerializer.a);
        mapBuilder.put(Reflection.a(Integer.TYPE), IntSerializer.a);
        mapBuilder.put(Reflection.a(int[].class), IntArraySerializer.c);
        mapBuilder.put(Reflection.a(UInt.class), UIntSerializer.a);
        mapBuilder.put(Reflection.a(Short.TYPE), ShortSerializer.a);
        mapBuilder.put(Reflection.a(short[].class), ShortArraySerializer.c);
        mapBuilder.put(Reflection.a(UShort.class), UShortSerializer.a);
        mapBuilder.put(Reflection.a(Byte.TYPE), ByteSerializer.a);
        mapBuilder.put(Reflection.a(byte[].class), ByteArraySerializer.c);
        mapBuilder.put(Reflection.a(UByte.class), UByteSerializer.a);
        mapBuilder.put(Reflection.a(Boolean.TYPE), BooleanSerializer.a);
        mapBuilder.put(Reflection.a(boolean[].class), BooleanArraySerializer.c);
        mapBuilder.put(Reflection.a(Unit.class), UnitSerializer.b);
        mapBuilder.put(Reflection.a(Void.class), NothingSerializer.a);
        try {
            ClassReference a2 = Reflection.a(Duration.class);
            Duration.Companion companion = Duration.k;
            mapBuilder.put(a2, DurationSerializer.a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            mapBuilder.put(Reflection.a(ULongArray.class), ULongArraySerializer.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            mapBuilder.put(Reflection.a(UIntArray.class), UIntArraySerializer.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            mapBuilder.put(Reflection.a(UShortArray.class), UShortArraySerializer.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            mapBuilder.put(Reflection.a(UByteArray.class), UByteArraySerializer.c);
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            mapBuilder.put(Reflection.a(Uuid.class), UuidSerializer.a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        try {
            ClassReference a3 = Reflection.a(Instant.class);
            Instant instant = Instant.l;
            mapBuilder.put(a3, InstantSerializer.a);
        } catch (ClassNotFoundException | NoClassDefFoundError unused7) {
        }
        a = mapBuilder.b();
    }
}
