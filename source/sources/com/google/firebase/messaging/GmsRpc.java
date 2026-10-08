package com.google.firebase.messaging;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GmsRpc {
    public final FirebaseApp a;
    public final Metadata b;
    public final Rpc c;
    public final Provider d;
    public final Provider e;
    public final FirebaseInstallationsApi f;

    public GmsRpc(FirebaseApp firebaseApp, Metadata metadata, Provider provider, Provider provider2, FirebaseInstallationsApi firebaseInstallationsApi) {
        firebaseApp.a();
        Rpc rpc = new Rpc(firebaseApp.a);
        this.a = firebaseApp;
        this.b = metadata;
        this.c = rpc;
        this.d = provider;
        this.e = provider2;
        this.f = firebaseInstallationsApi;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ea A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(String str, Bundle bundle, boolean z) {
        String str2;
        String str3;
        HeartBeatInfo heartBeatInfo;
        HeartBeatInfo.HeartBeat a;
        bundle.putString("scope", "*");
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        FirebaseApp firebaseApp = this.a;
        firebaseApp.a();
        bundle.putString("gmp_app_id", firebaseApp.c.b);
        bundle.putString("gmsv", Integer.toString(this.b.c()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.b.a());
        Metadata metadata = this.b;
        synchronized (metadata) {
            try {
                if (metadata.c == null) {
                    metadata.f();
                }
                str2 = metadata.c;
            } finally {
            }
        }
        bundle.putString("app_ver_name", str2);
        FirebaseApp firebaseApp2 = this.a;
        firebaseApp2.a();
        try {
            str3 = Base64.encodeToString(MessageDigest.getInstance("SHA-1").digest(firebaseApp2.b.getBytes()), 11);
        } catch (NoSuchAlgorithmException unused) {
            str3 = "[HASH-ERROR]";
        }
        bundle.putString("firebase-app-name-hash", str3);
        if (z) {
            FirebaseApp firebaseApp3 = this.a;
            firebaseApp3.a();
            bundle.putString("Goog-Api-Key", firebaseApp3.c.a);
        }
        try {
            String a2 = ((InstallationTokenResult) Tasks.a(((FirebaseInstallations) this.f).d())).a();
            if (!TextUtils.isEmpty(a2)) {
                bundle.putString("Goog-Firebase-Installations-Auth", a2);
            } else {
                Log.w("FirebaseMessaging", "FIS auth token is empty");
            }
        } catch (InterruptedException e) {
            e = e;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
            bundle.putString("appid", (String) Tasks.a(((FirebaseInstallations) this.f).c()));
            bundle.putString("cliv", "fcm-25.1.2");
            heartBeatInfo = (HeartBeatInfo) this.e.get();
            UserAgentPublisher userAgentPublisher = (UserAgentPublisher) this.d.get();
            if (heartBeatInfo != null) {
                return;
            } else {
                return;
            }
        } catch (ExecutionException e2) {
            e = e2;
            Log.e("FirebaseMessaging", "Failed to get FIS auth token", e);
            bundle.putString("appid", (String) Tasks.a(((FirebaseInstallations) this.f).c()));
            bundle.putString("cliv", "fcm-25.1.2");
            heartBeatInfo = (HeartBeatInfo) this.e.get();
            UserAgentPublisher userAgentPublisher2 = (UserAgentPublisher) this.d.get();
            if (heartBeatInfo != null) {
            }
        }
        bundle.putString("appid", (String) Tasks.a(((FirebaseInstallations) this.f).c()));
        bundle.putString("cliv", "fcm-25.1.2");
        heartBeatInfo = (HeartBeatInfo) this.e.get();
        UserAgentPublisher userAgentPublisher22 = (UserAgentPublisher) this.d.get();
        if (heartBeatInfo != null && userAgentPublisher22 != null && (a = ((DefaultHeartBeatController) heartBeatInfo).a()) != HeartBeatInfo.HeartBeat.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(a.j));
            bundle.putString("Firebase-Client", ((DefaultUserAgentPublisher) userAgentPublisher22).b());
        }
    }
}
