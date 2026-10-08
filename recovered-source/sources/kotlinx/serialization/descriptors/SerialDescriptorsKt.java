package kotlinx.serialization.descriptors;

import defpackage.u2;
import kotlin.collections.ArraysKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.PrimitivesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SerialDescriptorsKt {
    public static final PrimitiveSerialDescriptor a(String str) {
        if (!StringsKt.t(str)) {
            Object it = ((MapBuilderValues) PrimitivesKt.a.values()).iterator();
            while (((MapBuilder.Itr) it).hasNext()) {
                KSerializer kSerializer = (KSerializer) ((MapBuilder.ValuesItr) it).next();
                if (str.equals(kSerializer.c().a())) {
                    u2.g(StringsKt.V("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name " + str + " there already exists " + Reflection.a(kSerializer.getClass()).c() + ".\n                Please refer to SerialDescriptor documentation for additional information.\n            "));
                    return null;
                }
            }
            return new PrimitiveSerialDescriptor(str, PrimitiveKind.STRING.a);
        }
        u2.g("Blank serial names are prohibited");
        return null;
    }

    public static SerialDescriptorImpl b(String str, SerialKind serialKind, SerialDescriptor[] serialDescriptorArr) {
        if (!StringsKt.t(str)) {
            if (!serialKind.equals(StructureKind.CLASS.a)) {
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = new ClassSerialDescriptorBuilder(str);
                return new SerialDescriptorImpl(str, serialKind, classSerialDescriptorBuilder.b.size(), ArraysKt.v(serialDescriptorArr), classSerialDescriptorBuilder);
            }
            u2.g("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        u2.g("Blank serial names are prohibited");
        return null;
    }
}
