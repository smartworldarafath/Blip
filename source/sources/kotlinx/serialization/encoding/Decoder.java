package kotlinx.serialization.encoding;

import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Decoder {
    float A();

    double B();

    CompositeDecoder c(SerialDescriptor serialDescriptor);

    boolean f();

    char h();

    int m();

    String o();

    long q();

    boolean r();

    Decoder u(SerialDescriptor serialDescriptor);

    default Object x(DeserializationStrategy deserializationStrategy) {
        deserializationStrategy.getClass();
        return deserializationStrategy.a(this);
    }

    byte y();

    short z();
}
