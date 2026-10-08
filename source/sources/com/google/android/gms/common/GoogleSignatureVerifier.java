package com.google.android.gms.common;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.util.Log;
import com.google.android.gms.internal.common.zzad;
import com.google.android.gms.internal.common.zzah;
import com.google.android.gms.internal.common.zzal;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GoogleSignatureVerifier {
    public static GoogleSignatureVerifier a;

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
    
        r6 = r10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006c A[Catch: IllegalArgumentException -> 0x00a0, TryCatch #0 {IllegalArgumentException -> 0x00a0, blocks: (B:10:0x002c, B:11:0x0031, B:13:0x0035, B:15:0x003b, B:18:0x0042, B:20:0x0051, B:22:0x005d, B:23:0x0066, B:25:0x006c, B:27:0x0077, B:28:0x0081, B:30:0x0089, B:40:0x0098, B:41:0x009f, B:42:0x0062, B:43:0x002f), top: B:8:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0098 A[Catch: IllegalArgumentException -> 0x00a0, TryCatch #0 {IllegalArgumentException -> 0x00a0, blocks: (B:10:0x002c, B:11:0x0031, B:13:0x0035, B:15:0x003b, B:18:0x0042, B:20:0x0051, B:22:0x005d, B:23:0x0066, B:25:0x006c, B:27:0x0077, B:28:0x0081, B:30:0x0089, B:40:0x0098, B:41:0x009f, B:42:0x0062, B:43:0x002f), top: B:8:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean a(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo;
        boolean z;
        zzj b;
        zzah zzahVar;
        SigningInfo signingInfo;
        zzah i;
        if (packageInfo != null) {
            if ((!"com.android.vending".equals(packageInfo.packageName) && !"com.google.android.gms".equals(packageInfo.packageName)) || ((applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 129) != 0)) {
                z = true;
            } else {
                z = false;
            }
            try {
                if (z) {
                    zzahVar = zzn.c;
                } else {
                    zzahVar = zzn.b;
                }
                signingInfo = packageInfo.signingInfo;
            } catch (IllegalArgumentException unused) {
                Log.i("GoogleSignatureVerifier", "package info is not set correctly");
                if (z) {
                    b = b(packageInfo, zzn.a);
                } else {
                    b = b(packageInfo, zzn.a[0]);
                }
                if (b != null) {
                }
            }
            if (signingInfo != null && !signingInfo.hasMultipleSigners() && signingInfo.getSigningCertificateHistory() != null) {
                zzal zzalVar = zzah.k;
                zzad zzadVar = new zzad();
                for (Signature signature : signingInfo.getSigningCertificateHistory()) {
                    zzadVar.a(signature.toByteArray());
                }
                i = zzadVar.b();
                if (i.isEmpty()) {
                    zzah f = i.f();
                    int size = f.size();
                    int i2 = 0;
                    while (i2 < size) {
                        byte[] bArr = (byte[]) f.get(i2);
                        zzal listIterator = zzahVar.listIterator(0);
                        do {
                            int i3 = i2 + 1;
                            if (listIterator.hasNext()) {
                            }
                        } while (!Arrays.equals(bArr, (byte[]) listIterator.next()));
                        return true;
                    }
                }
                throw new IllegalArgumentException("Unable to obtain package certificate history.");
            }
            i = zzah.i();
            if (i.isEmpty()) {
            }
        }
        return false;
    }

    public static zzj b(PackageInfo packageInfo, zzj... zzjVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            zzk zzkVar = new zzk(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < zzjVarArr.length; i++) {
                if (zzjVarArr[i].equals(zzkVar)) {
                    return zzjVarArr[i];
                }
            }
        }
        return null;
    }
}
