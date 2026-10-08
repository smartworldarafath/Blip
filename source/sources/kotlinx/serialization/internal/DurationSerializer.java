package kotlinx.serialization.internal;

import defpackage.q;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DurationSerializer implements KSerializer<Duration> {
    public static final DurationSerializer a = new Object();
    public static final PrimitiveSerialDescriptor b = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind.STRING.a);

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        boolean z;
        Duration.Companion companion = Duration.k;
        String o = decoder.o();
        o.getClass();
        try {
            long c = DurationKt.c(o);
            if (c == Duration.n) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return new Duration(c);
            }
            throw new IllegalStateException("invariant failed");
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException(q.i("Invalid ISO duration string format: '", o, "'."), e);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        long j;
        int h;
        int h2;
        boolean z;
        boolean z2;
        long j2 = ((Duration) obj).j;
        Duration.Companion companion = Duration.k;
        StringBuilder sb = new StringBuilder();
        if (j2 < 0) {
            sb.append('-');
        }
        sb.append("PT");
        if (j2 < 0) {
            j = Duration.i(j2);
        } else {
            j = j2;
        }
        long h3 = Duration.h(j, DurationUnit.o);
        boolean z3 = false;
        if (Duration.f(j)) {
            h = 0;
        } else {
            h = (int) (Duration.h(j, DurationUnit.n) % 60);
        }
        if (Duration.f(j)) {
            h2 = 0;
        } else {
            h2 = (int) (Duration.h(j, DurationUnit.m) % 60);
        }
        int e = Duration.e(j);
        if (Duration.f(j2)) {
            h3 = 9999999999999L;
        }
        if (h3 != 0) {
            z = true;
        } else {
            z = false;
        }
        if (h2 == 0 && e == 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (h != 0 || (z2 && z)) {
            z3 = true;
        }
        if (z) {
            sb.append(h3);
            sb.append('H');
        }
        if (z3) {
            sb.append(h);
            sb.append('M');
        }
        if (z2 || (!z && !z3)) {
            Duration.b(sb, h2, e, 9, "S", true);
        }
        encoder.o(sb.toString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
