package com.google.firebase.messaging;

import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.cloudmessaging.zzv;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.internal.DataCollectionConfigStorage;
import com.google.firebase.messaging.Store;
import defpackage.f3;
import defpackage.f7;
import defpackage.fe;
import defpackage.m8;
import defpackage.q5;
import defpackage.z2;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirebaseMessaging {
    public static Store l;
    public static Provider m = new q5(1);
    public static ScheduledThreadPoolExecutor n;
    public final FirebaseApp a;
    public final Context b;
    public final GmsRpc c;
    public final GmsRegistrationClient d;
    public final RequestDeduplicator e;
    public final AutoInit f;
    public final ScheduledThreadPoolExecutor g;
    public final ThreadPoolExecutor h;
    public final Metadata i;
    public final FirebaseInstallationsApi j;
    public boolean k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class AutoInit {
        public final Subscriber a;
        public boolean b;
        public Boolean c;

        public AutoInit(Subscriber subscriber) {
            this.a = subscriber;
        }

        public final synchronized boolean a() {
            boolean z;
            boolean z2;
            try {
                synchronized (this) {
                    try {
                        if (!this.b) {
                            Boolean b = b();
                            this.c = b;
                            if (b == null) {
                                this.a.a(new f7(13));
                            }
                            this.b = true;
                        }
                    } finally {
                    }
                }
                return z2;
            } catch (Throwable th) {
                throw th;
            }
            Boolean bool = this.c;
            if (bool != null) {
                z2 = bool.booleanValue();
            } else {
                FirebaseApp firebaseApp = FirebaseMessaging.this.a;
                firebaseApp.a();
                DataCollectionConfigStorage dataCollectionConfigStorage = (DataCollectionConfigStorage) firebaseApp.g.get();
                synchronized (dataCollectionConfigStorage) {
                    z = dataCollectionConfigStorage.a;
                }
                z2 = z;
            }
            return z2;
        }

        public final Boolean b() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            FirebaseApp firebaseApp = FirebaseMessaging.this.a;
            firebaseApp.a();
            Context context = firebaseApp.a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
                }
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }

    public FirebaseMessaging(final FirebaseApp firebaseApp, Provider provider, Provider provider2, final FirebaseInstallationsApi firebaseInstallationsApi, Provider provider3, Subscriber subscriber) {
        firebaseApp.a();
        Context context = firebaseApp.a;
        final Metadata metadata = new Metadata(context);
        GmsRpc gmsRpc = new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi);
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Task"));
        final int i = 1;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Init"));
        final int i2 = 0;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("Firebase-Messaging-File-Io"));
        this.k = false;
        m = provider3;
        this.a = firebaseApp;
        this.f = new AutoInit(subscriber);
        firebaseApp.a();
        final Context context2 = firebaseApp.a;
        this.b = context2;
        FcmLifecycleCallbacks fcmLifecycleCallbacks = new FcmLifecycleCallbacks();
        this.i = metadata;
        this.c = gmsRpc;
        this.j = firebaseInstallationsApi;
        GmsRegistrationClient gmsRegistrationClient = new GmsRegistrationClient(context2, firebaseApp, firebaseInstallationsApi, gmsRpc, metadata);
        this.d = gmsRegistrationClient;
        this.e = new RequestDeduplicator(newSingleThreadExecutor);
        this.g = scheduledThreadPoolExecutor;
        this.h = threadPoolExecutor;
        firebaseApp.a();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(fcmLifecycleCallbacks);
        } else {
            Log.w("FirebaseMessaging", "Context " + context + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (gmsRegistrationClient.b()) {
            ((FirebaseInstallations) firebaseInstallationsApi).g(new m8(this));
        }
        scheduledThreadPoolExecutor.execute(new Runnable(this) { // from class: com.google.firebase.messaging.b
            public final /* synthetic */ FirebaseMessaging k;

            {
                this.k = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Task d;
                int i3 = i2;
                FirebaseMessaging firebaseMessaging = this.k;
                switch (i3) {
                    case 0:
                        if (firebaseMessaging.f.a() && firebaseMessaging.j(firebaseMessaging.g())) {
                            synchronized (firebaseMessaging) {
                                if (!firebaseMessaging.k) {
                                    firebaseMessaging.i(0L);
                                }
                            }
                            return;
                        }
                        return;
                    default:
                        final Context context3 = firebaseMessaging.b;
                        ProxyNotificationInitializer.a(context3);
                        GmsRpc gmsRpc2 = firebaseMessaging.c;
                        final boolean h = firebaseMessaging.h();
                        if (Build.VERSION.SDK_INT >= 29) {
                            SharedPreferences a = ProxyNotificationPreferences.a(context3);
                            if (!a.contains("proxy_retention") || a.getBoolean("proxy_retention", false) != h) {
                                Rpc rpc = gmsRpc2.c;
                                if (rpc.c.b() >= 241100000) {
                                    Bundle bundle = new Bundle();
                                    bundle.putBoolean("proxy_retention", h);
                                    d = zzv.a(rpc.b).b(4, bundle);
                                } else {
                                    d = Tasks.d(new IOException("SERVICE_NOT_AVAILABLE"));
                                }
                                d.c(new z2(2), new OnSuccessListener() { // from class: com.google.firebase.messaging.i
                                    @Override // com.google.android.gms.tasks.OnSuccessListener
                                    public final void a(Object obj) {
                                        SharedPreferences.Editor edit = ProxyNotificationPreferences.a(context3).edit();
                                        edit.putBoolean("proxy_retention", h);
                                        edit.apply();
                                    }
                                });
                            }
                        }
                        if (firebaseMessaging.h()) {
                            gmsRpc2.c.a().c(firebaseMessaging.g, new c(firebaseMessaging, 1));
                            return;
                        }
                        return;
                }
            }
        });
        final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-Messaging-Topics-Io"));
        Tasks.c(scheduledThreadPoolExecutor2, new Callable() { // from class: com.google.firebase.messaging.k
            /* JADX WARN: Type inference failed for: r7v2, types: [com.google.firebase.messaging.TopicsStore, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                TopicsStore topicsStore;
                Context context3 = context2;
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor3 = scheduledThreadPoolExecutor2;
                Metadata metadata2 = metadata;
                FirebaseApp firebaseApp2 = firebaseApp;
                FirebaseMessaging firebaseMessaging = this;
                FirebaseInstallationsApi firebaseInstallationsApi2 = firebaseInstallationsApi;
                synchronized (TopicsStore.class) {
                    try {
                        WeakReference weakReference = TopicsStore.b;
                        if (weakReference != null) {
                            topicsStore = (TopicsStore) weakReference.get();
                        } else {
                            topicsStore = null;
                        }
                        if (topicsStore == null) {
                            SharedPreferences sharedPreferences = context3.getSharedPreferences("com.google.android.gms.appid", 0);
                            ?? obj = new Object();
                            synchronized (obj) {
                                obj.a = SharedPreferencesQueue.a(sharedPreferences, scheduledThreadPoolExecutor3);
                            }
                            TopicsStore.b = new WeakReference(obj);
                            topicsStore = obj;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return new TopicsSubscriber(metadata2, topicsStore, new TopicSubscriptionClient(firebaseApp2, firebaseMessaging, firebaseInstallationsApi2), context3, scheduledThreadPoolExecutor3);
            }
        }).c(scheduledThreadPoolExecutor, new c(this, i2));
        scheduledThreadPoolExecutor.execute(new Runnable(this) { // from class: com.google.firebase.messaging.b
            public final /* synthetic */ FirebaseMessaging k;

            {
                this.k = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                Task d;
                int i3 = i;
                FirebaseMessaging firebaseMessaging = this.k;
                switch (i3) {
                    case 0:
                        if (firebaseMessaging.f.a() && firebaseMessaging.j(firebaseMessaging.g())) {
                            synchronized (firebaseMessaging) {
                                if (!firebaseMessaging.k) {
                                    firebaseMessaging.i(0L);
                                }
                            }
                            return;
                        }
                        return;
                    default:
                        final Context context3 = firebaseMessaging.b;
                        ProxyNotificationInitializer.a(context3);
                        GmsRpc gmsRpc2 = firebaseMessaging.c;
                        final boolean h = firebaseMessaging.h();
                        if (Build.VERSION.SDK_INT >= 29) {
                            SharedPreferences a = ProxyNotificationPreferences.a(context3);
                            if (!a.contains("proxy_retention") || a.getBoolean("proxy_retention", false) != h) {
                                Rpc rpc = gmsRpc2.c;
                                if (rpc.c.b() >= 241100000) {
                                    Bundle bundle = new Bundle();
                                    bundle.putBoolean("proxy_retention", h);
                                    d = zzv.a(rpc.b).b(4, bundle);
                                } else {
                                    d = Tasks.d(new IOException("SERVICE_NOT_AVAILABLE"));
                                }
                                d.c(new z2(2), new OnSuccessListener() { // from class: com.google.firebase.messaging.i
                                    @Override // com.google.android.gms.tasks.OnSuccessListener
                                    public final void a(Object obj) {
                                        SharedPreferences.Editor edit = ProxyNotificationPreferences.a(context3).edit();
                                        edit.putBoolean("proxy_retention", h);
                                        edit.apply();
                                    }
                                });
                            }
                        }
                        if (firebaseMessaging.h()) {
                            gmsRpc2.c.a().c(firebaseMessaging.g, new c(firebaseMessaging, 1));
                            return;
                        }
                        return;
                }
            }
        });
    }

    public static void c(long j, Runnable runnable) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (n == null) {
                    n = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                n.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized Store d(Context context) {
        Store store;
        synchronized (FirebaseMessaging.class) {
            try {
                if (l == null) {
                    l = new Store(context);
                }
                store = l;
            } catch (Throwable th) {
                throw th;
            }
        }
        return store;
    }

    @Keep
    @Deprecated
    public static synchronized FirebaseMessaging getInstance(FirebaseApp firebaseApp) {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            firebaseApp.a();
            firebaseMessaging = (FirebaseMessaging) firebaseApp.d.a(FirebaseMessaging.class);
            Preconditions.f(firebaseMessaging, "Firebase Messaging component is not present");
        }
        return firebaseMessaging;
    }

    public final String a() {
        Task task;
        final Store.Token g = g();
        if (!j(g)) {
            return g.a;
        }
        final String b = Metadata.b(this.a);
        RequestDeduplicator requestDeduplicator = this.e;
        synchronized (requestDeduplicator) {
            task = (Task) requestDeduplicator.b.get(b);
            if (task != null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Joining ongoing request for: " + b);
                }
            } else {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Making new request for: " + b);
                }
                GmsRegistrationClient gmsRegistrationClient = this.d;
                task = gmsRegistrationClient.c().e(Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Task")), new f(0, gmsRegistrationClient)).l(this.h, new SuccessContinuation() { // from class: com.google.firebase.messaging.e
                    @Override // com.google.android.gms.tasks.SuccessContinuation
                    public final Task a(Object obj) {
                        FirebaseMessaging firebaseMessaging = FirebaseMessaging.this;
                        String str = b;
                        Store.Token token = g;
                        String str2 = (String) obj;
                        Store d = FirebaseMessaging.d(firebaseMessaging.b);
                        String e = firebaseMessaging.e();
                        String a = firebaseMessaging.i.a();
                        synchronized (d) {
                            String a2 = Store.Token.a(System.currentTimeMillis(), str2, a);
                            if (a2 != null) {
                                SharedPreferences.Editor edit = d.a.edit();
                                edit.putString(Store.a(e, str), a2);
                                edit.commit();
                            }
                        }
                        if (firebaseMessaging.d.b() || token == null || !str2.equals(token.a)) {
                            FirebaseApp firebaseApp = firebaseMessaging.a;
                            firebaseApp.a();
                            String str3 = firebaseApp.b;
                            if ("[DEFAULT]".equals(str3)) {
                                if (Log.isLoggable("FirebaseMessaging", 3)) {
                                    StringBuilder sb = new StringBuilder("Invoking onNewToken for app: ");
                                    firebaseApp.a();
                                    sb.append(str3);
                                    Log.d("FirebaseMessaging", sb.toString());
                                }
                                boolean b2 = firebaseMessaging.d.b();
                                Intent intent = new Intent();
                                intent.putExtra("token", str2);
                                if (b2) {
                                    intent.setAction("com.google.firebase.messaging.FCM_REGISTERED");
                                } else {
                                    intent.setAction("com.google.firebase.messaging.NEW_TOKEN");
                                }
                                new FcmBroadcastProcessor(firebaseMessaging.b).b(intent);
                            }
                        }
                        return Tasks.e(str2);
                    }
                }).e(requestDeduplicator.a, new g(2, requestDeduplicator, b));
                requestDeduplicator.b.put(b, task);
            }
        }
        try {
            return (String) Tasks.a(task);
        } catch (InterruptedException | ExecutionException e) {
            throw new IOException("FCM Registration failed!", e);
        }
    }

    public final Task b() {
        if (this.d.b()) {
            return Tasks.d(new IllegalStateException("API disabled. Please use {@link #unregister()} instead or enable this API by removing {@code <meta-data android:name=\"firebase_messaging_installation_id_enabled\" android:value=\"true\" />} from your app's manifest."));
        }
        if (g() == null) {
            return Tasks.e(null);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Network-Io")).execute(new Runnable() { // from class: com.google.firebase.messaging.d
            /* JADX WARN: Removed duplicated region for block: B:10:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void run() {
                Task d;
                Store d2;
                FirebaseMessaging firebaseMessaging = FirebaseMessaging.this;
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                try {
                    GmsRpc gmsRpc = firebaseMessaging.c;
                    gmsRpc.getClass();
                    Bundle bundle = new Bundle();
                    bundle.putString("delete", "1");
                    try {
                        gmsRpc.a(Metadata.b(gmsRpc.a), bundle, false);
                        d = gmsRpc.c.b(bundle);
                    } catch (InterruptedException e) {
                        e = e;
                        d = Tasks.d(e);
                        Tasks.a(d.d(new z2(2), new fe(23, gmsRpc)));
                        d2 = FirebaseMessaging.d(firebaseMessaging.b);
                        String e2 = firebaseMessaging.e();
                        String b = Metadata.b(firebaseMessaging.a);
                        synchronized (d2) {
                        }
                    } catch (ExecutionException e3) {
                        e = e3;
                        d = Tasks.d(e);
                        Tasks.a(d.d(new z2(2), new fe(23, gmsRpc)));
                        d2 = FirebaseMessaging.d(firebaseMessaging.b);
                        String e22 = firebaseMessaging.e();
                        String b2 = Metadata.b(firebaseMessaging.a);
                        synchronized (d2) {
                        }
                    }
                    Tasks.a(d.d(new z2(2), new fe(23, gmsRpc)));
                    d2 = FirebaseMessaging.d(firebaseMessaging.b);
                    String e222 = firebaseMessaging.e();
                    String b22 = Metadata.b(firebaseMessaging.a);
                    synchronized (d2) {
                        String a = Store.a(e222, b22);
                        SharedPreferences.Editor edit = d2.a.edit();
                        edit.remove(a);
                        edit.commit();
                    }
                    taskCompletionSource2.b(null);
                } catch (Exception e4) {
                    taskCompletionSource2.a(e4);
                }
            }
        });
        return taskCompletionSource.a;
    }

    public final String e() {
        FirebaseApp firebaseApp = this.a;
        firebaseApp.a();
        if ("[DEFAULT]".equals(firebaseApp.b)) {
            return "";
        }
        return firebaseApp.c();
    }

    public final Task f() {
        if (this.d.b()) {
            return Tasks.d(new IllegalStateException("API disabled. Please use {@link #register()} instead or enable this API by removing {@code <meta-data android:name=\"firebase_messaging_installation_id_enabled\" android:value=\"true\" />} from your app's manifest."));
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.g.execute(new f3(5, this, taskCompletionSource));
        return taskCompletionSource.a;
    }

    public final Store.Token g() {
        Store.Token b;
        Store d = d(this.b);
        String e = e();
        String b2 = Metadata.b(this.a);
        synchronized (d) {
            b = Store.Token.b(d.a.getString(Store.a(e, b2), null));
        }
        return b;
    }

    public final boolean h() {
        String notificationDelegate;
        Context context = this.b;
        ProxyNotificationInitializer.a(context);
        if (Build.VERSION.SDK_INT >= 29) {
            if (Binder.getCallingUid() == context.getApplicationInfo().uid) {
                notificationDelegate = ((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationDelegate();
                if ("com.google.android.gms".equals(notificationDelegate)) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "GMS core is set for proxying");
                    }
                    FirebaseApp firebaseApp = this.a;
                    firebaseApp.a();
                    if (firebaseApp.d.a(AnalyticsConnector.class) == null) {
                        if (MessagingAnalytics.a() && m != null) {
                            return true;
                        }
                    } else {
                        return true;
                    }
                }
            } else {
                Log.e("FirebaseMessaging", "error retrieving notification delegate for package " + context.getPackageName());
                return false;
            }
        } else if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Platform doesn't support proxying.");
        }
        return false;
    }

    public final synchronized void i(long j) {
        c(j, new SyncTask(this, Math.min(Math.max(30L, 2 * j), 28800L)));
        this.k = true;
    }

    public final boolean j(Store.Token token) {
        String str;
        if (token != null) {
            String str2 = token.a;
            String a = this.i.a();
            if (System.currentTimeMillis() <= token.c + 604800000 && a.equals(token.b)) {
                if (this.d.b()) {
                    try {
                        str = (String) Tasks.a(((FirebaseInstallations) this.j).c());
                    } catch (InterruptedException | ExecutionException unused) {
                        str = null;
                    }
                    return !str2.equalsIgnoreCase(str);
                }
                if (str2.length() <= 22) {
                    return true;
                }
                return false;
            }
        }
        return true;
    }
}
