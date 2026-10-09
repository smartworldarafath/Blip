package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zabh implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ zabk k;

    public zabh(zabk zabkVar, int i) {
        this.j = i;
        this.k = zabkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.k.b(this.j);
    }
}
