package com.google.android.gms.common.api.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaw;
import com.google.android.gms.signin.internal.SignInClientImpl;
import com.google.android.gms.signin.internal.zaf;
import com.google.android.gms.signin.internal.zak;
import com.google.android.gms.signin.zae;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zacm extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public static final Api.AbstractClientBuilder k = com.google.android.gms.signin.zad.a;
    public final Context d;
    public final Handler e;
    public final Api.AbstractClientBuilder f;
    public final Set g;
    public final ClientSettings h;
    public zae i;
    public zacl j;

    public zacm(Context context, com.google.android.gms.internal.base.zao zaoVar, ClientSettings clientSettings) {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        this.d = context;
        this.e = zaoVar;
        this.h = clientSettings;
        this.g = clientSettings.a;
        this.f = k;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void c(int i) {
        zabn zabnVar = (zabn) this.j;
        zabk zabkVar = (zabk) zabnVar.f.s.get(zabnVar.b);
        if (zabkVar != null) {
            if (zabkVar.l) {
                zabkVar.m(new ConnectionResult(17, null, null));
            } else {
                zabkVar.c(i);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void e() {
        GoogleSignInAccount googleSignInAccount;
        Parcel obtain;
        Parcel obtain2;
        SignInClientImpl signInClientImpl = (SignInClientImpl) this.i;
        signInClientImpl.getClass();
        try {
            signInClientImpl.A.getClass();
            Account account = new Account("<<default account>>", "com.google");
            try {
                if ("<<default account>>".equals(account.name)) {
                    Context context = signInClientImpl.c;
                    ReentrantLock reentrantLock = Storage.c;
                    Preconditions.e(context);
                    ReentrantLock reentrantLock2 = Storage.c;
                    reentrantLock2.lock();
                    try {
                        if (Storage.d == null) {
                            Storage.d = new Storage(context.getApplicationContext());
                        }
                        Storage storage = Storage.d;
                        reentrantLock2.unlock();
                        String a = storage.a("defaultGoogleSignInAccount");
                        if (!TextUtils.isEmpty(a)) {
                            StringBuilder sb = new StringBuilder(20 + String.valueOf(a).length());
                            sb.append("googleSignInAccount:");
                            sb.append(a);
                            String a2 = storage.a(sb.toString());
                            if (a2 != null) {
                                try {
                                    googleSignInAccount = GoogleSignInAccount.a(a2);
                                } catch (JSONException unused) {
                                }
                                Integer num = signInClientImpl.C;
                                Preconditions.e(num);
                                zaw zawVar = new zaw(2, account, num.intValue(), googleSignInAccount);
                                zaf zafVar = (zaf) signInClientImpl.i();
                                com.google.android.gms.signin.internal.zai zaiVar = new com.google.android.gms.signin.internal.zai(1, zawVar);
                                obtain = Parcel.obtain();
                                obtain.writeInterfaceToken(zafVar.e);
                                int i = com.google.android.gms.internal.base.zac.a;
                                obtain.writeInt(1);
                                zaiVar.writeToParcel(obtain, 0);
                                obtain.writeStrongBinder(this);
                                obtain2 = Parcel.obtain();
                                zafVar.d.transact(12, obtain, obtain2, 0);
                                obtain2.readException();
                                obtain.recycle();
                                obtain2.recycle();
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock2.unlock();
                        throw th;
                    }
                }
                zafVar.d.transact(12, obtain, obtain2, 0);
                obtain2.readException();
                obtain.recycle();
                obtain2.recycle();
                return;
            } catch (Throwable th2) {
                obtain.recycle();
                obtain2.recycle();
                throw th2;
            }
            googleSignInAccount = null;
            Integer num2 = signInClientImpl.C;
            Preconditions.e(num2);
            zaw zawVar2 = new zaw(2, account, num2.intValue(), googleSignInAccount);
            zaf zafVar2 = (zaf) signInClientImpl.i();
            com.google.android.gms.signin.internal.zai zaiVar2 = new com.google.android.gms.signin.internal.zai(1, zawVar2);
            obtain = Parcel.obtain();
            obtain.writeInterfaceToken(zafVar2.e);
            int i2 = com.google.android.gms.internal.base.zac.a;
            obtain.writeInt(1);
            zaiVar2.writeToParcel(obtain, 0);
            obtain.writeStrongBinder(this);
            obtain2 = Parcel.obtain();
        } catch (RemoteException e) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                j(new zak(1, new ConnectionResult(8, null, null), null));
            } catch (RemoteException unused2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void g(ConnectionResult connectionResult) {
        ((zabn) this.j).b(connectionResult);
    }

    public final void j(zak zakVar) {
        this.e.post(new zack(this, zakVar));
    }
}
