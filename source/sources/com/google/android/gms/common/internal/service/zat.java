package com.google.android.gms.common.internal.service;

import android.os.Parcel;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.internal.base.zac;
import com.google.android.gms.internal.base.zad;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zat extends GoogleApi {
    public static final Api j = new Api("ClientTelemetry.API", new Object(), new Object());

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.internal.TaskApiCall$Builder, java.lang.Object] */
    public final Task c(final TelemetryData telemetryData) {
        ?? obj = new Object();
        obj.d = 0;
        obj.c = new Feature[]{zad.a};
        obj.b = false;
        obj.a = new RemoteCall() { // from class: com.google.android.gms.common.internal.service.zas
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj2, Object obj3) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj3;
                zak zakVar = (zak) ((zau) obj2).i();
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken(zakVar.e);
                int i = zac.a;
                TelemetryData telemetryData2 = TelemetryData.this;
                if (telemetryData2 == null) {
                    obtain.writeInt(0);
                } else {
                    obtain.writeInt(1);
                    telemetryData2.writeToParcel(obtain, 0);
                }
                try {
                    zakVar.d.transact(1, obtain, null, 1);
                    obtain.recycle();
                    taskCompletionSource.b(null);
                } catch (Throwable th) {
                    obtain.recycle();
                    throw th;
                }
            }
        };
        return b(2, obj.a());
    }
}
