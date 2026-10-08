package com.google.android.gms.cloudmessaging;

import android.os.Bundle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzu extends zzs {
    @Override // com.google.android.gms.cloudmessaging.zzs
    public final boolean a() {
        return false;
    }

    @Override // com.google.android.gms.cloudmessaging.zzs
    public final void b(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        c(bundle2);
    }
}
