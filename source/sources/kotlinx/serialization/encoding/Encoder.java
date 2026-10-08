package kotlinx.serialization.encoding;

import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Encoder {
    SerializersModule b();

    CompositeEncoder c(SerialDescriptor serialDescriptor);

    void d(SerializationStrategy serializationStrategy, Object obj);

    void e();

    void f(double d);

    void g(short s);

    void h(byte b);

    void i(boolean z);

    void j(float f);

    void k(char c);

    void l(int i);

    Encoder m(SerialDescriptor serialDescriptor);

    void n(long j);

    void o(String str);
}
