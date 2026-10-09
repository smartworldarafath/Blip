package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TopicsSyncTask implements Runnable {
    public static final Object o = new Object();
    public static Boolean p;
    public static Boolean q;
    public final Context j;
    public final Metadata k;
    public final PowerManager.WakeLock l;
    public final TopicsSubscriber m;
    public final long n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ConnectivityChangeReceiver extends BroadcastReceiver {
        public TopicsSyncTask a;

        public ConnectivityChangeReceiver(TopicsSyncTask topicsSyncTask) {
            this.a = topicsSyncTask;
        }

        public final void a() {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            TopicsSyncTask.this.j.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public final synchronized void onReceive(Context context, Intent intent) {
            try {
                TopicsSyncTask topicsSyncTask = this.a;
                if (topicsSyncTask == null) {
                    return;
                }
                if (!topicsSyncTask.d()) {
                    return;
                }
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                TopicsSyncTask topicsSyncTask2 = this.a;
                topicsSyncTask2.m.e.schedule(topicsSyncTask2, 0L, TimeUnit.SECONDS);
                context.unregisterReceiver(this);
                this.a = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public TopicsSyncTask(TopicsSubscriber topicsSubscriber, Context context, Metadata metadata, long j) {
        this.m = topicsSubscriber;
        this.j = context;
        this.n = j;
        this.k = metadata;
        this.l = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    public static boolean a(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (o) {
            try {
                Boolean bool = q;
                if (bool == null) {
                    booleanValue = b(context, "android.permission.ACCESS_NETWORK_STATE", bool);
                } else {
                    booleanValue = bool.booleanValue();
                }
                Boolean valueOf = Boolean.valueOf(booleanValue);
                q = valueOf;
                booleanValue2 = valueOf.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue2;
    }

    public static boolean b(Context context, String str, Boolean bool) {
        boolean z;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context.checkCallingOrSelfPermission(str) == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: " + str + ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return z;
    }

    public static boolean c(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (o) {
            try {
                Boolean bool = p;
                if (bool == null) {
                    booleanValue = b(context, "android.permission.WAKE_LOCK", bool);
                } else {
                    booleanValue = bool.booleanValue();
                }
                Boolean valueOf = Boolean.valueOf(booleanValue);
                p = valueOf;
                booleanValue2 = valueOf.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue2;
    }

    public final synchronized boolean d() {
        NetworkInfo networkInfo;
        boolean z;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.j.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } else {
                networkInfo = null;
            }
            if (networkInfo != null) {
                if (networkInfo.isConnected()) {
                    z = true;
                }
            }
            z = false;
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        TopicsSubscriber topicsSubscriber = this.m;
        Context context = this.j;
        boolean c = c(context);
        PowerManager.WakeLock wakeLock = this.l;
        if (c) {
            wakeLock.acquire(180000L);
        }
        try {
            try {
                try {
                    topicsSubscriber.a(true);
                    if (!this.k.e()) {
                        topicsSubscriber.a(false);
                        if (c(context)) {
                            try {
                                wakeLock.release();
                                return;
                            } catch (RuntimeException unused) {
                                Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                                return;
                            }
                        }
                        return;
                    }
                    if (a(context) && !d()) {
                        new ConnectivityChangeReceiver(this).a();
                        if (c(context)) {
                            try {
                                wakeLock.release();
                                return;
                            } catch (RuntimeException unused2) {
                                Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                                return;
                            }
                        }
                        return;
                    }
                    if (topicsSubscriber.b()) {
                        topicsSubscriber.a(false);
                    } else {
                        topicsSubscriber.c(this.n);
                    }
                    if (c(context)) {
                        wakeLock.release();
                    }
                } catch (RuntimeException unused3) {
                    Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                }
            } catch (IOException e) {
                Log.e("FirebaseMessaging", "Failed to sync topics. Won't retry sync. " + e.getMessage());
                topicsSubscriber.a(false);
                if (c(context)) {
                    wakeLock.release();
                }
            }
        } catch (Throwable th) {
            if (c(context)) {
                try {
                    wakeLock.release();
                } catch (RuntimeException unused4) {
                    Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                }
            }
            throw th;
        }
    }
}
