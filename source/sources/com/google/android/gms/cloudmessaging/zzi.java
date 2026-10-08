package com.google.android.gms.cloudmessaging;

import com.google.android.gms.common.Feature;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzi {
    public static final Feature a;
    public static final Feature[] b;

    static {
        Feature feature = new Feature("register", -1, 1L, true);
        a = feature;
        b = new Feature[]{feature, new Feature("unregister", -1, 1L, true)};
    }
}
