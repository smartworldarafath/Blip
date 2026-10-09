package kotlinx.serialization.internal;

import defpackage.q;
import defpackage.x9;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ObjectSerializer<T> implements KSerializer<T> {
    public final Lazy a = LazyKt.a(LazyThreadSafetyMode.j, new x9(27, this));

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        SerialDescriptor c = c();
        CompositeDecoder c2 = decoder.c(c);
        int s = c2.s(c());
        if (s == -1) {
            c2.a(c);
            return Unit.a;
        }
        throw new IllegalArgumentException(q.g(s, "Unexpected index "));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        obj.getClass();
        encoder.c(c()).a(c());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return (SerialDescriptor) this.a.getValue();
    }
}
