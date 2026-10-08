package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import defpackage.u2;
import java.util.Iterator;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client {
    public final Set y;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public GmsClient(Context context, Looper looper, int i, ClientSettings clientSettings, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, r5, i, new zak(connectionCallbacks), new zal(onConnectionFailedListener), clientSettings.d);
        synchronized (GmsClientSupervisor.a) {
            try {
                if (GmsClientSupervisor.b == null) {
                    GmsClientSupervisor.b = new zzq(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzq zzqVar = GmsClientSupervisor.b;
        Object obj = GoogleApiAvailability.c;
        Preconditions.e(connectionCallbacks);
        Preconditions.e(onConnectionFailedListener);
        Set set = clientSettings.b;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                u2.l("Expanding scopes is not permitted, use implied scopes instead");
                throw null;
            }
        }
        this.y = set;
    }
}
