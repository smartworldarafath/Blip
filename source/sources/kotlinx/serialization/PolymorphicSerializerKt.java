package kotlinx.serialization;

import defpackage.q;
import kotlin.jvm.internal.ClassReference;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.modules.SerialModuleImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PolymorphicSerializerKt {
    public static final DeserializationStrategy a(AbstractPolymorphicSerializer abstractPolymorphicSerializer, CompositeDecoder compositeDecoder, String str) {
        String sb;
        abstractPolymorphicSerializer.getClass();
        ((SerialModuleImpl) compositeDecoder.b()).getClass();
        StringBuilder sb2 = new StringBuilder("in the polymorphic scope of '");
        ClassReference classReference = null;
        sb2.append(classReference.c());
        sb2.append('\'');
        String sb3 = sb2.toString();
        if (str == null) {
            sb = "Class discriminator was missing and no default serializers were registered " + sb3 + '.';
        } else {
            StringBuilder o = q.o("Serializer for subclass '", str, "' is not found ", sb3, ".\nCheck if class with serial name '");
            q.B(o, str, "' exists and serializer is registered in a corresponding SerializersModule.\nTo be registered automatically, class '", str, "' has to be '@Serializable', and the base class '");
            o.append(classReference.c());
            o.append("' has to be sealed and '@Serializable'.");
            sb = o.toString();
        }
        throw new IllegalArgumentException(sb);
    }
}
