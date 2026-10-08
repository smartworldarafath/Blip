package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zacj implements Runnable {
    public final /* synthetic */ zacm j;

    public zacj(zacm zacmVar) {
        Objects.requireNonNull(zacmVar);
        this.j = zacmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((zabn) this.j.j).b(new ConnectionResult(4, null, null));
    }
}
