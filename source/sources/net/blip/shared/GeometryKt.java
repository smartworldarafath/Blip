package net.blip.shared;

import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GeometryKt {
    public static final long a(long j) {
        return (MathKt.b(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (MathKt.b(Float.intBitsToFloat((int) (j >> 32))) << 32);
    }
}
