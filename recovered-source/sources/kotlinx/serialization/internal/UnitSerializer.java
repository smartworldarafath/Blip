package kotlinx.serialization.internal;

import kotlin.Unit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UnitSerializer implements KSerializer<Unit> {
    public static final UnitSerializer b = new UnitSerializer();
    public final /* synthetic */ ObjectSerializer a = new ObjectSerializer();

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        this.a.a(decoder);
        return Unit.a;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        Unit unit = (Unit) obj;
        unit.getClass();
        this.a.b(encoder, unit);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return this.a.c();
    }
}
