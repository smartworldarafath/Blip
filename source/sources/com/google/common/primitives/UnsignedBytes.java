package com.google.common.primitives;

import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UnsignedBytes {
    public static byte a(long j) {
        boolean z;
        if ((j >> 8) == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.f(z, "out of range: %s", j);
        return (byte) j;
    }
}
