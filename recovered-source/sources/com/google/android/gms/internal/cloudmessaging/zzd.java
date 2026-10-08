package com.google.android.gms.internal.cloudmessaging;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.GmsClient;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzd extends GmsClient {
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int a() {
        return 261200000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cloudmessaging.internal.ICloudMessagingService");
        if (queryLocalInterface instanceof zze) {
            return (zze) queryLocalInterface;
        }
        return new zza(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] f() {
        return com.google.android.gms.cloudmessaging.zzi.b;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String j() {
        return "com.google.android.gms.cloudmessaging.internal.ICloudMessagingService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String k() {
        return "com.google.android.gms.cloudmessaging.service.START";
    }
}
