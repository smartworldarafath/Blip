package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.InstallationTokenResult;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TopicsSubscriber {
    public final Context a;
    public final Metadata b;
    public final TopicSubscriptionClient c;
    public final ScheduledThreadPoolExecutor e;
    public final TopicsStore g;
    public final ArrayMap d = new SimpleArrayMap(0);
    public boolean f = false;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public TopicsSubscriber(Metadata metadata, TopicsStore topicsStore, TopicSubscriptionClient topicSubscriptionClient, Context context, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        this.b = metadata;
        this.g = topicsStore;
        this.c = topicSubscriptionClient;
        this.a = context;
        this.e = scheduledThreadPoolExecutor;
    }

    public final synchronized void a(boolean z) {
        this.f = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00dd A[Catch: IOException -> 0x0089, TRY_LEAVE, TryCatch #0 {IOException -> 0x0089, blocks: (B:8:0x002e, B:13:0x00d5, B:15:0x00dd, B:61:0x0040, B:63:0x0048, B:65:0x0076, B:66:0x008c, B:68:0x0094, B:70:0x00c2), top: B:7:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b() {
        TopicOperation a;
        TopicsStore topicsStore;
        while (true) {
            synchronized (this) {
                try {
                    a = this.g.a();
                    if (a == null) {
                        break;
                    }
                } finally {
                }
            }
            TopicSubscriptionClient topicSubscriptionClient = this.c;
            try {
                String str = a.b;
                String str2 = a.a;
                int hashCode = str.hashCode();
                if (hashCode != 83) {
                    if (hashCode == 85 && str.equals("U")) {
                        FirebaseInstallations firebaseInstallations = (FirebaseInstallations) topicSubscriptionClient.a;
                        String a2 = ((InstallationTokenResult) TopicSubscriptionClient.a(firebaseInstallations.d())).a();
                        topicSubscriptionClient.c.a();
                        topicSubscriptionClient.b(str2, a2, (String) TopicSubscriptionClient.a(firebaseInstallations.c()), "unsubscribe");
                        if (Log.isLoggable("FirebaseMessaging", 3)) {
                            Log.d("FirebaseMessaging", "Unsubscribe from topic: " + str2 + " succeeded.");
                        }
                        topicsStore = this.g;
                        synchronized (topicsStore) {
                            SharedPreferencesQueue sharedPreferencesQueue = topicsStore.a;
                            String str3 = a.c;
                            synchronized (sharedPreferencesQueue.d) {
                                if (sharedPreferencesQueue.d.remove(str3)) {
                                    sharedPreferencesQueue.e.execute(new j(0, sharedPreferencesQueue));
                                }
                            }
                        }
                        synchronized (this.d) {
                            try {
                                String str4 = a.c;
                                if (this.d.containsKey(str4)) {
                                    ArrayDeque arrayDeque = (ArrayDeque) this.d.get(str4);
                                    TaskCompletionSource taskCompletionSource = (TaskCompletionSource) arrayDeque.poll();
                                    if (taskCompletionSource != null) {
                                        taskCompletionSource.b(null);
                                    }
                                    if (arrayDeque.isEmpty()) {
                                        this.d.remove(str4);
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "Unknown topic operation" + a + ".");
                    }
                    topicsStore = this.g;
                    synchronized (topicsStore) {
                    }
                } else {
                    if (str.equals("S")) {
                        FirebaseInstallations firebaseInstallations2 = (FirebaseInstallations) topicSubscriptionClient.a;
                        String a3 = ((InstallationTokenResult) TopicSubscriptionClient.a(firebaseInstallations2.d())).a();
                        topicSubscriptionClient.c.a();
                        topicSubscriptionClient.b(str2, a3, (String) TopicSubscriptionClient.a(firebaseInstallations2.c()), "subscribe");
                        if (Log.isLoggable("FirebaseMessaging", 3)) {
                            Log.d("FirebaseMessaging", "Subscribe to topic: " + str2 + " succeeded.");
                        }
                        topicsStore = this.g;
                        synchronized (topicsStore) {
                        }
                    }
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                    }
                    topicsStore = this.g;
                    synchronized (topicsStore) {
                    }
                }
            } catch (IOException e) {
                if (!"SERVICE_NOT_AVAILABLE".equals(e.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e.getMessage())) {
                    if (e.getMessage() == null) {
                        Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                    } else {
                        throw e;
                    }
                } else {
                    Log.e("FirebaseMessaging", "Topic operation failed: " + e.getMessage() + ". Will retry Topic operation.");
                }
                return false;
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "topic sync succeeded");
        }
        return true;
    }

    public final void c(long j) {
        this.e.schedule(new TopicsSyncTask(this, this.a, this.b, Math.min(Math.max(30L, 2 * j), 28800L)), j, TimeUnit.SECONDS);
        a(true);
    }
}
