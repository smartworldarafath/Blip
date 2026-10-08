package com.google.android.datatransport.runtime.time;

import android.os.SystemClock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class UptimeClock implements Clock {
    @Override // com.google.android.datatransport.runtime.time.Clock
    public final long a() {
        return SystemClock.elapsedRealtime();
    }
}
