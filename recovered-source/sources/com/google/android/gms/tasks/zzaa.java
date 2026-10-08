package com.google.android.gms.tasks;

import java.util.concurrent.CountDownLatch;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzaa<T> implements OnSuccessListener, OnFailureListener, OnCanceledListener {
    public final CountDownLatch a = new CountDownLatch(1);

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void a(Object obj) {
        this.a.countDown();
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void c() {
        this.a.countDown();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void d(Exception exc) {
        this.a.countDown();
    }
}
