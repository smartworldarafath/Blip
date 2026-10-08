package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzf extends com.google.android.play.core.review.internal.zzj {
    public final /* synthetic */ TaskCompletionSource k;
    public final /* synthetic */ zzi l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(zzi zziVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.k = taskCompletionSource2;
        this.l = zziVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void a() {
        HashMap hashMap;
        try {
            zzi zziVar = this.l;
            com.google.android.play.core.review.internal.zzf zzfVar = zziVar.a.m;
            String str = zziVar.b;
            Bundle bundle = new Bundle();
            HashMap hashMap2 = zzj.a;
            synchronized (zzj.class) {
                hashMap = zzj.a;
                hashMap.put("java", 20002);
            }
            bundle.putInt("playcore_version_code", ((Integer) hashMap.get("java")).intValue());
            if (hashMap.containsKey("native")) {
                bundle.putInt("playcore_native_version", ((Integer) hashMap.get("native")).intValue());
            }
            if (hashMap.containsKey("unity")) {
                bundle.putInt("playcore_unity_version", ((Integer) hashMap.get("unity")).intValue());
            }
            zzi zziVar2 = this.l;
            TaskCompletionSource taskCompletionSource = this.k;
            String str2 = zziVar2.b;
            zzg zzgVar = new zzg(zziVar2, new com.google.android.play.core.review.internal.zzi("OnRequestInstallCallback"), taskCompletionSource);
            com.google.android.play.core.review.internal.zzd zzdVar = (com.google.android.play.core.review.internal.zzd) zzfVar;
            zzdVar.getClass();
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
            obtain.writeString(str);
            int i = com.google.android.play.core.review.internal.zzc.a;
            obtain.writeInt(1);
            bundle.writeToParcel(obtain, 0);
            obtain.writeStrongBinder(zzgVar);
            try {
                zzdVar.d.transact(2, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        } catch (RemoteException e) {
            zzi zziVar3 = this.l;
            com.google.android.play.core.review.internal.zzi zziVar4 = zzi.c;
            Object[] objArr = {zziVar3.b};
            zziVar4.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", com.google.android.play.core.review.internal.zzi.c(zziVar4.a, "error requesting in-app review for %s", objArr), e);
            }
            this.k.c(new RuntimeException(e));
        }
    }
}
