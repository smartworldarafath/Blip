package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SyncTask implements Runnable {
    public final long j;
    public final PowerManager.WakeLock k;
    public final FirebaseMessaging l;
    public final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("firebase-iid-executor"));

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ConnectivityChangeReceiver extends BroadcastReceiver {
        public SyncTask a;
        public Context b;

        public final void a() {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            SyncTask syncTask = this.a;
            if (syncTask != null) {
                Context context = syncTask.l.b;
                this.b = context;
                context.registerReceiver(this, intentFilter);
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            SyncTask syncTask = this.a;
            if (syncTask == null || !syncTask.a()) {
                return;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
            }
            SyncTask syncTask2 = this.a;
            syncTask2.l.getClass();
            FirebaseMessaging.c(0L, syncTask2);
            Context context2 = this.b;
            if (context2 != null) {
                context2.unregisterReceiver(this);
            }
            this.a = null;
        }
    }

    public SyncTask(FirebaseMessaging firebaseMessaging, long j) {
        this.l = firebaseMessaging;
        this.j = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) firebaseMessaging.b.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.k = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    public final boolean a() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.l.b.getSystemService("connectivity");
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    public final boolean b() {
        try {
            if (this.l.a() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Token successfully retrieved");
                return true;
            }
            return true;
        } catch (IOException e) {
            String message = e.getMessage();
            if (!"SERVICE_NOT_AVAILABLE".equals(message) && !"INTERNAL_SERVER_ERROR".equals(message) && !"InternalServerError".equals(message)) {
                if (e.getMessage() == null) {
                    Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                    return false;
                }
                throw e;
            }
            Log.w("FirebaseMessaging", "Token retrieval failed: " + e.getMessage() + ". Will retry token retrieval");
            return false;
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r4v10, types: [com.google.firebase.messaging.SyncTask$ConnectivityChangeReceiver, android.content.BroadcastReceiver] */
    @Override // java.lang.Runnable
    public final void run() {
        PowerManager.WakeLock wakeLock = this.k;
        ServiceStarter a = ServiceStarter.a();
        FirebaseMessaging firebaseMessaging = this.l;
        if (a.c(firebaseMessaging.b)) {
            wakeLock.acquire();
        }
        try {
            try {
                synchronized (firebaseMessaging) {
                    firebaseMessaging.k = true;
                }
                if (!firebaseMessaging.i.e()) {
                    synchronized (firebaseMessaging) {
                        firebaseMessaging.k = false;
                    }
                    if (ServiceStarter.a().c(firebaseMessaging.b)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (ServiceStarter.a().b(firebaseMessaging.b) && !a()) {
                    ?? broadcastReceiver = new BroadcastReceiver();
                    broadcastReceiver.a = this;
                    broadcastReceiver.a();
                    if (ServiceStarter.a().c(firebaseMessaging.b)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (b()) {
                    synchronized (firebaseMessaging) {
                        firebaseMessaging.k = false;
                    }
                } else {
                    firebaseMessaging.i(this.j);
                }
                if (ServiceStarter.a().c(firebaseMessaging.b)) {
                    wakeLock.release();
                }
            } catch (IOException e) {
                Log.e("FirebaseMessaging", "Topic sync or token retrieval failed on hard failure exceptions: " + e.getMessage() + ". Won't retry the operation.");
                synchronized (firebaseMessaging) {
                    firebaseMessaging.k = false;
                    if (ServiceStarter.a().c(firebaseMessaging.b)) {
                        wakeLock.release();
                    }
                }
            }
        } catch (Throwable th) {
            if (ServiceStarter.a().c(firebaseMessaging.b)) {
                wakeLock.release();
            }
            throw th;
        }
    }
}
