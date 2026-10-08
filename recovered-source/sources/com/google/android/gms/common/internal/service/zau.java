package com.google.android.gms.common.internal.service;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zad;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zau extends GmsClient {
    public final TelemetryLoggingOptions z;

    public zau(Context context, Looper looper, ClientSettings clientSettings, TelemetryLoggingOptions telemetryLoggingOptions, zabk zabkVar, zabk zabkVar2) {
        super(context, looper, 270, clientSettings, zabkVar, zabkVar2);
        this.z = telemetryLoggingOptions;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int a() {
        return 203400000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface c(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        if (queryLocalInterface instanceof zak) {
            return (zak) queryLocalInterface;
        }
        return new zaa(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] f() {
        return zad.c;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle g() {
        this.z.getClass();
        return new Bundle();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String j() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String k() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean l() {
        return true;
    }
}
