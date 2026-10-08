package com.google.android.gms.common.api.internal;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.common.internal.service.zaq;
import com.google.android.gms.common.internal.service.zat;
import com.google.android.gms.common.internal.zab;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.zzw;
import defpackage.q;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GoogleApiManager implements Handler.Callback {
    public static GoogleApiManager A;
    public static final Status x = new Status(4, "Sign-out occurred while this API call was in progress.", null, null);
    public static final Status y = new Status(4, "The user must be signed in to make this API call.", null, null);
    public static final Object z = new Object();
    public long j;
    public boolean k;
    public TelemetryData l;
    public zat m;
    public final Context n;
    public final GoogleApiAvailability o;
    public final com.google.android.gms.common.internal.zao p;
    public final AtomicInteger q;
    public final AtomicInteger r;
    public final ConcurrentHashMap s;
    public final ArraySet t;
    public final ArraySet u;
    public final com.google.android.gms.internal.base.zao v;
    public volatile boolean w;

    /* JADX WARN: Type inference failed for: r2v5, types: [android.os.Handler, com.google.android.gms.internal.base.zao] */
    public GoogleApiManager(Context context, Looper looper) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.d;
        this.j = 10000L;
        this.k = false;
        this.q = new AtomicInteger(1);
        this.r = new AtomicInteger(0);
        this.s = new ConcurrentHashMap(5, 0.75f, 1);
        this.t = new ArraySet(0);
        this.u = new ArraySet(0);
        this.w = true;
        this.n = context;
        ?? handler = new Handler(looper, this);
        Looper.getMainLooper();
        this.v = handler;
        this.o = googleApiAvailability;
        this.p = new com.google.android.gms.common.internal.zao();
        PackageManager packageManager = context.getPackageManager();
        if (DeviceProperties.d == null) {
            DeviceProperties.d = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (DeviceProperties.d.booleanValue()) {
            this.w = false;
        }
        handler.sendMessage(handler.obtainMessage(6));
    }

    public static Status b(ApiKey apiKey, ConnectionResult connectionResult) {
        String str = apiKey.b.b;
        String valueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + valueOf.length());
        sb.append("API: ");
        sb.append(str);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(valueOf);
        return new Status(17, sb.toString(), connectionResult.l, connectionResult);
    }

    public static GoogleApiManager c(Context context) {
        GoogleApiManager googleApiManager;
        HandlerThread handlerThread;
        synchronized (z) {
            if (A == null) {
                synchronized (GmsClientSupervisor.a) {
                    try {
                        handlerThread = GmsClientSupervisor.c;
                        if (handlerThread == null) {
                            HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                            GmsClientSupervisor.c = handlerThread2;
                            handlerThread2.start();
                            handlerThread = GmsClientSupervisor.c;
                        }
                    } finally {
                    }
                }
                Looper looper = handlerThread.getLooper();
                Context applicationContext = context.getApplicationContext();
                Object obj = GoogleApiAvailability.c;
                A = new GoogleApiManager(applicationContext, looper);
            }
            googleApiManager = A;
        }
        return googleApiManager;
    }

    public final zabk a(GoogleApi googleApi) {
        ApiKey apiKey = googleApi.f;
        ConcurrentHashMap concurrentHashMap = this.s;
        zabk zabkVar = (zabk) concurrentHashMap.get(apiKey);
        if (zabkVar == null) {
            zabkVar = new zabk(this, googleApi);
            concurrentHashMap.put(apiKey, zabkVar);
        }
        if (zabkVar.e.b()) {
            this.u.add(apiKey);
        }
        zabkVar.q();
        return zabkVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(GoogleApi googleApi, int i, TaskApiCall taskApiCall, TaskCompletionSource taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zaby zabyVar;
        long j;
        final com.google.android.gms.internal.base.zao zaoVar = this.v;
        int i2 = taskApiCall.c;
        if (i2 != 0) {
            ApiKey apiKey = googleApi.f;
            if (e()) {
                RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.a().a;
                boolean z2 = true;
                if (rootTelemetryConfiguration != null) {
                    if (rootTelemetryConfiguration.k) {
                        boolean z3 = rootTelemetryConfiguration.l;
                        zabk zabkVar = (zabk) this.s.get(apiKey);
                        if (zabkVar != null) {
                            Object obj = zabkVar.e;
                            if (obj instanceof BaseGmsClient) {
                                BaseGmsClient baseGmsClient = (BaseGmsClient) obj;
                                if (baseGmsClient.v != null && !baseGmsClient.n()) {
                                    ConnectionTelemetryConfiguration a = zaby.a(zabkVar, baseGmsClient, i2);
                                    if (a != null) {
                                        zabkVar.o++;
                                        z2 = a.l;
                                    }
                                }
                            }
                        }
                        z2 = z3;
                    }
                }
                long j2 = 0;
                if (z2) {
                    j = System.currentTimeMillis();
                } else {
                    j = 0;
                }
                if (z2) {
                    j2 = SystemClock.elapsedRealtime();
                }
                zabyVar = new zaby(this, i2, apiKey, j, j2);
                if (zabyVar != null) {
                    zzw zzwVar = taskCompletionSource.a;
                    Objects.requireNonNull(zaoVar);
                    zzwVar.b(new Executor() { // from class: com.google.android.gms.common.api.internal.zabp
                        @Override // java.util.concurrent.Executor
                        public final /* synthetic */ void execute(Runnable runnable) {
                            zaoVar.post(runnable);
                        }
                    }, zabyVar);
                }
            }
            zabyVar = null;
            if (zabyVar != null) {
            }
        }
        zaoVar.sendMessage(zaoVar.obtainMessage(4, new zacc(new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper), this.r.get(), googleApi)));
    }

    public final boolean e() {
        int i;
        if (!this.k) {
            RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.a().a;
            if (rootTelemetryConfiguration == null || rootTelemetryConfiguration.k) {
                SparseIntArray sparseIntArray = this.p.a;
                synchronized (sparseIntArray) {
                    i = sparseIntArray.get(203400000, -1);
                }
                if (i != -1 && i != 0) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [com.google.android.gms.common.internal.service.zaq, com.google.android.gms.common.api.GoogleApi] */
    public final boolean f(ConnectionResult connectionResult, int i) {
        PendingIntent pendingIntent;
        boolean z2;
        boolean z3;
        PendingIntent pendingIntent2;
        int intValue;
        Boolean bool;
        GoogleApiAvailability googleApiAvailability = this.o;
        Context context = this.n;
        googleApiAvailability.getClass();
        synchronized (InstantApps.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = InstantApps.a;
            pendingIntent = null;
            if (context2 != null && (bool = InstantApps.b) != null && context2 == applicationContext) {
                z2 = bool.booleanValue();
            }
            InstantApps.b = null;
            boolean isInstantApp = applicationContext.getPackageManager().isInstantApp();
            InstantApps.b = Boolean.valueOf(isInstantApp);
            InstantApps.a = applicationContext;
            z2 = isInstantApp;
        }
        if (!z2) {
            int i2 = connectionResult.k;
            if (i2 != 0 && connectionResult.l != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (z3) {
                pendingIntent2 = connectionResult.l;
            } else {
                Intent a = googleApiAvailability.a(i2, context, null);
                if (a != null) {
                    pendingIntent = PendingIntent.getActivity(context, 0, a, 201326592);
                }
                pendingIntent2 = pendingIntent;
            }
            if (pendingIntent2 != null) {
                int i3 = connectionResult.k;
                int i4 = GoogleApiActivity.k;
                Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
                intent.putExtra("pending_intent", pendingIntent2);
                intent.putExtra("failing_client_id", i);
                intent.putExtra("notify_manager", true);
                googleApiAvailability.f(context, i3, PendingIntent.getActivity(context, 0, intent, zak.a | 134217728));
                Integer num = connectionResult.n;
                if (num == null) {
                    intValue = -1;
                } else {
                    intValue = num.intValue();
                }
                zab zabVar = new zab(intValue, context.getPackageName(), System.currentTimeMillis(), connectionResult.k, false);
                if (googleApiAvailability.b == null) {
                    googleApiAvailability.b = new GoogleApi(context, zaq.j, Api.ApiOptions.a, GoogleApi.Settings.b);
                }
                googleApiAvailability.b.c(zabVar);
                return true;
            }
        }
        return false;
    }

    public final void g(ConnectionResult connectionResult, int i) {
        if (!f(connectionResult, i)) {
            com.google.android.gms.internal.base.zao zaoVar = this.v;
            zaoVar.sendMessage(zaoVar.obtainMessage(5, i, 0, connectionResult));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x0318  */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.google.android.gms.common.internal.service.zat, com.google.android.gms.common.api.GoogleApi] */
    /* JADX WARN: Type inference failed for: r2v20, types: [com.google.android.gms.common.internal.service.zat, com.google.android.gms.common.api.GoogleApi] */
    /* JADX WARN: Type inference failed for: r2v22, types: [com.google.android.gms.common.internal.service.zat, com.google.android.gms.common.api.GoogleApi] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean handleMessage(Message message) {
        zabk zabkVar;
        boolean z2;
        Status status;
        Feature[] f;
        com.google.android.gms.internal.base.zao zaoVar = this.v;
        ConcurrentHashMap concurrentHashMap = this.s;
        int i = message.what;
        long j = 300000;
        switch (i) {
            case 1:
                if (true == ((Boolean) message.obj).booleanValue()) {
                    j = 10000;
                }
                this.j = j;
                zaoVar.removeMessages(12);
                Iterator it = concurrentHashMap.keySet().iterator();
                while (it.hasNext()) {
                    zaoVar.sendMessageDelayed(zaoVar.obtainMessage(12, (ApiKey) it.next()), this.j);
                }
                return true;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                throw q.e(message.obj);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                for (zabk zabkVar2 : concurrentHashMap.values()) {
                    Preconditions.b(zabkVar2.p.v);
                    zabkVar2.n = null;
                    zabkVar2.q();
                }
                return true;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case 13:
                zacc zaccVar = (zacc) message.obj;
                GoogleApi googleApi = zaccVar.c;
                zag zagVar = zaccVar.a;
                zabk zabkVar3 = (zabk) concurrentHashMap.get(googleApi.f);
                if (zabkVar3 == null) {
                    zabkVar3 = a(googleApi);
                }
                if (zabkVar3.e.b() && this.r.get() != zaccVar.b) {
                    zagVar.a(x);
                    zabkVar3.p();
                    return true;
                }
                zabkVar3.o(zagVar);
                return true;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                int i2 = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it2 = concurrentHashMap.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zabkVar = (zabk) it2.next();
                        if (zabkVar.j == i2) {
                        }
                    } else {
                        zabkVar = null;
                    }
                }
                if (zabkVar != null) {
                    int i3 = connectionResult.k;
                    if (i3 == 13) {
                        this.o.getClass();
                        AtomicBoolean atomicBoolean = GooglePlayServicesUtilLight.a;
                        String a = ConnectionResult.a(i3);
                        String str = connectionResult.m;
                        StringBuilder sb = new StringBuilder(a.length() + 69 + String.valueOf(str).length());
                        sb.append("Error resolution was canceled by the user, original error message: ");
                        sb.append(a);
                        sb.append(": ");
                        sb.append(str);
                        zabkVar.j(new Status(17, sb.toString(), null, null));
                        return true;
                    }
                    zabkVar.j(b(zabkVar.f, connectionResult));
                    return true;
                }
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 65);
                sb2.append("Could not find API instance ");
                sb2.append(i2);
                sb2.append(" while trying to fail enqueued calls.");
                Log.wtf("GoogleApiManager", sb2.toString(), new Exception());
                return true;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Context context = this.n;
                if (context.getApplicationContext() instanceof Application) {
                    BackgroundDetector.a((Application) context.getApplicationContext());
                    BackgroundDetector backgroundDetector = BackgroundDetector.n;
                    zabf zabfVar = new zabf(this);
                    backgroundDetector.getClass();
                    synchronized (backgroundDetector) {
                        backgroundDetector.l.add(zabfVar);
                    }
                    AtomicBoolean atomicBoolean2 = backgroundDetector.j;
                    AtomicBoolean atomicBoolean3 = backgroundDetector.k;
                    if (!atomicBoolean3.get()) {
                        Boolean bool = ProcessUtils.b;
                        if (bool == null) {
                            bool = Boolean.valueOf(Process.isIsolated());
                            ProcessUtils.b = bool;
                        }
                        if (!bool.booleanValue()) {
                            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                            ActivityManager.getMyMemoryState(runningAppProcessInfo);
                            if (!atomicBoolean3.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                                atomicBoolean2.set(true);
                            }
                        } else {
                            z2 = true;
                            if (!z2) {
                                this.j = 300000L;
                                return true;
                            }
                        }
                    }
                    z2 = atomicBoolean2.get();
                    if (!z2) {
                    }
                }
                return true;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                a((GoogleApi) message.obj);
                return true;
            case KeyModifiers.a /* 9 */:
                if (concurrentHashMap.containsKey(message.obj)) {
                    zabk zabkVar4 = (zabk) concurrentHashMap.get(message.obj);
                    Preconditions.b(zabkVar4.p.v);
                    if (zabkVar4.l) {
                        zabkVar4.q();
                        return true;
                    }
                }
                return true;
            case KeyModifiers.b /* 10 */:
                ArraySet arraySet = this.u;
                Iterator it3 = arraySet.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it3;
                    if (indexBasedArrayIterator.hasNext()) {
                        zabk zabkVar5 = (zabk) concurrentHashMap.remove((ApiKey) indexBasedArrayIterator.next());
                        if (zabkVar5 != null) {
                            zabkVar5.p();
                        }
                    } else {
                        arraySet.clear();
                        return true;
                    }
                }
            case 11:
                if (concurrentHashMap.containsKey(message.obj)) {
                    zabk zabkVar6 = (zabk) concurrentHashMap.get(message.obj);
                    GoogleApiManager googleApiManager = zabkVar6.p;
                    Preconditions.b(googleApiManager.v);
                    boolean z3 = zabkVar6.l;
                    if (z3) {
                        if (z3) {
                            GoogleApiManager googleApiManager2 = zabkVar6.p;
                            ApiKey apiKey = zabkVar6.f;
                            googleApiManager2.v.removeMessages(11, apiKey);
                            googleApiManager2.v.removeMessages(9, apiKey);
                            zabkVar6.l = false;
                        }
                        if (googleApiManager.o.b(googleApiManager.n, GoogleApiAvailabilityLight.a) == 18) {
                            status = new Status(21, "Connection timed out waiting for Google Play services update to complete.", null, null);
                        } else {
                            status = new Status(22, "API failed to connect while resuming due to an unknown error.", null, null);
                        }
                        zabkVar6.j(status);
                        ((BaseGmsClient) zabkVar6.e).e("Timing out connection while resuming.");
                        return true;
                    }
                }
                return true;
            case KeyModifiers.c /* 12 */:
                if (concurrentHashMap.containsKey(message.obj)) {
                    zabk zabkVar7 = (zabk) concurrentHashMap.get(message.obj);
                    Preconditions.b(zabkVar7.p.v);
                    Object obj = zabkVar7.e;
                    if (((BaseGmsClient) obj).m() && zabkVar7.i.isEmpty()) {
                        zaaa zaaaVar = zabkVar7.g;
                        if (zaaaVar.a.isEmpty() && zaaaVar.b.isEmpty()) {
                            ((BaseGmsClient) obj).e("Timing out service connection.");
                            return true;
                        }
                        zabkVar7.k();
                    }
                    return true;
                }
                return true;
            case 14:
                throw q.e(message.obj);
            case 15:
                zabl zablVar = (zabl) message.obj;
                if (concurrentHashMap.containsKey(zablVar.a)) {
                    zabk zabkVar8 = (zabk) concurrentHashMap.get(zablVar.a);
                    if (zabkVar8.m.contains(zablVar) && !zabkVar8.l) {
                        if (!((BaseGmsClient) zabkVar8.e).m()) {
                            zabkVar8.q();
                            return true;
                        }
                        zabkVar8.f();
                        return true;
                    }
                }
                return true;
            case 16:
                zabl zablVar2 = (zabl) message.obj;
                if (concurrentHashMap.containsKey(zablVar2.a)) {
                    zabk zabkVar9 = (zabk) concurrentHashMap.get(zablVar2.a);
                    if (zabkVar9.m.remove(zablVar2)) {
                        GoogleApiManager googleApiManager3 = zabkVar9.p;
                        googleApiManager3.v.removeMessages(15, zablVar2);
                        googleApiManager3.v.removeMessages(16, zablVar2);
                        Feature feature = zablVar2.b;
                        LinkedList<zai> linkedList = zabkVar9.d;
                        ArrayList arrayList = new ArrayList(linkedList.size());
                        for (zai zaiVar : linkedList) {
                            if ((zaiVar instanceof zac) && (f = ((zac) zaiVar).f(zabkVar9)) != null) {
                                int length = f.length;
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= length) {
                                        break;
                                    }
                                    if (com.google.android.gms.common.internal.Objects.a(f[i4], feature)) {
                                        if (i4 >= 0) {
                                            arrayList.add(zaiVar);
                                        }
                                    } else {
                                        i4++;
                                    }
                                }
                            }
                        }
                        int size = arrayList.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            zai zaiVar2 = (zai) arrayList.get(i5);
                            linkedList.remove(zaiVar2);
                            zaiVar2.b(new UnsupportedApiCallException(feature));
                        }
                    }
                }
                return true;
            case 17:
                TelemetryData telemetryData = this.l;
                if (telemetryData != null) {
                    if (telemetryData.j > 0 || e()) {
                        if (this.m == null) {
                            this.m = new GoogleApi(this.n, zat.j, TelemetryLoggingOptions.b, GoogleApi.Settings.b);
                        }
                        this.m.c(telemetryData);
                    }
                    this.l = null;
                    return true;
                }
                return true;
            case 18:
                zabz zabzVar = (zabz) message.obj;
                long j2 = zabzVar.c;
                MethodInvocation methodInvocation = zabzVar.a;
                int i6 = zabzVar.b;
                if (j2 == 0) {
                    TelemetryData telemetryData2 = new TelemetryData(i6, Arrays.asList(methodInvocation));
                    if (this.m == null) {
                        this.m = new GoogleApi(this.n, zat.j, TelemetryLoggingOptions.b, GoogleApi.Settings.b);
                    }
                    this.m.c(telemetryData2);
                    return true;
                }
                TelemetryData telemetryData3 = this.l;
                if (telemetryData3 != null) {
                    List list = telemetryData3.k;
                    if (telemetryData3.j == i6 && (list == null || list.size() < zabzVar.d)) {
                        TelemetryData telemetryData4 = this.l;
                        if (telemetryData4.k == null) {
                            telemetryData4.k = new ArrayList();
                        }
                        telemetryData4.k.add(methodInvocation);
                    } else {
                        zaoVar.removeMessages(17);
                        TelemetryData telemetryData5 = this.l;
                        if (telemetryData5 != null) {
                            if (telemetryData5.j > 0 || e()) {
                                if (this.m == null) {
                                    this.m = new GoogleApi(this.n, zat.j, TelemetryLoggingOptions.b, GoogleApi.Settings.b);
                                }
                                this.m.c(telemetryData5);
                            }
                            this.l = null;
                        }
                    }
                }
                if (this.l == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(methodInvocation);
                    this.l = new TelemetryData(i6, arrayList2);
                    zaoVar.sendMessageDelayed(zaoVar.obtainMessage(17), j2);
                    return true;
                }
                return true;
            case 19:
                this.k = false;
                return true;
            default:
                StringBuilder sb3 = new StringBuilder(String.valueOf(i).length() + 20);
                sb3.append("Unknown message id: ");
                sb3.append(i);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }
}
