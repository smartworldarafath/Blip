package androidx.compose.runtime.internal;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AtomicInt extends AtomicInteger {
    @Override // java.lang.Number
    public final byte byteValue() {
        return (byte) super.intValue();
    }

    @Override // java.lang.Number
    public final short shortValue() {
        return (short) super.intValue();
    }
}
