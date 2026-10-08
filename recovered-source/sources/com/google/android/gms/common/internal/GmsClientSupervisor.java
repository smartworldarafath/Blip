package com.google.android.gms.common.internal;

import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GmsClientSupervisor {
    public static final Object a = new Object();
    public static zzq b;
    public static HandlerThread c;

    public abstract ConnectionResult a(zzn zznVar, zze zzeVar, String str);

    public final void b(String str, ServiceConnection serviceConnection, boolean z) {
        zzn zznVar = new zzn(str, z);
        zzq zzqVar = (zzq) this;
        Preconditions.f(serviceConnection, "ServiceConnection must not be null");
        HashMap hashMap = zzqVar.d;
        synchronized (hashMap) {
            try {
                zzo zzoVar = (zzo) hashMap.get(zznVar);
                if (zzoVar != null) {
                    if (zzoVar.j.containsKey(serviceConnection)) {
                        zzoVar.j.remove(serviceConnection);
                        if (zzoVar.j.isEmpty()) {
                            zzqVar.f.sendMessageDelayed(zzqVar.f.obtainMessage(0, zznVar), zzqVar.h);
                        }
                    } else {
                        String zznVar2 = zznVar.toString();
                        StringBuilder sb = new StringBuilder(zznVar2.length() + 76);
                        sb.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                        sb.append(zznVar2);
                        throw new IllegalStateException(sb.toString());
                    }
                } else {
                    String zznVar3 = zznVar.toString();
                    StringBuilder sb2 = new StringBuilder(zznVar3.length() + 50);
                    sb2.append("Nonexistent connection status for service config: ");
                    sb2.append(zznVar3);
                    throw new IllegalStateException(sb2.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
