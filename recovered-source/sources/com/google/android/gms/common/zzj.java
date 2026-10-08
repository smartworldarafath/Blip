package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.fe;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class zzj extends zzw {
    public final int d;

    public zzj(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        if (bArr.length == 25) {
            this.d = Arrays.hashCode(bArr);
        } else {
            fe.h();
            throw null;
        }
    }

    public static byte[] g(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final ObjectWrapper b() {
        return new ObjectWrapper(e());
    }

    public abstract byte[] e();

    public final boolean equals(Object obj) {
        if (obj instanceof zzx) {
            try {
                zzx zzxVar = (zzx) obj;
                if (((zzj) zzxVar).d == this.d) {
                    return Arrays.equals(e(), (byte[]) ((zzj) zzxVar).b().d);
                }
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return false;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.zzx
    public final int f() {
        return this.d;
    }

    public final int hashCode() {
        return this.d;
    }
}
