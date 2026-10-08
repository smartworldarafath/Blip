package com.google.android.gms.internal.base;

import com.google.android.gms.common.Feature;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zad {
    public static final Feature a;
    public static final Feature b;
    public static final Feature[] c;

    static {
        Feature feature = new Feature("CLIENT_TELEMETRY");
        a = feature;
        Feature feature2 = new Feature("CLIENT_NOTIFICATION_TELEMETRY");
        b = feature2;
        c = new Feature[]{feature, feature2};
    }
}
