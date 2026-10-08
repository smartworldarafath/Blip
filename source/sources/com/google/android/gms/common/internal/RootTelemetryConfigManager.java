package com.google.android.gms.common.internal;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RootTelemetryConfigManager {
    public static RootTelemetryConfigManager b;
    public static final RootTelemetryConfiguration c = new RootTelemetryConfiguration(0, 0, 0, false, false);
    public RootTelemetryConfiguration a;

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.gms.common.internal.RootTelemetryConfigManager] */
    public static synchronized RootTelemetryConfigManager a() {
        RootTelemetryConfigManager rootTelemetryConfigManager;
        synchronized (RootTelemetryConfigManager.class) {
            try {
                if (b == null) {
                    b = new Object();
                }
                rootTelemetryConfigManager = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rootTelemetryConfigManager;
    }
}
