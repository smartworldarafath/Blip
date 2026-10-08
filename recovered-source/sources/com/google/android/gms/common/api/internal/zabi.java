package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zabi implements Runnable {
    public final /* synthetic */ zabj j;

    public zabi(zabj zabjVar) {
        this.j = zabjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zabk zabkVar = this.j.a;
        String name = zabkVar.e.getClass().getName();
        ((BaseGmsClient) zabkVar.e).e(name.concat(" disconnecting because it was signed out."));
    }
}
