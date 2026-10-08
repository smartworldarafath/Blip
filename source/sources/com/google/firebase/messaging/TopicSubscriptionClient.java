package com.google.firebase.messaging;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class TopicSubscriptionClient {
    public final FirebaseInstallationsApi a;
    public final FirebaseApp b;
    public final FirebaseMessaging c;

    public TopicSubscriptionClient(FirebaseApp firebaseApp, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi) {
        this.a = firebaseInstallationsApi;
        this.b = firebaseApp;
        this.c = firebaseMessaging;
    }

    public static Object a(Task task) {
        try {
            return Tasks.b(task, 30L);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException(e2);
            }
            throw ((IOException) cause);
        }
    }

    public final void b(String str, String str2, String str3, String str4) {
        if (str2 != null && str3 != null) {
            FirebaseApp firebaseApp = this.b;
            firebaseApp.a();
            FirebaseOptions firebaseOptions = firebaseApp.c;
            String str5 = firebaseOptions.h;
            firebaseApp.a();
            String str6 = firebaseOptions.a;
            if (str5 != null) {
                StringBuilder o = q.o("https://fcmregistrations.googleapis.com/v1/projects/", str5, "/registrations/", str3, "/topicSubscriptions/");
                o.append(str);
                o.append(":");
                o.append(str4);
                URL url = new URL(o.toString());
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    StringBuilder o2 = q.o("Topic ", str4, " for: ", str, " with url: ");
                    o2.append(url);
                    Log.d("FirebaseMessaging", o2.toString());
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("x-goog-api-key", str6);
                httpURLConnection.setRequestProperty("x-goog-firebase-installations-auth", str2);
                httpURLConnection.setDoOutput(false);
                try {
                    try {
                        int responseCode = httpURLConnection.getResponseCode();
                        httpURLConnection.disconnect();
                        if (responseCode >= 200 && responseCode < 300) {
                            if (Log.isLoggable("FirebaseMessaging", 3)) {
                                Log.d("FirebaseMessaging", jb.h("Topic ", str4, " for: ", str, " succeeded."));
                                return;
                            }
                            return;
                        }
                        if (responseCode != 404 && responseCode != 403) {
                            if (responseCode >= 500) {
                                k8.j("INTERNAL_SERVER_ERROR");
                                return;
                            }
                            throw new IOException("Topic " + str4 + " failed with status: " + responseCode);
                        }
                        if (Log.isLoggable("FirebaseMessaging", 3)) {
                            Log.d("FirebaseMessaging", "Topic " + str4 + " failed: " + httpURLConnection.getResponseMessage());
                        }
                        fe.q("Topic ", str4, " failed: ", httpURLConnection.getResponseMessage());
                        return;
                    } catch (IOException e) {
                        throw new IOException("SERVICE_NOT_AVAILABLE", e);
                    }
                } catch (Throwable th) {
                    httpURLConnection.disconnect();
                    throw th;
                }
            }
            k8.j("Project ID or API Key is missing");
            return;
        }
        k8.j("FIS auth token or FIS ID is empty");
    }
}
