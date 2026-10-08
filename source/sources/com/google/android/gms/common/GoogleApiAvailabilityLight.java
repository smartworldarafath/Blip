package com.google.android.gms.common;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzae;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import defpackage.fe;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GoogleApiAvailabilityLight {
    public static final int a;

    static {
        AtomicBoolean atomicBoolean = GooglePlayServicesUtilLight.a;
        a = 12451000;
    }

    public Intent a(int i, Context context, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(fromParts);
            return intent;
        }
        if (context != null && DeviceProperties.a(context)) {
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb = new StringBuilder("gcore_");
        sb.append(a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                PackageManagerWrapper a2 = Wrappers.a(context);
                sb.append(a2.a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String sb2 = sb.toString();
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(sb2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", sb2);
        }
        intent3.setData(appendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0269 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x026a A[RETURN] */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object, com.google.android.gms.common.GoogleSignatureVerifier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int b(Context context, int i) {
        boolean z;
        PackageInfo packageInfo;
        int i2;
        Bundle bundle;
        AtomicBoolean atomicBoolean = GooglePlayServicesUtilLight.a;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        boolean z2 = true;
        if (!"com.google.android.gms".equals(context.getPackageName()) && !GooglePlayServicesUtilLight.b.get()) {
            synchronized (zzae.a) {
                try {
                    if (!zzae.b) {
                        zzae.b = true;
                        try {
                            bundle = Wrappers.a(context).a.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e);
                        }
                        if (bundle != null) {
                            bundle.getString("com.google.app.id");
                            zzae.c = bundle.getInt("com.google.android.gms.version");
                        }
                    }
                } finally {
                }
            }
            int i3 = zzae.c;
            if (i3 != 0) {
                if (i3 != 12451000) {
                    int i4 = a;
                    StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 104 + String.valueOf(i3).length() + 194);
                    sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                    sb.append(i4);
                    sb.append(" but found ");
                    sb.append(i3);
                    sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        if (!DeviceProperties.a(context)) {
            if (DeviceProperties.c == null) {
                DeviceProperties.c = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
            }
            if (!DeviceProperties.c.booleanValue()) {
                z = true;
                if (i < 0) {
                    String packageName = context.getPackageName();
                    PackageManager packageManager = context.getPackageManager();
                    int i5 = 9;
                    if (z) {
                        try {
                            packageInfo = packageManager.getPackageInfo("com.android.vending", 134225984);
                        } catch (PackageManager.NameNotFoundException unused2) {
                            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
                        }
                    } else {
                        packageInfo = null;
                    }
                    try {
                        PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 134217792);
                        synchronized (GoogleSignatureVerifier.class) {
                            if (GoogleSignatureVerifier.a == null) {
                                zzh zzhVar = zzo.a;
                                synchronized (zzo.class) {
                                    if (zzo.c == null) {
                                        zzo.c = context.getApplicationContext();
                                    } else {
                                        Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
                                    }
                                }
                                ?? obj = new Object();
                                context.getApplicationContext();
                                GoogleSignatureVerifier.a = obj;
                            }
                        }
                        if (!GoogleSignatureVerifier.a(packageInfo2)) {
                            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
                        } else {
                            if (z) {
                                Preconditions.e(packageInfo);
                                if (!GoogleSignatureVerifier.a(packageInfo)) {
                                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                                }
                            }
                            if (z && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                            } else {
                                int i6 = packageInfo2.versionCode;
                                int i7 = -1;
                                if (i6 == -1) {
                                    i2 = -1;
                                } else {
                                    i2 = i6 / 1000;
                                }
                                if (i != -1) {
                                    i7 = i / 1000;
                                }
                                if (i2 < i7) {
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(packageName).length() + 49 + String.valueOf(i).length() + 11 + String.valueOf(i6).length());
                                    sb2.append("Google Play services out of date for ");
                                    sb2.append(packageName);
                                    sb2.append(".  Requires ");
                                    sb2.append(i);
                                    sb2.append(" but found ");
                                    sb2.append(i6);
                                    Log.w("GooglePlayServicesUtil", sb2.toString());
                                    i5 = 2;
                                } else {
                                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                                    if (applicationInfo == null) {
                                        try {
                                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                                        } catch (PackageManager.NameNotFoundException e2) {
                                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e2);
                                            i5 = 1;
                                            if (i5 != 18) {
                                            }
                                            if (!z2) {
                                            }
                                        }
                                    }
                                    i5 = !applicationInfo.enabled ? 3 : 0;
                                }
                            }
                        }
                    } catch (PackageManager.NameNotFoundException unused3) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
                    }
                    if (i5 != 18) {
                        if (i5 == 1) {
                            try {
                                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                                            break;
                                        }
                                    } else {
                                        z2 = context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
                                        break;
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException | Exception unused4) {
                            }
                        }
                        z2 = false;
                    }
                    if (!z2) {
                        return 18;
                    }
                    return i5;
                }
                fe.h();
                return 0;
            }
        }
        z = false;
        if (i < 0) {
        }
    }
}
