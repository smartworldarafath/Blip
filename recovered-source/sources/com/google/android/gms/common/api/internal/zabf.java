package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zabf implements BackgroundDetector.BackgroundStateChangeListener {
    public final /* synthetic */ GoogleApiManager a;

    public zabf(GoogleApiManager googleApiManager) {
        this.a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void a(boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        GoogleApiManager googleApiManager = this.a;
        googleApiManager.v.sendMessage(googleApiManager.v.obtainMessage(1, valueOf));
    }
}
