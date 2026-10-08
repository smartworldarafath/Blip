package com.google.firebase.messaging;

import android.util.Pair;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.InstallationTokenResult;
import defpackage.y8;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Continuation {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ g(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object g(Task task) {
        switch (this.j) {
            case 0:
                GmsRegistrationClient gmsRegistrationClient = (GmsRegistrationClient) this.k;
                ExecutorService executorService = (ExecutorService) this.l;
                if (!task.k()) {
                    return Tasks.d(GmsRegistrationClient.a(task));
                }
                String str = (String) ((Pair) task.g()).first;
                String str2 = (String) ((Pair) task.g()).second;
                FirebaseApp firebaseApp = gmsRegistrationClient.b;
                firebaseApp.a();
                FirebaseOptions firebaseOptions = firebaseApp.c;
                String str3 = firebaseOptions.a;
                firebaseApp.a();
                return gmsRegistrationClient.a.c(new RegisterRequest(Metadata.b(firebaseApp), firebaseOptions.b, str3, str, str2)).d(executorService, new y8(str, 0));
            case 1:
                GmsRegistrationClient gmsRegistrationClient2 = (GmsRegistrationClient) this.k;
                ExecutorService executorService2 = (ExecutorService) this.l;
                if (!task.k()) {
                    return Tasks.d(GmsRegistrationClient.a(task));
                }
                return ((FirebaseInstallations) gmsRegistrationClient2.c).c().e(executorService2, new f(gmsRegistrationClient2, ((InstallationTokenResult) task.g()).a()));
            default:
                RequestDeduplicator requestDeduplicator = (RequestDeduplicator) this.k;
                String str4 = (String) this.l;
                synchronized (requestDeduplicator) {
                    requestDeduplicator.b.remove(str4);
                }
                return task;
        }
    }
}
