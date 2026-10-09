package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzp implements Handler.Callback {
    public final /* synthetic */ zzq j;

    public /* synthetic */ zzp(zzq zzqVar) {
        this.j = zzqVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                return false;
            }
            zzq zzqVar = this.j;
            synchronized (zzqVar.d) {
                try {
                    zzn zznVar = (zzn) message.obj;
                    zzo zzoVar = (zzo) zzqVar.d.get(zznVar);
                    if (zzoVar != null && zzoVar.k == 3) {
                        String valueOf = String.valueOf(zznVar);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                        sb.append("Timeout waiting for ServiceConnection callback ");
                        sb.append(valueOf);
                        Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                        ComponentName componentName = zzoVar.o;
                        if (componentName == null) {
                            zznVar.getClass();
                            componentName = null;
                        }
                        if (componentName == null) {
                            String str = zznVar.b;
                            Preconditions.e(str);
                            componentName = new ComponentName(str, "unknown");
                        }
                        zzoVar.onServiceDisconnected(componentName);
                    }
                } finally {
                }
            }
            return true;
        }
        zzq zzqVar2 = this.j;
        synchronized (zzqVar2.d) {
            try {
                zzn zznVar2 = (zzn) message.obj;
                zzo zzoVar2 = (zzo) zzqVar2.d.get(zznVar2);
                if (zzoVar2 != null && zzoVar2.j.isEmpty()) {
                    if (zzoVar2.l) {
                        zzn zznVar3 = zzoVar2.n;
                        zzq zzqVar3 = zzoVar2.p;
                        zzqVar3.f.removeMessages(1, zznVar3);
                        zzqVar3.g.b(zzqVar3.e, zzoVar2);
                        zzoVar2.l = false;
                        zzoVar2.k = 2;
                    }
                    zzqVar2.d.remove(zznVar2);
                }
            } finally {
            }
        }
        return true;
    }
}
