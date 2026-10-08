package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzf extends zza {
    public final IBinder g;
    public final /* synthetic */ BaseGmsClient h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i, bundle);
        this.h = baseGmsClient;
        this.g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean a() {
        IBinder iBinder = this.g;
        try {
            Preconditions.e(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            BaseGmsClient baseGmsClient = this.h;
            if (!baseGmsClient.j().equals(interfaceDescriptor)) {
                String j = baseGmsClient.j();
                StringBuilder sb = new StringBuilder(j.length() + 34 + String.valueOf(interfaceDescriptor).length());
                sb.append("service descriptor mismatch: ");
                sb.append(j);
                sb.append(" vs. ");
                sb.append(interfaceDescriptor);
                Log.w("GmsClient", sb.toString());
                return false;
            }
            IInterface c = baseGmsClient.c(iBinder);
            if (c == null || (!baseGmsClient.o(2, 4, c) && !baseGmsClient.o(3, 4, c))) {
                return false;
            }
            baseGmsClient.t = null;
            BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks = baseGmsClient.n;
            if (baseConnectionCallbacks != null) {
                ((zak) baseConnectionCallbacks).a.e();
                return true;
            }
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void b(ConnectionResult connectionResult) {
        BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener = this.h.o;
        if (baseOnConnectionFailedListener != null) {
            ((zal) baseOnConnectionFailedListener).a.g(connectionResult);
        }
        System.currentTimeMillis();
    }
}
