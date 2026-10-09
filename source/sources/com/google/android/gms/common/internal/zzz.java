package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.util.Log;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzz extends com.google.android.gms.internal.common.zzb implements IInterface {
    @Override // com.google.android.gms.internal.common.zzb
    public final boolean c(int i, Parcel parcel, Parcel parcel2) {
        RootTelemetryConfiguration rootTelemetryConfiguration;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                int readInt = parcel.readInt();
                IBinder readStrongBinder = parcel.readStrongBinder();
                zzj zzjVar = (zzj) com.google.android.gms.internal.common.zzc.a(parcel, zzj.CREATOR);
                com.google.android.gms.internal.common.zzc.b(parcel);
                zzd zzdVar = (zzd) this;
                BaseGmsClient baseGmsClient = zzdVar.d;
                Preconditions.f(baseGmsClient, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
                Preconditions.e(zzjVar);
                baseGmsClient.v = zzjVar;
                if (baseGmsClient instanceof com.google.android.gms.internal.cloudmessaging.zzd) {
                    ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.m;
                    RootTelemetryConfigManager a = RootTelemetryConfigManager.a();
                    if (connectionTelemetryConfiguration == null) {
                        rootTelemetryConfiguration = null;
                    } else {
                        rootTelemetryConfiguration = connectionTelemetryConfiguration.j;
                    }
                    synchronized (a) {
                        if (rootTelemetryConfiguration == null) {
                            rootTelemetryConfiguration = RootTelemetryConfigManager.c;
                        } else {
                            RootTelemetryConfiguration rootTelemetryConfiguration2 = a.a;
                            if (rootTelemetryConfiguration2 != null) {
                                if (rootTelemetryConfiguration2.j < rootTelemetryConfiguration.j) {
                                }
                            }
                        }
                        a.a = rootTelemetryConfiguration;
                    }
                }
                Bundle bundle = zzjVar.j;
                Preconditions.f(zzdVar.d, "onPostInitComplete can be called only once per call to getRemoteService");
                BaseGmsClient baseGmsClient2 = zzdVar.d;
                int i2 = zzdVar.e;
                baseGmsClient2.getClass();
                zzf zzfVar = new zzf(baseGmsClient2, readInt, readStrongBinder, bundle);
                Handler handler = baseGmsClient2.e;
                handler.sendMessage(handler.obtainMessage(1, i2, -1, zzfVar));
                zzdVar.d = null;
            } else {
                parcel.readInt();
                com.google.android.gms.internal.common.zzc.b(parcel);
                Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
            }
        } else {
            int readInt2 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            Bundle bundle2 = (Bundle) com.google.android.gms.internal.common.zzc.a(parcel, Bundle.CREATOR);
            com.google.android.gms.internal.common.zzc.b(parcel);
            zzd zzdVar2 = (zzd) this;
            Preconditions.f(zzdVar2.d, "onPostInitComplete can be called only once per call to getRemoteService");
            BaseGmsClient baseGmsClient3 = zzdVar2.d;
            int i3 = zzdVar2.e;
            baseGmsClient3.getClass();
            zzf zzfVar2 = new zzf(baseGmsClient3, readInt2, readStrongBinder2, bundle2);
            Handler handler2 = baseGmsClient3.e;
            handler2.sendMessage(handler2.obtainMessage(1, i3, -1, zzfVar2));
            zzdVar2.d = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
