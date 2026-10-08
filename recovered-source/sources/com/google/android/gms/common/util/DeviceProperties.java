package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DeviceProperties {
    public static Boolean a;
    public static Boolean b;
    public static Boolean c;
    public static Boolean d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (a == null) {
            a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        a.booleanValue();
        if (b == null) {
            b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (b.booleanValue() && Build.VERSION.SDK_INT >= 30) {
            return true;
        }
        return false;
    }
}
