package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzp implements ServiceConnection {
    public int j = 0;
    public final Messenger k;
    public zzq l;
    public final ArrayDeque m;
    public final SparseArray n;
    public final /* synthetic */ zzv o;

    public zzp(zzv zzvVar) {
        this.o = zzvVar;
        Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.cloudmessaging.zzo
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v4, types: [com.google.android.gms.cloudmessaging.zzt, java.lang.Exception] */
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i = message.arg1;
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 30);
                    sb.append("Received response to request: ");
                    sb.append(i);
                    Log.d("MessengerIpcClient", sb.toString());
                }
                zzp zzpVar = zzp.this;
                synchronized (zzpVar) {
                    try {
                        SparseArray sparseArray = zzpVar.n;
                        zzs zzsVar = (zzs) sparseArray.get(i);
                        if (zzsVar == 0) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 39);
                            sb2.append("Received response for unknown request: ");
                            sb2.append(i);
                            Log.w("MessengerIpcClient", sb2.toString());
                            return true;
                        }
                        sparseArray.remove(i);
                        zzpVar.d();
                        Bundle data = message.getData();
                        if (data.getBoolean("unsupported", false)) {
                            zzsVar.d(new Exception("Not supported by GmsCore", null));
                            return true;
                        }
                        zzsVar.b(data);
                        return true;
                    } finally {
                    }
                }
            }
        });
        Looper.getMainLooper();
        this.k = new Messenger(handler);
        this.m = new ArrayDeque();
        this.n = new SparseArray();
    }

    public final synchronized boolean a(zzs zzsVar) {
        final zzp zzpVar;
        Throwable th;
        int i;
        ConnectionTracker a;
        zzv zzvVar;
        Context context;
        try {
            try {
                i = this.j;
                try {
                } catch (Throwable th2) {
                    th = th2;
                    zzpVar = this;
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            zzpVar = this;
            th = th;
            throw th;
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                this.m.add(zzsVar);
                this.o.b.execute(new zzl(this));
                return true;
            }
            this.m.add(zzsVar);
            return true;
        }
        this.m.add(zzsVar);
        if (this.j == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Starting bind to GmsCore");
            }
            this.j = 1;
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            try {
                a = ConnectionTracker.a();
                zzvVar = this.o;
                context = zzvVar.a;
            } catch (SecurityException e) {
                e = e;
                zzpVar = this;
            }
            try {
                try {
                    zzpVar = this;
                    try {
                        try {
                            if (!a.c(context, context.getClass().getName(), intent, zzpVar, 1, null)) {
                                zzpVar.b("Unable to bind to service");
                            } else {
                                zzvVar.b.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzj
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        zzp zzpVar2 = zzp.this;
                                        synchronized (zzpVar2) {
                                            if (zzpVar2.j == 1) {
                                                zzpVar2.b("Timed out while binding");
                                            }
                                        }
                                    }
                                }, 30L, TimeUnit.SECONDS);
                            }
                        } catch (SecurityException e2) {
                            e = e2;
                            zzpVar.c("Unable to bind to service", e);
                            return true;
                        }
                        return true;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    zzpVar = this;
                }
            } catch (Throwable th7) {
                th = th7;
                zzpVar = this;
            }
        } else {
            zzpVar = this;
            try {
                try {
                    throw new IllegalStateException();
                } catch (Throwable th8) {
                    th = th8;
                }
            } catch (Throwable th9) {
                th = th9;
            }
        }
        th = th;
        throw th;
    }

    public final synchronized void b(String str) {
        c(str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.cloudmessaging.zzt, java.lang.Exception] */
    public final synchronized void c(String str, SecurityException securityException) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Disconnected: ".concat(String.valueOf(str)));
            }
            int i = this.j;
            if (i != 0) {
                if (i != 1 && i != 2) {
                    if (i != 3) {
                        return;
                    }
                    this.j = 4;
                    return;
                }
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.j = 4;
                ConnectionTracker.a().b(this.o.a, this);
                ?? exc = new Exception(str, securityException);
                ArrayDeque arrayDeque = this.m;
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    ((zzs) it.next()).d(exc);
                }
                arrayDeque.clear();
                int i2 = 0;
                while (true) {
                    SparseArray sparseArray = this.n;
                    if (i2 < sparseArray.size()) {
                        ((zzs) sparseArray.valueAt(i2)).d(exc);
                        i2++;
                    } else {
                        sparseArray.clear();
                        return;
                    }
                }
            } else {
                throw new IllegalStateException();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        try {
            if (this.j == 2 && this.m.isEmpty() && this.n.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.j = 3;
                ConnectionTracker.a().b(this.o.a, this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        this.o.b.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzk
            @Override // java.lang.Runnable
            public final void run() {
                IBinder iBinder2 = iBinder;
                zzp zzpVar = zzp.this;
                synchronized (zzpVar) {
                    if (iBinder2 == null) {
                        zzpVar.b("Null service connection");
                        return;
                    }
                    try {
                        zzpVar.l = new zzq(iBinder2);
                        zzpVar.j = 2;
                        zzpVar.o.b.execute(new zzl(zzpVar));
                    } catch (RemoteException e) {
                        zzpVar.b(e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        this.o.b.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzp.this.b("Service disconnected");
            }
        });
    }
}
