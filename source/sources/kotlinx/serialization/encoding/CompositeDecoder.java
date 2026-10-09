package kotlinx.serialization.encoding;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.PrimitiveArrayDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface CompositeDecoder {
    void a(SerialDescriptor serialDescriptor);

    SerializersModule b();

    short d(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    float e(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    char g(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    byte i(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    boolean j(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    int k(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    Object n(SerialDescriptor serialDescriptor, int i, DeserializationStrategy deserializationStrategy, Object obj);

    long p(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    int s(SerialDescriptor serialDescriptor);

    Decoder v(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);

    double w(PrimitiveArrayDescriptor primitiveArrayDescriptor, int i);
}
