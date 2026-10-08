package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzg extends zza {
    public final /* synthetic */ BaseGmsClient g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.g = baseGmsClient;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean a() {
        this.g.i.a(ConnectionResult.o);
        return true;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void b(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.g;
        baseGmsClient.getClass();
        baseGmsClient.i.a(connectionResult);
        System.currentTimeMillis();
    }
}
