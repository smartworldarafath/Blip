package com.google.android.gms.signin.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.signin.zae;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SignInClientImpl extends GmsClient<zaf> implements zae {
    public final ClientSettings A;
    public final Bundle B;
    public final Integer C;
    public final boolean z;

    public SignInClientImpl(Context context, Looper looper, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.z = true;
        this.A = clientSettings;
        this.B = bundle;
        this.C = clientSettings.f;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int a() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean b() {
        return this.z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface instanceof zaf) {
            return (zaf) queryLocalInterface;
        }
        return new com.google.android.gms.internal.base.zaa(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle g() {
        ClientSettings clientSettings = this.A;
        boolean equals = this.c.getPackageName().equals(clientSettings.c);
        Bundle bundle = this.B;
        if (!equals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", clientSettings.c);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String j() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String k() {
        return "com.google.android.gms.signin.service.START";
    }
}
