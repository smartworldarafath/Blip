package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Trace;
import android.util.Base64;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentDiscovery;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRuntime;
import com.google.firebase.components.Lazy;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.concurrent.UiExecutor;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.inject.Provider;
import com.google.firebase.provider.FirebaseInitProvider;
import defpackage.j8;
import defpackage.m5;
import defpackage.u2;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirebaseApp {
    public static final Object j = new Object();
    public static final ArrayMap k = new SimpleArrayMap(0);
    public final Context a;
    public final String b;
    public final FirebaseOptions c;
    public final ComponentRuntime d;
    public final AtomicBoolean e;
    public final AtomicBoolean f;
    public final Lazy g;
    public final Provider h;
    public final CopyOnWriteArrayList i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface BackgroundStateChangeListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @TargetApi(14)
    /* loaded from: classes.dex */
    public static class GlobalBackgroundStateListener implements BackgroundDetector.BackgroundStateChangeListener {
        public static final AtomicReference a = new AtomicReference();

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public final void a(boolean z) {
            synchronized (FirebaseApp.j) {
                try {
                    Iterator it = new ArrayList(FirebaseApp.k.values()).iterator();
                    while (it.hasNext()) {
                        FirebaseApp firebaseApp = (FirebaseApp) it.next();
                        if (firebaseApp.e.get()) {
                            Log.d("FirebaseApp", "Notifying background state change listeners.");
                            Iterator it2 = firebaseApp.i.iterator();
                            while (it2.hasNext()) {
                                FirebaseApp firebaseApp2 = ((j8) ((BackgroundStateChangeListener) it2.next())).a;
                                if (!z) {
                                    ((DefaultHeartBeatController) firebaseApp2.h.get()).c();
                                } else {
                                    Object obj = FirebaseApp.j;
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @TargetApi(24)
    /* loaded from: classes.dex */
    public static class UserUnlockReceiver extends BroadcastReceiver {
        public static final AtomicReference b = new AtomicReference();
        public final Context a;

        public UserUnlockReceiver(Context context) {
            this.a = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.j) {
                try {
                    Iterator it = FirebaseApp.k.values().iterator();
                    while (it.hasNext()) {
                        ((FirebaseApp) it.next()).d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.a.unregisterReceiver(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.google.firebase.components.ComponentRegistrarProcessor, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.util.List] */
    public FirebaseApp(final Context context, String str, FirebaseOptions firebaseOptions) {
        ?? arrayList;
        int i = 0;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.e = atomicBoolean;
        this.f = new AtomicBoolean();
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.i = copyOnWriteArrayList;
        new CopyOnWriteArrayList();
        this.a = context;
        Preconditions.c(str);
        this.b = str;
        this.c = firebaseOptions;
        StartupTime startupTime = FirebaseInitProvider.j;
        Trace.beginSection("Firebase");
        Trace.beginSection("ComponentDiscovery");
        ComponentDiscovery a = ComponentDiscovery.a(context);
        ArrayList arrayList2 = new ArrayList();
        Context context2 = a.a;
        Bundle bundle = null;
        try {
            PackageManager packageManager = context2.getPackageManager();
            if (packageManager == null) {
                Log.w("ComponentDiscovery", "Context has no PackageManager.");
            } else {
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context2, (Class<?>) ComponentDiscoveryService.class), 128);
                if (serviceInfo == null) {
                    Log.w("ComponentDiscovery", ComponentDiscoveryService.class + " has no service info.");
                } else {
                    bundle = serviceInfo.metaData;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("ComponentDiscovery", "Application info not found.");
        }
        if (bundle == null) {
            Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList();
            for (String str2 : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str2)) && str2.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str2.substring(31));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new m5(i, (String) it.next()));
        }
        Trace.endSection();
        Trace.beginSection("Runtime");
        UiExecutor uiExecutor = UiExecutor.j;
        ComponentRuntime.Builder builder = new ComponentRuntime.Builder();
        ArrayList arrayList3 = builder.b;
        arrayList3.addAll(arrayList2);
        int i2 = 1;
        arrayList3.add(new m5(i2, new FirebaseCommonRegistrar()));
        arrayList3.add(new m5(i2, new ExecutorsRegistrar()));
        Component b = Component.b(context, Context.class, new Class[0]);
        ArrayList arrayList4 = builder.c;
        arrayList4.add(b);
        arrayList4.add(Component.b(this, FirebaseApp.class, new Class[0]));
        arrayList4.add(Component.b(firebaseOptions, FirebaseOptions.class, new Class[0]));
        builder.d = new Object();
        if (UserManagerCompat.a(context) && FirebaseInitProvider.k.get()) {
            arrayList4.add(Component.b(startupTime, StartupTime.class, new Class[0]));
        }
        ComponentRuntime componentRuntime = new ComponentRuntime(builder.a, arrayList3, arrayList4, builder.d);
        this.d = componentRuntime;
        Trace.endSection();
        this.g = new Lazy(new Provider() { // from class: i8
            /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.firebase.internal.DataCollectionConfigStorage] */
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                ApplicationInfo applicationInfo;
                Bundle bundle2;
                Object obj = FirebaseApp.j;
                FirebaseApp firebaseApp = FirebaseApp.this;
                String c = firebaseApp.c();
                ?? obj2 = new Object();
                Context createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
                SharedPreferences sharedPreferences = createDeviceProtectedStorageContext.getSharedPreferences("com.google.firebase.common.prefs:".concat(c), 0);
                boolean z = true;
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager2 = createDeviceProtectedStorageContext.getPackageManager();
                        if (packageManager2 != null && (applicationInfo = packageManager2.getApplicationInfo(createDeviceProtectedStorageContext.getPackageName(), 128)) != null && (bundle2 = applicationInfo.metaData) != null && bundle2.containsKey("firebase_data_collection_default_enabled")) {
                            z = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                    } catch (PackageManager.NameNotFoundException unused2) {
                    }
                }
                obj2.a = z;
                return obj2;
            }
        });
        this.h = componentRuntime.c(DefaultHeartBeatController.class);
        j8 j8Var = new j8(this);
        a();
        if (atomicBoolean.get()) {
            BackgroundDetector.n.j.get();
        }
        copyOnWriteArrayList.add(j8Var);
        Trace.endSection();
    }

    public static FirebaseApp b() {
        FirebaseApp firebaseApp;
        synchronized (j) {
            try {
                firebaseApp = (FirebaseApp) k.get("[DEFAULT]");
                if (firebaseApp == null) {
                    StringBuilder sb = new StringBuilder("Default FirebaseApp is not initialized in this process ");
                    if (ProcessUtils.a == null) {
                        ProcessUtils.a = Application.getProcessName();
                    }
                    sb.append(ProcessUtils.a);
                    sb.append(". Make sure to call FirebaseApp.initializeApp(Context) first.");
                    throw new IllegalStateException(sb.toString());
                }
                ((DefaultHeartBeatController) firebaseApp.h.get()).c();
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp e(Context context) {
        synchronized (j) {
            try {
                if (k.containsKey("[DEFAULT]")) {
                    return b();
                }
                FirebaseOptions a = FirebaseOptions.a(context);
                if (a == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return f(context, a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static FirebaseApp f(Context context, FirebaseOptions firebaseOptions) {
        FirebaseApp firebaseApp;
        AtomicReference atomicReference = GlobalBackgroundStateListener.a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference2 = GlobalBackgroundStateListener.a;
            if (atomicReference2.get() == null) {
                Object obj = new Object();
                while (true) {
                    if (atomicReference2.compareAndSet(null, obj)) {
                        BackgroundDetector.a(application);
                        BackgroundDetector backgroundDetector = BackgroundDetector.n;
                        backgroundDetector.getClass();
                        synchronized (backgroundDetector) {
                            backgroundDetector.l.add(obj);
                        }
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        break;
                    }
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (j) {
            ArrayMap arrayMap = k;
            String str = "FirebaseApp name [DEFAULT] already exists!";
            if (!arrayMap.containsKey("[DEFAULT]")) {
                Preconditions.f(context, "Application context cannot be null.");
                firebaseApp = new FirebaseApp(context, "[DEFAULT]", firebaseOptions);
                arrayMap.put("[DEFAULT]", firebaseApp);
            } else {
                throw new IllegalStateException(str);
            }
        }
        firebaseApp.d();
        return firebaseApp;
    }

    public final void a() {
        if (!this.f.get()) {
            return;
        }
        u2.l("FirebaseApp was deleted");
    }

    public final String c() {
        String encodeToString;
        StringBuilder sb = new StringBuilder();
        a();
        byte[] bytes = this.b.getBytes(Charset.defaultCharset());
        String str = null;
        if (bytes == null) {
            encodeToString = null;
        } else {
            encodeToString = Base64.encodeToString(bytes, 11);
        }
        sb.append(encodeToString);
        sb.append("+");
        a();
        byte[] bytes2 = this.c.b.getBytes(Charset.defaultCharset());
        if (bytes2 != null) {
            str = Base64.encodeToString(bytes2, 11);
        }
        sb.append(str);
        return sb.toString();
    }

    public final void d() {
        HashMap hashMap;
        if (!UserManagerCompat.a(this.a)) {
            StringBuilder sb = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
            a();
            sb.append(this.b);
            Log.i("FirebaseApp", sb.toString());
            Context context = this.a;
            AtomicReference atomicReference = UserUnlockReceiver.b;
            if (atomicReference.get() == null) {
                UserUnlockReceiver userUnlockReceiver = new UserUnlockReceiver(context);
                while (!atomicReference.compareAndSet(null, userUnlockReceiver)) {
                    if (atomicReference.get() != null) {
                        return;
                    }
                }
                context.registerReceiver(userUnlockReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                return;
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
        a();
        sb2.append(this.b);
        Log.i("FirebaseApp", sb2.toString());
        ComponentRuntime componentRuntime = this.d;
        a();
        boolean equals = "[DEFAULT]".equals(this.b);
        AtomicReference atomicReference2 = componentRuntime.f;
        Boolean valueOf = Boolean.valueOf(equals);
        while (true) {
            if (atomicReference2.compareAndSet(null, valueOf)) {
                synchronized (componentRuntime) {
                    hashMap = new HashMap(componentRuntime.a);
                }
                componentRuntime.g(hashMap, equals);
                break;
            } else if (atomicReference2.get() != null) {
                break;
            }
        }
        ((DefaultHeartBeatController) this.h.get()).c();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FirebaseApp)) {
            return false;
        }
        FirebaseApp firebaseApp = (FirebaseApp) obj;
        firebaseApp.a();
        return this.b.equals(firebaseApp.b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(this.b, "name");
        toStringHelper.a(this.c, "options");
        return toStringHelper.toString();
    }
}
