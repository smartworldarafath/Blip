package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzo implements ServiceConnection, zzr {
    public final HashMap j = new HashMap();
    public int k = 2;
    public boolean l;
    public IBinder m;
    public final zzn n;
    public ComponentName o;
    public final /* synthetic */ zzq p;

    public zzo(zzq zzqVar, zzn zznVar) {
        this.p = zzqVar;
        this.n = zznVar;
    }

    public final ConnectionResult a(String str, Executor executor) {
        try {
            Intent a = zzah.a(this.p.e, this.n);
            this.k = 3;
            StrictMode.VmPolicy a2 = com.google.android.gms.common.util.zzd.a();
            try {
                zzq zzqVar = this.p;
                ConnectionTracker connectionTracker = zzqVar.g;
                Context context = zzqVar.e;
                zzn zznVar = this.n;
                boolean c = connectionTracker.c(context, str, a, this, 4225, executor);
                this.l = c;
                if (c) {
                    zzqVar.f.sendMessageDelayed(zzqVar.f.obtainMessage(1, zznVar), zzqVar.i);
                    ConnectionResult connectionResult = ConnectionResult.o;
                    StrictMode.setVmPolicy(a2);
                    return connectionResult;
                }
                this.k = 2;
                try {
                    zzqVar.g.b(zzqVar.e, this);
                } catch (IllegalArgumentException unused) {
                }
                ConnectionResult connectionResult2 = new ConnectionResult(16, null, null);
                StrictMode.setVmPolicy(a2);
                return connectionResult2;
            } catch (Throwable th) {
                StrictMode.setVmPolicy(a2);
                throw th;
            }
        } catch (zzaf e) {
            return e.j;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzq zzqVar = this.p;
        synchronized (zzqVar.d) {
            try {
                zzqVar.f.removeMessages(1, this.n);
                this.m = iBinder;
                this.o = componentName;
                Iterator it = this.j.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.k = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzq zzqVar = this.p;
        synchronized (zzqVar.d) {
            try {
                zzqVar.f.removeMessages(1, this.n);
                this.m = null;
                this.o = componentName;
                Iterator it = this.j.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.k = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
