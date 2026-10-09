package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Metadata {
    public final Context a;
    public String b;
    public String c;
    public int d;
    public int e = 0;

    public Metadata(Context context) {
        this.a = context;
    }

    public static String b(FirebaseApp firebaseApp) {
        firebaseApp.a();
        FirebaseOptions firebaseOptions = firebaseApp.c;
        String str = firebaseOptions.e;
        if (str != null) {
            return str;
        }
        firebaseApp.a();
        String str2 = firebaseOptions.b;
        if (!str2.startsWith("1:")) {
            return str2;
        }
        String[] split = str2.split(":");
        if (split.length < 2) {
            return null;
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            return null;
        }
        return str3;
    }

    public final synchronized String a() {
        try {
            if (this.b == null) {
                f();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.b;
    }

    public final synchronized int c() {
        PackageInfo d;
        try {
            if (this.d == 0 && (d = d("com.google.android.gms")) != null) {
                this.d = d.versionCode;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.d;
    }

    public final PackageInfo d(String str) {
        try {
            return this.a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("FirebaseMessaging", "Failed to find package " + e);
            return null;
        }
    }

    public final boolean e() {
        int i;
        synchronized (this) {
            i = this.e;
            if (i == 0) {
                PackageManager packageManager = this.a.getPackageManager();
                if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
                    Log.e("FirebaseMessaging", "Google Play services missing or without correct permission.");
                    i = 0;
                } else {
                    Intent intent = new Intent("com.google.iid.TOKEN_REQUEST");
                    intent.setPackage("com.google.android.gms");
                    List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
                    if (queryBroadcastReceivers != null && queryBroadcastReceivers.size() > 0) {
                        this.e = 2;
                    } else {
                        Log.w("FirebaseMessaging", "Failed to resolve IID implementation package, falling back");
                        this.e = 2;
                    }
                    i = 2;
                }
            }
        }
        if (i == 0) {
            return false;
        }
        return true;
    }

    public final synchronized void f() {
        PackageInfo d = d(this.a.getPackageName());
        if (d != null) {
            this.b = Integer.toString(d.versionCode);
            this.c = d.versionName;
        }
    }
}
