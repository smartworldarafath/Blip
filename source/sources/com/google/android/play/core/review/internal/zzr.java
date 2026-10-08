package com.google.android.play.core.review.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzr implements ServiceConnection {
    public final /* synthetic */ zzt j;

    public /* synthetic */ zzr(zzt zztVar) {
        this.j = zztVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzt zztVar = this.j;
        zztVar.b.a("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        zztVar.a().post(new zzp(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzt zztVar = this.j;
        zztVar.b.a("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        zztVar.a().post(new zzq(this));
    }
}
