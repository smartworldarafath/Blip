package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zabn implements BaseGmsClient.ConnectionProgressReportCallbacks, zacl {
    public final Api.Client a;
    public final ApiKey b;
    public IAccountAccessor c;
    public Set d;
    public boolean e;
    public final /* synthetic */ GoogleApiManager f;

    public zabn(GoogleApiManager googleApiManager, Api.Client client, ApiKey apiKey) {
        Objects.requireNonNull(googleApiManager);
        this.f = googleApiManager;
        this.c = null;
        this.d = null;
        this.e = false;
        this.a = client;
        this.b = apiKey;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void a(ConnectionResult connectionResult) {
        this.f.v.post(new zabm(this, connectionResult));
    }

    public final void b(ConnectionResult connectionResult) {
        zabk zabkVar = (zabk) this.f.s.get(this.b);
        if (zabkVar != null) {
            zabkVar.m(connectionResult);
        }
    }
}
