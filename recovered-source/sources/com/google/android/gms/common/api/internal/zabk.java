package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.zau;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import com.google.android.gms.signin.internal.SignInClientImpl;
import com.google.android.gms.signin.zae;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zabk implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final Api.Client e;
    public final ApiKey f;
    public final zaaa g;
    public final int j;
    public final zacm k;
    public boolean l;
    public final /* synthetic */ GoogleApiManager p;
    public final LinkedList d = new LinkedList();
    public final HashSet h = new HashSet();
    public final HashMap i = new HashMap();
    public final ArrayList m = new ArrayList();
    public ConnectionResult n = null;
    public int o = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public zabk(GoogleApiManager googleApiManager, GoogleApi googleApi) {
        this.p = googleApiManager;
        Looper looper = googleApiManager.v.getLooper();
        ClientSettings.Builder a = googleApi.a();
        ClientSettings clientSettings = new ClientSettings(a.a, a.b, a.c);
        Api.AbstractClientBuilder abstractClientBuilder = googleApi.d.a;
        Preconditions.e(abstractClientBuilder);
        Api.Client a2 = abstractClientBuilder.a(googleApi.a, looper, clientSettings, googleApi.e, this, this);
        AttributionSourceWrapper attributionSourceWrapper = googleApi.c;
        if (attributionSourceWrapper != null && (a2 instanceof BaseGmsClient)) {
            ((BaseGmsClient) a2).s = attributionSourceWrapper;
        } else {
            String str = googleApi.b;
            if (str != null && (a2 instanceof BaseGmsClient)) {
                ((BaseGmsClient) a2).r = str;
            }
        }
        this.e = a2;
        this.f = googleApi.f;
        this.g = new zaaa();
        this.j = googleApi.g;
        if (a2.b()) {
            Context context = googleApiManager.n;
            com.google.android.gms.internal.base.zao zaoVar = googleApiManager.v;
            ClientSettings.Builder a3 = googleApi.a();
            this.k = new zacm(context, zaoVar, new ClientSettings(a3.a, a3.b, a3.c));
            return;
        }
        this.k = null;
    }

    public final void a() {
        GoogleApiManager googleApiManager = this.p;
        Preconditions.b(googleApiManager.v);
        this.n = null;
        l(ConnectionResult.o);
        if (this.l) {
            com.google.android.gms.internal.base.zao zaoVar = googleApiManager.v;
            ApiKey apiKey = this.f;
            zaoVar.removeMessages(11, apiKey);
            googleApiManager.v.removeMessages(9, apiKey);
            this.l = false;
        }
        Iterator it = this.i.values().iterator();
        if (!it.hasNext()) {
            f();
            k();
        } else {
            it.next().getClass();
            d.i();
        }
    }

    public final void b(int i) {
        Preconditions.b(this.p.v);
        this.n = null;
        this.l = true;
        String str = ((BaseGmsClient) this.e).a;
        zaaa zaaaVar = this.g;
        zaaaVar.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        zaaaVar.a(true, new Status(20, sb.toString(), null, null));
        ApiKey apiKey = this.f;
        GoogleApiManager googleApiManager = this.p;
        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.v;
        zaoVar.sendMessageDelayed(Message.obtain(zaoVar, 9, apiKey), 5000L);
        com.google.android.gms.internal.base.zao zaoVar2 = googleApiManager.v;
        zaoVar2.sendMessageDelayed(Message.obtain(zaoVar2, 11, apiKey), 120000L);
        SparseIntArray sparseIntArray = googleApiManager.p.a;
        synchronized (sparseIntArray) {
            sparseIntArray.clear();
        }
        Iterator it = this.i.values().iterator();
        if (!it.hasNext()) {
            return;
        }
        it.next().getClass();
        d.i();
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void c(int i) {
        GoogleApiManager googleApiManager = this.p;
        if (Looper.myLooper() == googleApiManager.v.getLooper()) {
            b(i);
        } else {
            googleApiManager.v.post(new zabh(this, i));
        }
    }

    public final boolean d(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.z) {
            this.p.getClass();
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void e() {
        GoogleApiManager googleApiManager = this.p;
        if (Looper.myLooper() == googleApiManager.v.getLooper()) {
            a();
        } else {
            googleApiManager.v.post(new zabg(this));
        }
    }

    public final void f() {
        LinkedList linkedList = this.d;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (((BaseGmsClient) this.e).m()) {
                if (h(zaiVar)) {
                    linkedList.remove(zaiVar);
                }
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void g(ConnectionResult connectionResult) {
        n(connectionResult, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean h(zai zaiVar) {
        Feature[] featureArr;
        if (!(zaiVar instanceof zac)) {
            zaaa zaaaVar = this.g;
            Api.Client client = this.e;
            zaiVar.c(zaaaVar, client.b());
            try {
                zaiVar.d(this);
                return true;
            } catch (DeadObjectException unused) {
                c(1);
                ((BaseGmsClient) client).e("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        zac zacVar = (zac) zaiVar;
        Feature[] f = zacVar.f(this);
        Feature feature = null;
        if (f != null && f.length != 0) {
            zzj zzjVar = ((BaseGmsClient) this.e).v;
            if (zzjVar == null) {
                featureArr = null;
            } else {
                featureArr = zzjVar.k;
            }
            if (featureArr == null) {
                featureArr = new Feature[0];
            }
            SimpleArrayMap simpleArrayMap = new SimpleArrayMap(featureArr.length);
            for (Feature feature2 : featureArr) {
                simpleArrayMap.put(feature2.j, Long.valueOf(feature2.a()));
            }
            for (Feature feature3 : f) {
                Long l = (Long) simpleArrayMap.get(feature3.j);
                if (l == null || l.longValue() < feature3.a()) {
                    feature = feature3;
                    break;
                }
            }
        }
        if (feature == null) {
            zaaa zaaaVar2 = this.g;
            Api.Client client2 = this.e;
            zaiVar.c(zaaaVar2, client2.b());
            try {
                zaiVar.d(this);
                return true;
            } catch (DeadObjectException unused2) {
                c(1);
                ((BaseGmsClient) client2).e("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        String name = this.e.getClass().getName();
        String str = feature.j;
        long a = feature.a();
        StringBuilder sb = new StringBuilder(name.length() + 53 + String.valueOf(str).length() + 2 + String.valueOf(a).length() + 2);
        q.B(sb, name, " could not execute call because it requires feature (", str, ", ");
        sb.append(a);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        GoogleApiManager googleApiManager = this.p;
        if (googleApiManager.w && zacVar.g(this)) {
            int h = zacVar.h(this);
            zabl zablVar = new zabl(this.f, feature);
            ArrayList arrayList = this.m;
            int indexOf = arrayList.indexOf(zablVar);
            if (indexOf >= 0) {
                zabl zablVar2 = (zabl) arrayList.get(indexOf);
                googleApiManager.v.removeMessages(15, zablVar2);
                googleApiManager.v.sendMessageDelayed(Message.obtain(googleApiManager.v, 15, zablVar2), 5000L);
            } else {
                arrayList.add(zablVar);
                googleApiManager.v.sendMessageDelayed(Message.obtain(googleApiManager.v, 15, zablVar), 5000L);
                googleApiManager.v.sendMessageDelayed(Message.obtain(googleApiManager.v, 16, zablVar), 120000L);
                ConnectionResult connectionResult = new ConnectionResult(1, 2, null, null, Integer.valueOf(h));
                if (!d(connectionResult)) {
                    if (googleApiManager.f(connectionResult, this.j)) {
                        String str2 = feature.j;
                        long a2 = feature.a();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 55 + String.valueOf(a2).length());
                        sb2.append("Notification displayed for missing feature: ");
                        sb2.append(str2);
                        sb2.append(", version: ");
                        sb2.append(a2);
                        Log.w("GoogleApiManager", sb2.toString());
                    }
                } else {
                    String str3 = feature.j;
                    long a3 = feature.a();
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str3).length() + 61 + String.valueOf(a3).length());
                    sb3.append("A dialog should be displayed for missing feature: ");
                    sb3.append(str3);
                    sb3.append(", version: ");
                    sb3.append(a3);
                    Log.w("GoogleApiManager", sb3.toString());
                }
            }
            return false;
        }
        zacVar.b(new UnsupportedApiCallException(feature));
        return true;
    }

    public final void i(Status status, Exception exc, boolean z) {
        boolean z2;
        Preconditions.b(this.p.v);
        boolean z3 = true;
        if (status != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (exc != null) {
            z3 = false;
        }
        if (z2 != z3) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                zai zaiVar = (zai) it.next();
                if (!z || zaiVar.a == 2) {
                    if (status != null) {
                        zaiVar.a(status);
                    } else {
                        zaiVar.b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        u2.g("Status XOR exception should be null");
    }

    public final void j(Status status) {
        Preconditions.b(this.p.v);
        i(status, null, false);
    }

    public final void k() {
        GoogleApiManager googleApiManager = this.p;
        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.v;
        ApiKey apiKey = this.f;
        zaoVar.removeMessages(12, apiKey);
        com.google.android.gms.internal.base.zao zaoVar2 = googleApiManager.v;
        zaoVar2.sendMessageDelayed(zaoVar2.obtainMessage(12, apiKey), googleApiManager.j);
    }

    public final void l(ConnectionResult connectionResult) {
        HashSet hashSet = this.h;
        Iterator it = hashSet.iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (Objects.a(connectionResult, ConnectionResult.o)) {
                    BaseGmsClient baseGmsClient = (BaseGmsClient) this.e;
                    if (!baseGmsClient.m() || baseGmsClient.b == null) {
                        u2.n("Failed to connect when checking package");
                        return;
                    }
                }
                throw null;
            }
            d.i();
            return;
        }
        hashSet.clear();
    }

    public final void m(ConnectionResult connectionResult) {
        Preconditions.b(this.p.v);
        Object obj = this.e;
        String name = obj.getClass().getName();
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(name.length() + 25 + valueOf.length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(valueOf);
        ((BaseGmsClient) obj).e(sb.toString());
        n(connectionResult, null);
    }

    public final void n(ConnectionResult connectionResult, RuntimeException runtimeException) {
        Object obj;
        GoogleApiManager googleApiManager = this.p;
        Preconditions.b(googleApiManager.v);
        zacm zacmVar = this.k;
        if (zacmVar != null && (obj = zacmVar.i) != null) {
            ((BaseGmsClient) obj).d();
        }
        Preconditions.b(this.p.v);
        this.n = null;
        SparseIntArray sparseIntArray = googleApiManager.p.a;
        synchronized (sparseIntArray) {
            sparseIntArray.clear();
        }
        l(connectionResult);
        if ((this.e instanceof zau) && connectionResult.k != 24) {
            googleApiManager.k = true;
            com.google.android.gms.internal.base.zao zaoVar = googleApiManager.v;
            zaoVar.sendMessageDelayed(zaoVar.obtainMessage(19), 300000L);
        }
        int i = connectionResult.k;
        if (i == 4) {
            j(GoogleApiManager.y);
            return;
        }
        if (i == 25) {
            j(GoogleApiManager.b(this.f, connectionResult));
            return;
        }
        LinkedList linkedList = this.d;
        if (linkedList.isEmpty()) {
            this.n = connectionResult;
            return;
        }
        if (runtimeException != null) {
            Preconditions.b(googleApiManager.v);
            i(null, runtimeException, false);
            return;
        }
        boolean z = googleApiManager.w;
        ApiKey apiKey = this.f;
        if (z) {
            i(GoogleApiManager.b(apiKey, connectionResult), null, true);
            if (!linkedList.isEmpty() && !d(connectionResult) && !googleApiManager.f(connectionResult, this.j)) {
                if (connectionResult.k == 18) {
                    this.l = true;
                }
                if (this.l) {
                    com.google.android.gms.internal.base.zao zaoVar2 = googleApiManager.v;
                    zaoVar2.sendMessageDelayed(Message.obtain(zaoVar2, 9, apiKey), 5000L);
                    return;
                } else {
                    j(GoogleApiManager.b(apiKey, connectionResult));
                    return;
                }
            }
            return;
        }
        j(GoogleApiManager.b(apiKey, connectionResult));
    }

    public final void o(zac zacVar) {
        Preconditions.b(this.p.v);
        boolean m = ((BaseGmsClient) this.e).m();
        LinkedList linkedList = this.d;
        if (m) {
            if (h(zacVar)) {
                k();
                return;
            } else {
                linkedList.add(zacVar);
                return;
            }
        }
        linkedList.add(zacVar);
        ConnectionResult connectionResult = this.n;
        if (connectionResult != null && connectionResult.k != 0 && connectionResult.l != null) {
            n(connectionResult, null);
        } else {
            q();
        }
    }

    public final void p() {
        GoogleApiManager googleApiManager = this.p;
        Preconditions.b(googleApiManager.v);
        Status status = GoogleApiManager.x;
        j(status);
        this.g.a(false, status);
        for (ListenerHolder$ListenerKey listenerHolder$ListenerKey : (ListenerHolder$ListenerKey[]) this.i.keySet().toArray(new ListenerHolder$ListenerKey[0])) {
            o(new zad(new TaskCompletionSource()));
        }
        l(new ConnectionResult(4, null, null));
        if (((BaseGmsClient) this.e).m()) {
            googleApiManager.v.post(new zabi(new zabj(this)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void q() {
        GoogleApiManager googleApiManager = this.p;
        Preconditions.b(googleApiManager.v);
        Api.Client client = this.e;
        if (!((BaseGmsClient) client).m()) {
            BaseGmsClient baseGmsClient = (BaseGmsClient) client;
            if (!baseGmsClient.n()) {
                try {
                    int a = googleApiManager.p.a(googleApiManager.n, client);
                    if (a != 0) {
                        ConnectionResult connectionResult = new ConnectionResult(a, null, null);
                        String name = client.getClass().getName();
                        String connectionResult2 = connectionResult.toString();
                        StringBuilder sb = new StringBuilder(name.length() + 35 + connectionResult2.length());
                        sb.append("The service for ");
                        sb.append(name);
                        sb.append(" is not available: ");
                        sb.append(connectionResult2);
                        Log.w("GoogleApiManager", sb.toString());
                        n(connectionResult, null);
                        return;
                    }
                    zabn zabnVar = new zabn(googleApiManager, client, this.f);
                    if (client.b()) {
                        zacm zacmVar = this.k;
                        Preconditions.e(zacmVar);
                        Object obj = zacmVar.i;
                        if (obj != null) {
                            ((BaseGmsClient) obj).d();
                        }
                        ClientSettings clientSettings = zacmVar.h;
                        clientSettings.f = Integer.valueOf(System.identityHashCode(zacmVar));
                        Api.AbstractClientBuilder abstractClientBuilder = zacmVar.f;
                        Context context = zacmVar.d;
                        Handler handler = zacmVar.e;
                        zacmVar.i = (zae) abstractClientBuilder.a(context, handler.getLooper(), clientSettings, clientSettings.e, zacmVar, zacmVar);
                        zacmVar.j = zabnVar;
                        Set set = zacmVar.g;
                        if (set != null && !set.isEmpty()) {
                            SignInClientImpl signInClientImpl = (SignInClientImpl) zacmVar.i;
                            signInClientImpl.getClass();
                            signInClientImpl.i = new BaseGmsClient.LegacyClientCallbackAdapter(signInClientImpl);
                            signInClientImpl.p(2, null);
                        } else {
                            handler.post(new zacj(zacmVar));
                        }
                    }
                    try {
                        baseGmsClient.i = zabnVar;
                        baseGmsClient.p(2, null);
                    } catch (SecurityException e) {
                        n(new ConnectionResult(10, null, null), e);
                    }
                } catch (IllegalStateException e2) {
                    n(new ConnectionResult(10, null, null), e2);
                }
            }
        }
    }
}
