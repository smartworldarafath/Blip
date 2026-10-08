package com.google.firebase.messaging;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProxyNotificationInitializer {
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(final Context context) {
        final boolean z;
        Context applicationContext;
        PackageManager packageManager;
        ApplicationInfo applicationInfo;
        Bundle bundle;
        if (!ProxyNotificationPreferences.a(context).getBoolean("proxy_notification_initialized", false)) {
            try {
                applicationContext = context.getApplicationContext();
                packageManager = applicationContext.getPackageManager();
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_notification_delegation_enabled")) {
                z = applicationInfo.metaData.getBoolean("firebase_messaging_notification_delegation_enabled");
                if (Build.VERSION.SDK_INT < 29) {
                    final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                    new Runnable() { // from class: com.google.firebase.messaging.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            boolean z2;
                            String notificationDelegate;
                            Context context2 = context;
                            TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                            try {
                                if (Binder.getCallingUid() == context2.getApplicationInfo().uid) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (!z2) {
                                    Log.e("FirebaseMessaging", "error configuring notification delegate for package " + context2.getPackageName());
                                    return;
                                }
                                SharedPreferences.Editor edit = ProxyNotificationPreferences.a(context2).edit();
                                edit.putBoolean("proxy_notification_initialized", true);
                                edit.apply();
                                NotificationManager notificationManager = (NotificationManager) context2.getSystemService(NotificationManager.class);
                                if (!z) {
                                    notificationDelegate = notificationManager.getNotificationDelegate();
                                    if ("com.google.android.gms".equals(notificationDelegate)) {
                                        notificationManager.setNotificationDelegate(null);
                                    }
                                } else {
                                    notificationManager.setNotificationDelegate("com.google.android.gms");
                                }
                            } finally {
                                taskCompletionSource2.d(null);
                            }
                        }
                    }.run();
                    return;
                } else {
                    Tasks.e(null);
                    return;
                }
            }
            z = true;
            if (Build.VERSION.SDK_INT < 29) {
            }
        }
    }
}
