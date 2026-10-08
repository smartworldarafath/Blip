package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzb extends com.google.android.gms.internal.common.zzg {
    public final /* synthetic */ BaseGmsClient a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.a = baseGmsClient;
        Looper.getMainLooper();
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Boolean bool;
        PendingIntent pendingIntent;
        PendingIntent pendingIntent2;
        zzc zzcVar;
        BaseGmsClient baseGmsClient = this.a;
        int i = baseGmsClient.w.get();
        int i2 = message.arg1;
        int i3 = message.what;
        if (i != i2) {
            if ((i3 == 2 || i3 == 1 || i3 == 7) && (zzcVar = (zzc) message.obj) != null) {
                synchronized (zzcVar) {
                    zzcVar.a = null;
                }
                BaseGmsClient baseGmsClient2 = zzcVar.c;
                synchronized (baseGmsClient2.k) {
                    baseGmsClient2.k.remove(zzcVar);
                }
                return;
            }
            return;
        }
        if ((i3 != 1 && i3 != 7 && i3 != 4 && i3 != 5) || baseGmsClient.n()) {
            int i4 = message.what;
            if (i4 == 4) {
                baseGmsClient.t = new ConnectionResult(message.arg2, null, null);
                if (!baseGmsClient.u && !TextUtils.isEmpty(baseGmsClient.j()) && !TextUtils.isEmpty(null)) {
                    try {
                        Class.forName(baseGmsClient.j());
                        if (!baseGmsClient.u) {
                            baseGmsClient.p(3, null);
                            return;
                        }
                    } catch (ClassNotFoundException unused) {
                    }
                }
                ConnectionResult connectionResult = baseGmsClient.t;
                if (connectionResult == null) {
                    connectionResult = new ConnectionResult(8, null, null);
                }
                baseGmsClient.i.a(connectionResult);
                System.currentTimeMillis();
                return;
            }
            if (i4 == 5) {
                ConnectionResult connectionResult2 = baseGmsClient.t;
                if (connectionResult2 == null) {
                    connectionResult2 = new ConnectionResult(8, null, null);
                }
                baseGmsClient.i.a(connectionResult2);
                System.currentTimeMillis();
                return;
            }
            if (i4 == 3) {
                Object obj = message.obj;
                if (obj instanceof PendingIntent) {
                    pendingIntent2 = (PendingIntent) obj;
                } else {
                    pendingIntent2 = null;
                }
                baseGmsClient.i.a(new ConnectionResult(message.arg2, pendingIntent2, null));
                System.currentTimeMillis();
                return;
            }
            if (i4 == 6) {
                baseGmsClient.p(5, null);
                BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks = baseGmsClient.n;
                if (baseConnectionCallbacks != null) {
                    ((zak) baseConnectionCallbacks).a.c(message.arg2);
                }
                System.currentTimeMillis();
                baseGmsClient.o(5, 1, null);
                return;
            }
            if (i4 == 2 && !baseGmsClient.m()) {
                zzc zzcVar2 = (zzc) message.obj;
                if (zzcVar2 != null) {
                    synchronized (zzcVar2) {
                        zzcVar2.a = null;
                    }
                    BaseGmsClient baseGmsClient3 = zzcVar2.c;
                    synchronized (baseGmsClient3.k) {
                        baseGmsClient3.k.remove(zzcVar2);
                    }
                    return;
                }
                return;
            }
            int i5 = message.what;
            if (i5 != 2 && i5 != 1 && i5 != 7) {
                StringBuilder sb = new StringBuilder(String.valueOf(i5).length() + 34);
                sb.append("Don't know how to handle message: ");
                sb.append(i5);
                Log.wtf("GmsClient", sb.toString(), new Exception());
                return;
            }
            zzc zzcVar3 = (zzc) message.obj;
            synchronized (zzcVar3) {
                try {
                    bool = zzcVar3.a;
                    if (zzcVar3.b) {
                        String obj2 = zzcVar3.toString();
                        StringBuilder sb2 = new StringBuilder(obj2.length() + 47);
                        sb2.append("Callback proxy ");
                        sb2.append(obj2);
                        sb2.append(" being reused. This is not safe.");
                        Log.w("GmsClient", sb2.toString());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (bool != null) {
                zza zzaVar = (zza) zzcVar3;
                BaseGmsClient baseGmsClient4 = zzaVar.f;
                int i6 = zzaVar.d;
                if (i6 == 0) {
                    if (!zzaVar.a()) {
                        baseGmsClient4.p(1, null);
                        zzaVar.b(new ConnectionResult(8, null, null));
                    }
                } else {
                    baseGmsClient4.p(1, null);
                    Bundle bundle = zzaVar.e;
                    if (bundle != null) {
                        pendingIntent = (PendingIntent) bundle.getParcelable("pendingIntent");
                    } else {
                        pendingIntent = null;
                    }
                    zzaVar.b(new ConnectionResult(i6, pendingIntent, null));
                }
            }
            synchronized (zzcVar3) {
                zzcVar3.b = true;
            }
            synchronized (zzcVar3) {
                zzcVar3.a = null;
            }
            BaseGmsClient baseGmsClient5 = zzcVar3.c;
            synchronized (baseGmsClient5.k) {
                baseGmsClient5.k.remove(zzcVar3);
            }
            return;
        }
        zzc zzcVar4 = (zzc) message.obj;
        if (zzcVar4 != null) {
            synchronized (zzcVar4) {
                zzcVar4.a = null;
            }
            BaseGmsClient baseGmsClient6 = zzcVar4.c;
            synchronized (baseGmsClient6.k) {
                baseGmsClient6.k.remove(zzcVar4);
            }
        }
    }
}
