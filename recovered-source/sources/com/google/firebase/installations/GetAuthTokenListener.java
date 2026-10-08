package com.google.firebase.installations;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import defpackage.fe;
import io.sentry.d;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GetAuthTokenListener implements StateListener {
    public final Utils a;
    public final TaskCompletionSource b;

    public GetAuthTokenListener(Utils utils, TaskCompletionSource taskCompletionSource) {
        this.a = utils;
        this.b = taskCompletionSource;
    }

    @Override // com.google.firebase.installations.StateListener
    public final boolean a(Exception exc) {
        this.b.c(exc);
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.firebase.installations.AutoValue_InstallationTokenResult$Builder, java.lang.Object] */
    @Override // com.google.firebase.installations.StateListener
    public final boolean b(PersistedInstallationEntry persistedInstallationEntry) {
        String str;
        if (persistedInstallationEntry.h() && !this.a.a(persistedInstallationEntry)) {
            ?? obj = new Object();
            String a = persistedInstallationEntry.a();
            if (a != null) {
                obj.a = a;
                obj.b = persistedInstallationEntry.b();
                obj.c = (byte) (obj.c | 1);
                long e = persistedInstallationEntry.e();
                byte b = (byte) (obj.c | 2);
                obj.c = b;
                if (b == 3 && (str = obj.a) != null) {
                    this.b.b(new AutoValue_InstallationTokenResult(obj.b, e, str));
                    return true;
                }
                StringBuilder sb = new StringBuilder();
                if (obj.a == null) {
                    sb.append(" token");
                }
                if ((obj.c & 1) == 0) {
                    sb.append(" tokenExpirationTimestamp");
                }
                if ((obj.c & 2) == 0) {
                    sb.append(" tokenCreationTimestamp");
                }
                fe.n(sb, "Missing required properties:");
                return false;
            }
            d.f("Null token");
        }
        return false;
    }
}
