package com.google.firebase.messaging;

import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.messaging.WithinAppServiceConnection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Continuation, OnCompleteListener {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ f(GmsRegistrationClient gmsRegistrationClient, String str) {
        this.j = 1;
        this.k = str;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object g(Task task) {
        Exception f;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                GmsRegistrationClient gmsRegistrationClient = (GmsRegistrationClient) obj;
                gmsRegistrationClient.getClass();
                if (!task.k() && (f = task.f()) != null && !TextUtils.isEmpty(f.getMessage()) && f.getMessage().contains("FID_ALREADY_USED:")) {
                    Log.w("FirebaseMessaging", "FID_ALREADY_USED Detected. Retrying with FID cache clearing!");
                    ((FirebaseInstallations) gmsRegistrationClient.c).c.a().delete();
                    return gmsRegistrationClient.c();
                }
                return task;
            default:
                String str = (String) obj;
                if (!task.k()) {
                    return Tasks.d(GmsRegistrationClient.a(task));
                }
                return Tasks.e(new Pair((String) task.g(), str));
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void h(Task task) {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                WakeLockHolder.b((Intent) obj);
                return;
            default:
                int i2 = WithinAppServiceBinder.e;
                ((WithinAppServiceConnection.BindRequest) obj).b.d(null);
                return;
        }
    }

    public /* synthetic */ f(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }
}
