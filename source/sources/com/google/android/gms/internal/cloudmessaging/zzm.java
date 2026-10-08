package com.google.android.gms.internal.cloudmessaging;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cloudmessaging.RegisterRequest;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzm extends GoogleApi {
    public static final Api j = new Api("CloudMessaging.API", new Object(), new Object());

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.internal.TaskApiCall$Builder, java.lang.Object] */
    public final Task c(final RegisterRequest registerRequest) {
        ?? obj = new Object();
        obj.b = true;
        obj.c = new Feature[]{com.google.android.gms.cloudmessaging.zzi.a};
        obj.a = new RemoteCall() { // from class: com.google.android.gms.internal.cloudmessaging.zzl
            /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.common.api.ApiMetadata$Builder, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.common.api.ApiMetadata$Builder, java.lang.Object] */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj2, Object obj3) {
                int i;
                zzd zzdVar = (zzd) obj2;
                zzm zzmVar = zzm.this;
                zzi zziVar = new zzi(zzmVar, (TaskCompletionSource) obj3);
                Context context = zzmVar.a;
                try {
                    i = Wrappers.a(context).a.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException unused) {
                    i = 0;
                }
                RegisterRequest registerRequest2 = registerRequest;
                registerRequest2.o = i;
                zze zzeVar = (zze) zzdVar.i();
                ComplianceOptions complianceOptions = new ComplianceOptions(-1, -1, 0, true);
                Parcelable.Creator<ApiMetadata> creator = ApiMetadata.CREATOR;
                ?? obj4 = new Object();
                obj4.b = false;
                obj4.a = complianceOptions;
                ApiMetadata a = obj4.a();
                ?? obj5 = new Object();
                obj5.a = a.j;
                obj5.c = a.l;
                obj5.b = true;
                ApiMetadata a2 = obj5.a();
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken("com.google.android.gms.cloudmessaging.internal.ICloudMessagingService");
                int i2 = zzc.a;
                obtain.writeStrongBinder(zziVar);
                obtain.writeInt(1);
                registerRequest2.writeToParcel(obtain, 0);
                obtain.writeInt(1);
                a2.writeToParcel(obtain, 0);
                Parcel obtain2 = Parcel.obtain();
                try {
                    zzeVar.d.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain.recycle();
                    obtain2.recycle();
                }
            }
        };
        obj.d = 39001;
        return b(0, obj.a());
    }
}
