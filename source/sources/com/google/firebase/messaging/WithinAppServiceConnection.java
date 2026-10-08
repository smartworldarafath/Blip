package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.p;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class WithinAppServiceConnection implements ServiceConnection {
    public final Context j;
    public final Intent k;
    public final ScheduledThreadPoolExecutor l;
    public final ArrayDeque m;
    public WithinAppServiceBinder n;
    public boolean o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BindRequest {
        public final Intent a;
        public final TaskCompletionSource b = new TaskCompletionSource();

        public BindRequest(Intent intent) {
            this.a = intent;
        }
    }

    public WithinAppServiceConnection(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.m = new ArrayDeque();
        this.o = false;
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext;
        this.k = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.l = scheduledThreadPoolExecutor;
    }

    public final synchronized void a() {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.m.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                WithinAppServiceBinder withinAppServiceBinder = this.n;
                if (withinAppServiceBinder != null && withinAppServiceBinder.isBinderAlive()) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                    }
                    this.n.a((BindRequest) this.m.poll());
                } else {
                    c();
                    return;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Task b(Intent intent) {
        BindRequest bindRequest;
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
            }
            bindRequest = new BindRequest(intent);
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.l;
            bindRequest.b.a.b(scheduledThreadPoolExecutor, new p(22, scheduledThreadPoolExecutor.schedule(new j(1, bindRequest), 20L, TimeUnit.SECONDS)));
            this.m.add(bindRequest);
            a();
        } catch (Throwable th) {
            throw th;
        }
        return bindRequest.b.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x005c A[LOOP:0: B:18:0x0054->B:20:0x005c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        WithinAppServiceConnection withinAppServiceConnection;
        ArrayDeque arrayDeque;
        ConnectionTracker a;
        Context context;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb = new StringBuilder("binder is dead. start connection? ");
            sb.append(!this.o);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (!this.o) {
            this.o = true;
            try {
                a = ConnectionTracker.a();
                context = this.j;
                withinAppServiceConnection = this;
                try {
                } catch (SecurityException e) {
                    e = e;
                    Log.e("FirebaseMessaging", "Exception while binding the service", e);
                    withinAppServiceConnection.o = false;
                    while (true) {
                        arrayDeque = withinAppServiceConnection.m;
                        if (arrayDeque.isEmpty()) {
                        }
                        ((BindRequest) arrayDeque.poll()).b.d(null);
                    }
                }
            } catch (SecurityException e2) {
                e = e2;
                withinAppServiceConnection = this;
            }
            if (!a.c(context, context.getClass().getName(), this.k, withinAppServiceConnection, 65, null)) {
                Log.e("FirebaseMessaging", "binding to the service failed");
                withinAppServiceConnection.o = false;
                while (true) {
                    arrayDeque = withinAppServiceConnection.m;
                    if (arrayDeque.isEmpty()) {
                        ((BindRequest) arrayDeque.poll()).b.d(null);
                    } else {
                        return;
                    }
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
            }
            this.o = false;
            if (!(iBinder instanceof WithinAppServiceBinder)) {
                Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
                ArrayDeque arrayDeque = this.m;
                while (!arrayDeque.isEmpty()) {
                    ((BindRequest) arrayDeque.poll()).b.d(null);
                }
                return;
            }
            this.n = (WithinAppServiceBinder) iBinder;
            a();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        a();
    }
}
