package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzv {
    public static zzv e;
    public final Context a;
    public final ScheduledExecutorService b;
    public zzp c = new zzp(this);
    public int d = 1;

    public zzv(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.b = scheduledExecutorService;
        this.a = context.getApplicationContext();
    }

    public static synchronized zzv a(Context context) {
        zzv zzvVar;
        synchronized (zzv.class) {
            try {
                if (e == null) {
                    e = new zzv(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
                }
                zzvVar = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzvVar;
    }

    public final Task b(int i, Bundle bundle) {
        int i2;
        synchronized (this) {
            i2 = this.d;
            this.d = i2 + 1;
        }
        return c(new zzs(i2, i, bundle));
    }

    public final synchronized Task c(zzs zzsVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Queueing ".concat(zzsVar.toString()));
            }
            if (!this.c.a(zzsVar)) {
                zzp zzpVar = new zzp(this);
                this.c = zzpVar;
                zzpVar.a(zzsVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzsVar.b.a;
    }
}
