package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NothingSerializer implements KSerializer {
    public static final NothingSerializer a = new Object();
    public static final NothingSerialDescriptor b = NothingSerialDescriptor.a;

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        throw new IllegalArgumentException("'kotlin.Nothing' does not have instances");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        ((Void) obj).getClass();
        throw new IllegalArgumentException("'kotlin.Nothing' cannot be serialized");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
