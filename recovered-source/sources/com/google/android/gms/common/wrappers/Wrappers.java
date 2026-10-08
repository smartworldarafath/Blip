package com.google.android.gms.common.wrappers;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Wrappers {
    public static final Wrappers b;
    public PackageManagerWrapper a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.wrappers.Wrappers, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.a = null;
        b = obj;
    }

    public static PackageManagerWrapper a(Context context) {
        PackageManagerWrapper packageManagerWrapper;
        Wrappers wrappers = b;
        synchronized (wrappers) {
            try {
                if (wrappers.a == null) {
                    if (context.getApplicationContext() != null) {
                        context = context.getApplicationContext();
                    }
                    wrappers.a = new PackageManagerWrapper(context);
                }
                packageManagerWrapper = wrappers.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return packageManagerWrapper;
    }
}
