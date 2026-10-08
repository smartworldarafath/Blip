package com.google.firebase.installations;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.datastore.preferences.core.Preferences;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.gms.tasks.zzw;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Lazy;
import com.google.firebase.datastorage.JavaDataStorage;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.internal.FidListener;
import com.google.firebase.installations.internal.FidListenerHandle;
import com.google.firebase.installations.local.IidStore;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.remote.FirebaseInstallationServiceClient;
import com.google.firebase.installations.remote.InstallationResponse;
import com.google.firebase.installations.remote.TokenResult;
import com.google.firebase.installations.time.SystemClock;
import com.google.firebase.messaging.FirebaseMessaging;
import defpackage.l8;
import defpackage.m5;
import defpackage.m8;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirebaseInstallations implements FirebaseInstallationsApi {
    public static final Object m = new Object();
    public final FirebaseApp a;
    public final FirebaseInstallationServiceClient b;
    public final PersistedInstallation c;
    public final Utils d;
    public final Lazy e;
    public final RandomFidGenerator f;
    public final Object g;
    public final ExecutorService h;
    public final Executor i;
    public String j;
    public final HashSet k;
    public final ArrayList l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.firebase.installations.FirebaseInstallations$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements FidListenerHandle {
    }

    static {
        new ThreadFactory() { // from class: com.google.firebase.installations.FirebaseInstallations.1
            public final AtomicInteger a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, String.format("firebase-installations-executor-%d", Integer.valueOf(this.a.getAndIncrement())));
            }
        };
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.firebase.installations.time.SystemClock, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.firebase.installations.RandomFidGenerator, java.lang.Object] */
    public FirebaseInstallations(FirebaseApp firebaseApp, Provider provider, ExecutorService executorService, Executor executor) {
        firebaseApp.a();
        FirebaseInstallationServiceClient firebaseInstallationServiceClient = new FirebaseInstallationServiceClient(firebaseApp.a, provider);
        PersistedInstallation persistedInstallation = new PersistedInstallation(firebaseApp);
        if (SystemClock.a == null) {
            SystemClock.a = new Object();
        }
        SystemClock systemClock = SystemClock.a;
        if (Utils.c == null) {
            Utils.c = new Utils(systemClock);
        }
        Utils utils = Utils.c;
        Lazy lazy = new Lazy(new m5(2, firebaseApp));
        ?? obj = new Object();
        this.g = new Object();
        this.k = new HashSet();
        this.l = new ArrayList();
        this.a = firebaseApp;
        this.b = firebaseInstallationServiceClient;
        this.c = persistedInstallation;
        this.d = utils;
        this.e = lazy;
        this.f = obj;
        this.h = executorService;
        this.i = executor;
    }

    /* JADX WARN: Finally extract failed */
    public final void a() {
        PersistedInstallationEntry c;
        synchronized (m) {
            try {
                FirebaseApp firebaseApp = this.a;
                firebaseApp.a();
                CrossProcessLock a = CrossProcessLock.a(firebaseApp.a);
                try {
                    c = this.c.c();
                    if (c.g()) {
                        String f = f(c);
                        PersistedInstallation persistedInstallation = this.c;
                        c = c.p(f);
                        persistedInstallation.b(c);
                    }
                    if (a != null) {
                        a.b();
                    }
                } catch (Throwable th) {
                    if (a != null) {
                        a.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        j(c);
        this.i.execute(new Runnable() { // from class: com.google.firebase.installations.a
            /* JADX WARN: Finally extract failed */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void run() {
                PersistedInstallationEntry c2;
                PersistedInstallationEntry h;
                boolean z;
                FirebaseInstallations firebaseInstallations = FirebaseInstallations.this;
                Object obj = FirebaseInstallations.m;
                synchronized (obj) {
                    try {
                        FirebaseApp firebaseApp2 = firebaseInstallations.a;
                        firebaseApp2.a();
                        CrossProcessLock a2 = CrossProcessLock.a(firebaseApp2.a);
                        try {
                            c2 = firebaseInstallations.c.c();
                            if (a2 != null) {
                                a2.b();
                            }
                        } catch (Throwable th3) {
                            if (a2 != null) {
                                a2.b();
                            }
                            throw th3;
                        }
                    } finally {
                    }
                }
                try {
                    if (!c2.f() && !c2.i()) {
                        if (firebaseInstallations.d.a(c2)) {
                            h = firebaseInstallations.b(c2);
                            synchronized (obj) {
                                try {
                                    FirebaseApp firebaseApp3 = firebaseInstallations.a;
                                    firebaseApp3.a();
                                    CrossProcessLock a3 = CrossProcessLock.a(firebaseApp3.a);
                                    try {
                                        firebaseInstallations.c.b(h);
                                        if (a3 != null) {
                                            a3.b();
                                        }
                                    } catch (Throwable th4) {
                                        if (a3 != null) {
                                            a3.b();
                                        }
                                        throw th4;
                                    }
                                } finally {
                                }
                            }
                            synchronized (firebaseInstallations) {
                                if (h.h() && !TextUtils.isEmpty(h.c())) {
                                    z = true;
                                    if (TextUtils.equals(c2.c(), h.c())) {
                                        z = true ^ c2.h();
                                    }
                                } else {
                                    z = false;
                                }
                                if (z) {
                                    Iterator it = firebaseInstallations.k.iterator();
                                    while (it.hasNext()) {
                                        FirebaseMessaging firebaseMessaging = ((m8) ((FidListener) it.next())).a;
                                        if (firebaseMessaging.g() != null) {
                                            if (Log.isLoggable("FirebaseMessaging", 3)) {
                                                Log.d("FirebaseMessaging", "FID Change detected! Triggering re-sync");
                                            }
                                            synchronized (firebaseMessaging) {
                                                if (!firebaseMessaging.k) {
                                                    firebaseMessaging.i(0L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (h.h()) {
                                String c3 = h.c();
                                synchronized (firebaseInstallations) {
                                    firebaseInstallations.j = c3;
                                }
                            }
                            if (h.f()) {
                                firebaseInstallations.i(new Exception());
                                return;
                            } else if (h.g()) {
                                firebaseInstallations.i(new IOException("Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."));
                                return;
                            } else {
                                firebaseInstallations.j(h);
                                return;
                            }
                        }
                        return;
                    }
                    h = firebaseInstallations.h(c2);
                    synchronized (obj) {
                    }
                } catch (FirebaseInstallationsException e) {
                    firebaseInstallations.i(e);
                }
            }
        });
    }

    public final PersistedInstallationEntry b(PersistedInstallationEntry persistedInstallationEntry) {
        FirebaseInstallationServiceClient firebaseInstallationServiceClient = this.b;
        FirebaseApp firebaseApp = this.a;
        firebaseApp.a();
        String str = firebaseApp.c.a;
        String c = persistedInstallationEntry.c();
        FirebaseApp firebaseApp2 = this.a;
        firebaseApp2.a();
        TokenResult b = firebaseInstallationServiceClient.b(str, c, firebaseApp2.c.h, persistedInstallationEntry.d());
        int ordinal = b.a().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    synchronized (this) {
                        this.j = null;
                    }
                    return persistedInstallationEntry.n();
                }
                throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
            }
            return persistedInstallationEntry.m();
        }
        String b2 = b.b();
        long c2 = b.c();
        ((SystemClock) this.d.a).getClass();
        return persistedInstallationEntry.l(c2, System.currentTimeMillis() / 1000, b2);
    }

    public final Task c() {
        String str;
        e();
        synchronized (this) {
            str = this.j;
        }
        if (str != null) {
            return Tasks.e(str);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GetIdListener getIdListener = new GetIdListener(taskCompletionSource);
        synchronized (this.g) {
            this.l.add(getIdListener);
        }
        zzw zzwVar = taskCompletionSource.a;
        this.h.execute(new l8(this, 0));
        return zzwVar;
    }

    public final Task d() {
        e();
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        GetAuthTokenListener getAuthTokenListener = new GetAuthTokenListener(this.d, taskCompletionSource);
        synchronized (this.g) {
            this.l.add(getAuthTokenListener);
        }
        zzw zzwVar = taskCompletionSource.a;
        this.h.execute(new l8(this, 1));
        return zzwVar;
    }

    public final void e() {
        FirebaseApp firebaseApp = this.a;
        firebaseApp.a();
        Preconditions.d(firebaseApp.c.b, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        Preconditions.d(firebaseApp.c.h, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        Preconditions.d(firebaseApp.c.a, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        firebaseApp.a();
        String str = firebaseApp.c.b;
        Pattern pattern = Utils.b;
        Preconditions.a("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.", str.contains(":"));
        firebaseApp.a();
        Preconditions.a("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.", Utils.b.matcher(firebaseApp.c.a).matches());
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
    
        if ("[DEFAULT]".equals(r1) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String f(PersistedInstallationEntry persistedInstallationEntry) {
        PublicKey publicKey;
        FirebaseApp firebaseApp = this.a;
        firebaseApp.a();
        String str = firebaseApp.b;
        boolean equals = str.equals("CHIME_ANDROID_SDK");
        RandomFidGenerator randomFidGenerator = this.f;
        if (!equals) {
            firebaseApp.a();
        }
        if (persistedInstallationEntry.j()) {
            JavaDataStorage javaDataStorage = ((IidStore) this.e.get()).a;
            String str2 = null;
            String str3 = (String) javaDataStorage.c(IidStore.d, null);
            if (str3 != null) {
                str2 = str3;
            } else {
                String str4 = (String) javaDataStorage.c(IidStore.c, null);
                if (str4 != null) {
                    try {
                        publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str4, 8)));
                    } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
                        Log.w("ContentValues", "Invalid key stored " + e);
                        publicKey = null;
                    }
                    if (publicKey != null) {
                        try {
                            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
                            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
                            str2 = Base64.encodeToString(digest, 0, 8, 11);
                        } catch (NoSuchAlgorithmException unused) {
                            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
                        }
                    }
                }
            }
            if (TextUtils.isEmpty(str2)) {
                randomFidGenerator.getClass();
                return RandomFidGenerator.a();
            }
            return str2;
        }
        randomFidGenerator.getClass();
        return RandomFidGenerator.a();
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, com.google.firebase.installations.internal.FidListenerHandle] */
    public final synchronized FidListenerHandle g(m8 m8Var) {
        this.k.add(m8Var);
        return new Object();
    }

    public final PersistedInstallationEntry h(PersistedInstallationEntry persistedInstallationEntry) {
        String str = null;
        if (persistedInstallationEntry.c() != null && persistedInstallationEntry.c().length() == 11) {
            IidStore iidStore = (IidStore) this.e.get();
            iidStore.getClass();
            String[] strArr = IidStore.e;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                String str2 = strArr[i];
                String str3 = (String) iidStore.a.c(new Preferences.Key("|T|" + iidStore.b + "|" + str2), null);
                if (str3 != null && !str3.isEmpty()) {
                    if (str3.startsWith("{")) {
                        try {
                            str = new JSONObject(str3).getString("token");
                        } catch (JSONException unused) {
                        }
                    } else {
                        str = str3;
                    }
                } else {
                    i++;
                }
            }
        }
        FirebaseApp firebaseApp = this.a;
        firebaseApp.a();
        String str4 = firebaseApp.c.a;
        String c = persistedInstallationEntry.c();
        firebaseApp.a();
        String str5 = firebaseApp.c.h;
        firebaseApp.a();
        InstallationResponse a = this.b.a(str4, c, str5, firebaseApp.c.b, str);
        int ordinal = a.d().ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return persistedInstallationEntry.m();
            }
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
        }
        String b = a.b();
        String c2 = a.c();
        ((SystemClock) this.d.a).getClass();
        return persistedInstallationEntry.o(b, c2, System.currentTimeMillis() / 1000, a.a().b(), a.a().c());
    }

    public final void i(Exception exc) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((StateListener) it.next()).a(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(PersistedInstallationEntry persistedInstallationEntry) {
        synchronized (this.g) {
            try {
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    if (((StateListener) it.next()).b(persistedInstallationEntry)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
