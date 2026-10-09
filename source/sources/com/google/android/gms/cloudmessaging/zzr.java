package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzr extends zzs {
    @Override // com.google.android.gms.cloudmessaging.zzs
    public final boolean a() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.cloudmessaging.zzt, java.lang.Exception] */
    @Override // com.google.android.gms.cloudmessaging.zzs
    public final void b(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            c(null);
        } else {
            d(new Exception("Invalid response to one way request", null));
        }
    }
}
