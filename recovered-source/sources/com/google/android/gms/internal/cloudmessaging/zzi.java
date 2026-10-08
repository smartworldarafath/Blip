package com.google.android.gms.internal.cloudmessaging;

import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzi extends zzf {
    public final /* synthetic */ TaskCompletionSource d;

    public zzi(zzm zzmVar, TaskCompletionSource taskCompletionSource) {
        this.d = taskCompletionSource;
        attachInterface(this, "com.google.android.gms.cloudmessaging.internal.IRegisterCallback");
    }
}
