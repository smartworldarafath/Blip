package com.google.android.play.core.review.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzp extends zzj {
    public final /* synthetic */ IBinder k;
    public final /* synthetic */ zzr l;

    public zzp(zzr zzrVar, IBinder iBinder) {
        this.k = iBinder;
        this.l = zzrVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.google.android.play.core.review.internal.zzf] */
    @Override // com.google.android.play.core.review.internal.zzj
    public final void a() {
        ?? zzaVar;
        zzt zztVar = this.l.j;
        int i = zze.d;
        IBinder iBinder = this.k;
        if (iBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
            if (queryLocalInterface instanceof zzf) {
                zzaVar = (zzf) queryLocalInterface;
            } else {
                zzaVar = new zza(iBinder);
            }
        }
        zzi zziVar = zztVar.b;
        zztVar.m = zzaVar;
        zziVar.a("linkToDeath", new Object[0]);
        try {
            zztVar.m.asBinder().linkToDeath(zztVar.j, 0);
        } catch (RemoteException e) {
            Object[] objArr = new Object[0];
            zziVar.getClass();
            if (Log.isLoggable("PlayCore", 6)) {
                Log.e("PlayCore", zzi.c(zziVar.a, "linkToDeath failed", objArr), e);
            }
        }
        zztVar.g = false;
        Iterator it = zztVar.d.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        zztVar.d.clear();
    }
}
