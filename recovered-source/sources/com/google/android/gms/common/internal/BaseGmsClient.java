package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.AttributionSource;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import defpackage.fe;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseGmsClient<T extends IInterface> {
    public static final Feature[] x = new Feature[0];
    public volatile String a;
    public zzs b;
    public final Context c;
    public final GmsClientSupervisor d;
    public final Handler e;
    public final Object f;
    public final Object g;
    public IGmsServiceBroker h;
    public ConnectionProgressReportCallbacks i;
    public IInterface j;
    public final ArrayList k;
    public zze l;
    public int m;
    public final BaseConnectionCallbacks n;
    public final BaseOnConnectionFailedListener o;
    public final int p;
    public final String q;
    public volatile String r;
    public volatile AttributionSourceWrapper s;
    public ConnectionResult t;
    public boolean u;
    public volatile zzj v;
    public final AtomicInteger w;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BaseConnectionCallbacks {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BaseOnConnectionFailedListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ConnectionProgressReportCallbacks {
        void a(ConnectionResult connectionResult);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        public final /* synthetic */ BaseGmsClient a;

        public LegacyClientCallbackAdapter(BaseGmsClient baseGmsClient) {
            java.util.Objects.requireNonNull(baseGmsClient);
            this.a = baseGmsClient;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void a(ConnectionResult connectionResult) {
            boolean z;
            if (connectionResult.k == 0) {
                z = true;
            } else {
                z = false;
            }
            BaseGmsClient baseGmsClient = this.a;
            if (z) {
                baseGmsClient.h(null, ((GmsClient) baseGmsClient).y);
                return;
            }
            BaseOnConnectionFailedListener baseOnConnectionFailedListener = baseGmsClient.o;
            if (baseOnConnectionFailedListener != null) {
                ((zal) baseOnConnectionFailedListener).a.g(connectionResult);
            }
        }
    }

    public BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        Object obj = GoogleApiAvailability.c;
        this.a = null;
        this.f = new Object();
        this.g = new Object();
        this.k = new ArrayList();
        this.m = 1;
        this.t = null;
        this.u = false;
        this.v = null;
        this.w = new AtomicInteger(0);
        Preconditions.f(context, "Context must not be null");
        this.c = context;
        Preconditions.f(looper, "Looper must not be null");
        Preconditions.f(gmsClientSupervisor, "Supervisor must not be null");
        this.d = gmsClientSupervisor;
        this.e = new zzb(this, looper);
        this.p = i;
        this.n = baseConnectionCallbacks;
        this.o = baseOnConnectionFailedListener;
        this.q = str;
    }

    public abstract int a();

    public boolean b() {
        return false;
    }

    public abstract IInterface c(IBinder iBinder);

    public final void d() {
        this.w.incrementAndGet();
        ArrayList arrayList = this.k;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    zzc zzcVar = (zzc) arrayList.get(i);
                    synchronized (zzcVar) {
                        zzcVar.a = null;
                    }
                }
                arrayList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.g) {
            this.h = null;
        }
        p(1, null);
    }

    public final void e(String str) {
        this.a = str;
        d();
    }

    public Feature[] f() {
        return x;
    }

    public Bundle g() {
        return new Bundle();
    }

    public final void h(IAccountAccessor iAccountAccessor, Set set) {
        String attributionTag;
        String attributionTag2;
        Bundle g = g();
        if (Build.VERSION.SDK_INT < 31) {
            attributionTag2 = this.r;
        } else if (this.s == null) {
            attributionTag2 = this.r;
        } else {
            AttributionSource attributionSource = this.s.a;
            if (attributionSource != null) {
                attributionTag = attributionSource.getAttributionTag();
                if (attributionTag != null) {
                    attributionTag2 = attributionSource.getAttributionTag();
                } else {
                    attributionTag2 = this.r;
                }
            } else {
                attributionTag2 = this.r;
            }
        }
        String str = attributionTag2;
        int i = this.p;
        int i2 = GoogleApiAvailabilityLight.a;
        Scope[] scopeArr = GetServiceRequest.x;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.y;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i, i2, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.m = this.c.getPackageName();
        getServiceRequest.p = g;
        if (set != null) {
            getServiceRequest.o = (Scope[]) set.toArray(new Scope[0]);
        }
        if (b()) {
            getServiceRequest.q = new Account("<<default account>>", "com.google");
            if (iAccountAccessor != null) {
                getServiceRequest.n = iAccountAccessor.asBinder();
            }
        }
        getServiceRequest.r = x;
        getServiceRequest.s = f();
        if (this instanceof com.google.android.gms.internal.cloudmessaging.zzd) {
            getServiceRequest.v = true;
        }
        try {
            synchronized (this.g) {
                try {
                    IGmsServiceBroker iGmsServiceBroker = this.h;
                    if (iGmsServiceBroker != null) {
                        ((zzaa) iGmsServiceBroker).c(new zzd(this, this.w.get()), getServiceRequest);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                } finally {
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i3 = this.w.get();
            Handler handler = this.e;
            handler.sendMessage(handler.obtainMessage(6, i3, 3));
        } catch (RemoteException e2) {
            e = e2;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i4 = this.w.get();
            zzf zzfVar = new zzf(this, 8, null, null);
            Handler handler2 = this.e;
            handler2.sendMessage(handler2.obtainMessage(1, i4, -1, zzfVar));
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            int i42 = this.w.get();
            zzf zzfVar2 = new zzf(this, 8, null, null);
            Handler handler22 = this.e;
            handler22.sendMessage(handler22.obtainMessage(1, i42, -1, zzfVar2));
        }
    }

    public final IInterface i() {
        IInterface iInterface;
        synchronized (this.f) {
            try {
                if (this.m != 5) {
                    if (m()) {
                        iInterface = this.j;
                        Preconditions.f(iInterface, "Client is connected but service is null");
                    } else {
                        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                    }
                } else {
                    throw new DeadObjectException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public abstract String j();

    public abstract String k();

    public boolean l() {
        if (a() >= 211700000) {
            return true;
        }
        return false;
    }

    public final boolean m() {
        boolean z;
        synchronized (this.f) {
            if (this.m == 4) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final boolean n() {
        boolean z;
        synchronized (this.f) {
            int i = this.m;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    public final /* synthetic */ boolean o(int i, int i2, IInterface iInterface) {
        synchronized (this.f) {
            try {
                if (this.m != i) {
                    return false;
                }
                p(i2, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(int i, IInterface iInterface) {
        boolean z;
        boolean z2;
        zzs zzsVar;
        boolean z3 = false;
        if (i != 4) {
            z = false;
        } else {
            z = true;
        }
        if (iInterface == null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z == z2) {
            synchronized (this.f) {
                try {
                    this.m = i;
                    this.j = iInterface;
                    Bundle bundle = null;
                    if (i != 1) {
                        if (i != 2 && i != 3) {
                            if (i == 4) {
                                Preconditions.e(iInterface);
                                System.currentTimeMillis();
                            }
                        } else {
                            zze zzeVar = this.l;
                            if (zzeVar != null && (zzsVar = this.b) != null) {
                                String str = zzsVar.a;
                                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 70 + "com.google.android.gms".length());
                                sb.append("Calling connect() while still connected, missing disconnect() for ");
                                sb.append(str);
                                sb.append(" on com.google.android.gms");
                                Log.e("GmsClient", sb.toString());
                                GmsClientSupervisor gmsClientSupervisor = this.d;
                                String str2 = this.b.a;
                                Preconditions.e(str2);
                                this.b.getClass();
                                if (this.q == null) {
                                    this.c.getClass();
                                }
                                gmsClientSupervisor.b(str2, zzeVar, this.b.b);
                                this.w.incrementAndGet();
                            }
                            zze zzeVar2 = new zze(this, this.w.get());
                            this.l = zzeVar2;
                            String k = k();
                            boolean l = l();
                            this.b = new zzs(k, l);
                            if (l && a() < 17895000) {
                                throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.b.a)));
                            }
                            GmsClientSupervisor gmsClientSupervisor2 = this.d;
                            String str3 = this.b.a;
                            Preconditions.e(str3);
                            this.b.getClass();
                            String str4 = this.q;
                            if (str4 == null) {
                                str4 = this.c.getClass().getName();
                            }
                            ConnectionResult a = gmsClientSupervisor2.a(new zzn(str3, this.b.b), zzeVar2, str4);
                            if (a.k == 0) {
                                z3 = true;
                            }
                            if (!z3) {
                                String str5 = this.b.a;
                                StringBuilder sb2 = new StringBuilder(String.valueOf(str5).length() + 34 + "com.google.android.gms".length());
                                sb2.append("unable to connect to service: ");
                                sb2.append(str5);
                                sb2.append(" on com.google.android.gms");
                                Log.w("GmsClient", sb2.toString());
                                int i2 = a.k;
                                if (i2 == -1) {
                                    i2 = 16;
                                }
                                if (a.l != null) {
                                    bundle = new Bundle();
                                    bundle.putParcelable("pendingIntent", a.l);
                                }
                                int i3 = this.w.get();
                                zzg zzgVar = new zzg(this, i2, bundle);
                                Handler handler = this.e;
                                handler.sendMessage(handler.obtainMessage(7, i3, -1, zzgVar));
                            }
                        }
                    } else {
                        zze zzeVar3 = this.l;
                        if (zzeVar3 != null) {
                            GmsClientSupervisor gmsClientSupervisor3 = this.d;
                            String str6 = this.b.a;
                            Preconditions.e(str6);
                            this.b.getClass();
                            if (this.q == null) {
                                this.c.getClass();
                            }
                            gmsClientSupervisor3.b(str6, zzeVar3, this.b.b);
                            this.l = null;
                        }
                    }
                } finally {
                }
            }
            return;
        }
        fe.h();
    }
}
