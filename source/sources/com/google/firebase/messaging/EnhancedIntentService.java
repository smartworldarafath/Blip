package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.zzw;
import com.google.firebase.messaging.threads.PoolableExecutors;
import defpackage.n5;
import defpackage.s3;
import defpackage.z2;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UnwrappedWakefulBroadcastReceiver"})
/* loaded from: classes.dex */
public abstract class EnhancedIntentService extends Service {
    public static final /* synthetic */ int o = 0;
    public Binder k;
    public int m;
    public final ExecutorService j = PoolableExecutors.a.a(new NamedThreadFactory("Firebase-Messaging-Intent-Handle"));
    public final Object l = new Object();
    public int n = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.firebase.messaging.EnhancedIntentService$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 {
        public AnonymousClass1() {
        }
    }

    public final void a(Intent intent) {
        if (intent != null) {
            WakeLockHolder.b(intent);
        }
        synchronized (this.l) {
            try {
                int i = this.n - 1;
                this.n = i;
                if (i == 0) {
                    stopSelfResult(this.m);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void b(Intent intent);

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        try {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.k == null) {
                this.k = new WithinAppServiceBinder(new AnonymousClass1());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.k;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.j.shutdown();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.l) {
            this.m = i2;
            this.n++;
        }
        Intent intent2 = (Intent) ServiceStarter.a().d.poll();
        if (intent2 == null) {
            a(intent);
            return 2;
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.j.execute(new s3(this, intent2, taskCompletionSource, 4));
        zzw zzwVar = taskCompletionSource.a;
        if (zzwVar.j()) {
            a(intent);
            return 2;
        }
        zzwVar.b(new z2(2), new n5(4, this, intent));
        return 3;
    }
}
