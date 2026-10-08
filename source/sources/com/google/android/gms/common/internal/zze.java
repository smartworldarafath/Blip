package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zze implements ServiceConnection {
    public final int j;
    public final /* synthetic */ BaseGmsClient k;

    public zze(BaseGmsClient baseGmsClient, int i) {
        this.k = baseGmsClient;
        this.j = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        IGmsServiceBroker zzaaVar;
        int i;
        int i2;
        BaseGmsClient baseGmsClient = this.k;
        if (iBinder == null) {
            synchronized (baseGmsClient.f) {
                i = baseGmsClient.m;
            }
            if (i == 3) {
                baseGmsClient.u = true;
                i2 = 5;
            } else {
                i2 = 4;
            }
            Handler handler = baseGmsClient.e;
            handler.sendMessage(handler.obtainMessage(i2, baseGmsClient.w.get(), 16));
            return;
        }
        synchronized (baseGmsClient.g) {
            try {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                if (queryLocalInterface != null && (queryLocalInterface instanceof IGmsServiceBroker)) {
                    zzaaVar = (IGmsServiceBroker) queryLocalInterface;
                } else {
                    zzaaVar = new zzaa(iBinder);
                }
                baseGmsClient.h = zzaaVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        BaseGmsClient baseGmsClient2 = this.k;
        int i3 = this.j;
        baseGmsClient2.getClass();
        zzg zzgVar = new zzg(baseGmsClient2, 0, null);
        Handler handler2 = baseGmsClient2.e;
        handler2.sendMessage(handler2.obtainMessage(7, i3, -1, zzgVar));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        BaseGmsClient baseGmsClient = this.k;
        synchronized (baseGmsClient.g) {
            baseGmsClient.h = null;
        }
        BaseGmsClient baseGmsClient2 = this.k;
        int i = this.j;
        Handler handler = baseGmsClient2.e;
        handler.sendMessage(handler.obtainMessage(6, i, 1));
    }
}
