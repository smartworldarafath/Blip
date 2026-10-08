package com.google.firebase.messaging;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zzm;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.fe;
import defpackage.z2;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GmsRegistrationClient {
    public final zzm a;
    public final FirebaseApp b;
    public final FirebaseInstallationsApi c;
    public final GmsRpc d;
    public final Metadata e;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.GoogleApi, com.google.android.gms.internal.cloudmessaging.zzm] */
    public GmsRegistrationClient(Context context, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, GmsRpc gmsRpc, Metadata metadata) {
        this.a = new GoogleApi(context, zzm.j, Api.ApiOptions.a, GoogleApi.Settings.b);
        this.b = firebaseApp;
        this.c = firebaseInstallationsApi;
        this.d = gmsRpc;
        this.e = metadata;
    }

    public static Exception a(Task task) {
        if (task.f() != null) {
            return task.f();
        }
        return new ExecutionException(new RuntimeException("Unexpected Error"));
    }

    public final boolean b() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        FirebaseApp firebaseApp = this.b;
        firebaseApp.a();
        Context context = firebaseApp.a;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (bundle = (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)).metaData) != null && bundle.containsKey("firebase_messaging_installation_id_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_messaging_installation_id_enabled");
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public final Task c() {
        Task d;
        boolean b = b();
        if (b && this.e.c() >= 261200000) {
            ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Network-Io"));
            return ((FirebaseInstallations) this.c).d().e(newSingleThreadExecutor, new g(1, this, newSingleThreadExecutor)).e(newSingleThreadExecutor, new g(0, this, newSingleThreadExecutor));
        }
        GmsRpc gmsRpc = this.d;
        String b2 = Metadata.b(gmsRpc.a);
        Bundle bundle = new Bundle();
        try {
            gmsRpc.a(b2, bundle, b);
            d = gmsRpc.c.b(bundle);
        } catch (InterruptedException | ExecutionException e) {
            d = Tasks.d(e);
        }
        return d.d(new z2(2), new fe(23, gmsRpc));
    }
}
