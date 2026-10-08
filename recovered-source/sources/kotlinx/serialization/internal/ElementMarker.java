package kotlinx.serialization.internal;

import kotlin.jvm.functions.Function2;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ElementMarker {
    public static final long[] e = new long[0];
    public final SerialDescriptor a;
    public final Function2 b;
    public long c;
    public final long[] d;

    public ElementMarker(SerialDescriptor serialDescriptor, Function2 function2) {
        serialDescriptor.getClass();
        this.a = serialDescriptor;
        this.b = function2;
        int f = serialDescriptor.f();
        if (f <= 64) {
            this.c = f != 64 ? (-1) << f : 0L;
            this.d = e;
            return;
        }
        this.c = 0L;
        int i = (f - 1) >>> 6;
        long[] jArr = new long[i];
        if ((f & 63) != 0) {
            jArr[i - 1] = (-1) << f;
        }
        this.d = jArr;
    }
}
