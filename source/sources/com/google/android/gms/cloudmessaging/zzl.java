package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayDeque;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class zzl implements Runnable {
    public final /* synthetic */ zzp j;

    public /* synthetic */ zzl(zzp zzpVar) {
        this.j = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        while (true) {
            final zzp zzpVar = this.j;
            synchronized (zzpVar) {
                try {
                    if (zzpVar.j == 2) {
                        ArrayDeque arrayDeque = zzpVar.m;
                        if (arrayDeque.isEmpty()) {
                            zzpVar.d();
                            return;
                        }
                        final zzs zzsVar = (zzs) arrayDeque.poll();
                        SparseArray sparseArray = zzpVar.n;
                        int i = zzsVar.a;
                        sparseArray.put(i, zzsVar);
                        zzpVar.o.b.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzn
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.cloudmessaging.zzt, java.lang.Exception] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzs zzsVar2 = zzsVar;
                                zzp zzpVar2 = zzp.this;
                                int i2 = zzsVar2.a;
                                synchronized (zzpVar2) {
                                    SparseArray sparseArray2 = zzpVar2.n;
                                    zzs zzsVar3 = (zzs) sparseArray2.get(i2);
                                    if (zzsVar3 != 0) {
                                        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 20);
                                        sb.append("Timing out request: ");
                                        sb.append(i2);
                                        Log.w("MessengerIpcClient", sb.toString());
                                        sparseArray2.remove(i2);
                                        zzsVar3.d(new Exception("Timed out waiting for response", null));
                                        zzpVar2.d();
                                    }
                                }
                            }
                        }, 30L, TimeUnit.SECONDS);
                        if (Log.isLoggable("MessengerIpcClient", 3)) {
                            Log.d("MessengerIpcClient", "Sending ".concat(String.valueOf(zzsVar)));
                        }
                        zzv zzvVar = zzpVar.o;
                        Messenger messenger = zzpVar.k;
                        int i2 = zzsVar.c;
                        Message obtain = Message.obtain();
                        obtain.what = i2;
                        obtain.arg1 = i;
                        obtain.replyTo = messenger;
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("oneWay", zzsVar.a());
                        bundle.putString("pkg", zzvVar.a.getPackageName());
                        bundle.putBundle("data", zzsVar.d);
                        obtain.setData(bundle);
                        try {
                            zzq zzqVar = zzpVar.l;
                            Messenger messenger2 = zzqVar.a;
                            if (messenger2 != null) {
                                messenger2.send(obtain);
                            } else {
                                zzd zzdVar = zzqVar.b;
                                if (zzdVar != null) {
                                    zzdVar.j.send(obtain);
                                } else {
                                    throw new IllegalStateException("Both messengers are null");
                                    break;
                                }
                            }
                        } catch (RemoteException e) {
                            zzpVar.b(e.getMessage());
                        }
                    } else {
                        return;
                    }
                } finally {
                }
            }
        }
    }
}
