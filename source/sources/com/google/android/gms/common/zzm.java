package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class zzm extends zzj {
    public static final WeakReference f = new WeakReference(null);
    public WeakReference e;

    public zzm(byte[] bArr) {
        super(bArr);
        this.e = f;
    }

    @Override // com.google.android.gms.common.zzj
    public final byte[] e() {
        byte[] bArr;
        synchronized (this) {
            try {
                bArr = (byte[]) this.e.get();
                if (bArr == null) {
                    bArr = j();
                    this.e = new WeakReference(bArr);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArr;
    }

    public abstract byte[] j();
}
