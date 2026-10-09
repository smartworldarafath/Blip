package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Collections;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zabm implements Runnable {
    public final /* synthetic */ ConnectionResult j;
    public final /* synthetic */ zabn k;

    public zabm(zabn zabnVar, ConnectionResult connectionResult) {
        this.j = connectionResult;
        this.k = zabnVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Set set;
        IAccountAccessor iAccountAccessor;
        zabn zabnVar = this.k;
        GoogleApiManager googleApiManager = zabnVar.f;
        Api.Client client = zabnVar.a;
        zabk zabkVar = (zabk) googleApiManager.s.get(zabnVar.b);
        if (zabkVar != null) {
            ConnectionResult connectionResult = this.j;
            if (connectionResult.k == 0) {
                zabnVar.e = true;
                if (!client.b()) {
                    try {
                        GmsClient gmsClient = (GmsClient) client;
                        if (gmsClient.b()) {
                            set = gmsClient.y;
                        } else {
                            set = Collections.EMPTY_SET;
                        }
                        ((BaseGmsClient) client).h(null, set);
                        return;
                    } catch (SecurityException e) {
                        Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
                        ((BaseGmsClient) client).e("Failed to get service from broker.");
                        zabkVar.n(new ConnectionResult(10, null, null), null);
                        return;
                    }
                }
                if (zabnVar.e && (iAccountAccessor = zabnVar.c) != null) {
                    ((BaseGmsClient) client).h(iAccountAccessor, zabnVar.d);
                    return;
                }
                return;
            }
            zabkVar.n(connectionResult, null);
        }
    }
}
