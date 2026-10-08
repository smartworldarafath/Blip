package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zay;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zack implements Runnable {
    public final /* synthetic */ zak j;
    public final /* synthetic */ zacm k;

    public zack(zacm zacmVar, zak zakVar) {
        this.j = zakVar;
        this.k = zacmVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.common.internal.BaseGmsClient] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v6, types: [com.google.android.gms.common.internal.IAccountAccessor] */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // java.lang.Runnable
    public final void run() {
        ?? r3;
        zacm zacmVar = this.k;
        zacmVar.getClass();
        zak zakVar = this.j;
        ConnectionResult connectionResult = zakVar.k;
        if (connectionResult.k == 0) {
            zay zayVar = zakVar.l;
            Preconditions.e(zayVar);
            ConnectionResult connectionResult2 = zayVar.l;
            if (connectionResult2.k == 0) {
                zacl zaclVar = zacmVar.j;
                IBinder iBinder = zayVar.k;
                if (iBinder == null) {
                    r3 = 0;
                } else {
                    int i = IAccountAccessor.Stub.d;
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                    if (queryLocalInterface instanceof IAccountAccessor) {
                        r3 = (IAccountAccessor) queryLocalInterface;
                    } else {
                        r3 = new com.google.android.gms.internal.common.zza(iBinder);
                    }
                }
                Set set = zacmVar.g;
                zabn zabnVar = (zabn) zaclVar;
                zabnVar.getClass();
                if (r3 != 0 && set != null) {
                    zabnVar.c = r3;
                    zabnVar.d = set;
                    if (zabnVar.e) {
                        ((BaseGmsClient) zabnVar.a).h(r3, set);
                    }
                } else {
                    Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                    zabnVar.b(new ConnectionResult(4, null, null));
                }
            } else {
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(connectionResult2)), new Exception());
                ((zabn) zacmVar.j).b(connectionResult2);
                ((BaseGmsClient) zacmVar.i).d();
                return;
            }
        } else {
            ((zabn) zacmVar.j).b(connectionResult);
        }
        ((BaseGmsClient) zacmVar.i).d();
    }
}
