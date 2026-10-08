package com.google.android.gms.common.internal;

import android.content.Intent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zai extends zaj {
    public final /* synthetic */ Intent a;
    public final /* synthetic */ com.google.android.gms.common.api.internal.zza b;

    public zai(Intent intent, com.google.android.gms.common.api.internal.zza zzaVar) {
        this.a = intent;
        this.b = zzaVar;
    }

    @Override // com.google.android.gms.common.internal.zaj
    public final void a() {
        Intent intent = this.a;
        if (intent != null) {
            this.b.startActivityForResult(intent, 2);
        }
    }
}
