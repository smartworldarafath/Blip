package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzq extends GmsClientSupervisor {
    public final HashMap d = new HashMap();
    public final Context e;
    public volatile com.google.android.gms.internal.common.zzg f;
    public final ConnectionTracker g;
    public final long h;
    public final long i;

    /* JADX WARN: Type inference failed for: r2v2, types: [android.os.Handler, com.google.android.gms.internal.common.zzg] */
    public zzq(Context context, Looper looper) {
        zzp zzpVar = new zzp(this);
        this.e = context.getApplicationContext();
        ?? handler = new Handler(looper, zzpVar);
        Looper.getMainLooper();
        this.f = handler;
        this.g = ConnectionTracker.a();
        this.h = 5000L;
        this.i = 300000L;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final ConnectionResult a(zzn zznVar, zze zzeVar, String str) {
        ConnectionResult connectionResult;
        HashMap hashMap = this.d;
        synchronized (hashMap) {
            try {
                zzo zzoVar = (zzo) hashMap.get(zznVar);
                if (zzoVar == null) {
                    zzoVar = new zzo(this, zznVar);
                    zzoVar.j.put(zzeVar, zzeVar);
                    connectionResult = zzoVar.a(str, null);
                    hashMap.put(zznVar, zzoVar);
                } else {
                    this.f.removeMessages(0, zznVar);
                    if (!zzoVar.j.containsKey(zzeVar)) {
                        zzoVar.j.put(zzeVar, zzeVar);
                        int i = zzoVar.k;
                        if (i != 1) {
                            if (i == 2) {
                                connectionResult = zzoVar.a(str, null);
                            }
                        } else {
                            zzeVar.onServiceConnected(zzoVar.o, zzoVar.m);
                        }
                        connectionResult = null;
                    } else {
                        String zznVar2 = zznVar.toString();
                        StringBuilder sb = new StringBuilder(zznVar2.length() + 81);
                        sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                        sb.append(zznVar2);
                        throw new IllegalStateException(sb.toString());
                    }
                }
                if (zzoVar.l) {
                    return ConnectionResult.o;
                }
                if (connectionResult == null) {
                    connectionResult = new ConnectionResult(-1, null, null);
                }
                return connectionResult;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
