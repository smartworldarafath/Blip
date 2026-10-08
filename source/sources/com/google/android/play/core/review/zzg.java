package com.google.android.play.core.review;

import com.google.android.gms.tasks.TaskCompletionSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class zzg extends com.google.android.play.core.review.internal.zzg {
    public final com.google.android.play.core.review.internal.zzi d;
    public final TaskCompletionSource e;
    public final /* synthetic */ zzi f;

    public zzg(zzi zziVar, com.google.android.play.core.review.internal.zzi zziVar2, TaskCompletionSource taskCompletionSource) {
        this.f = zziVar;
        attachInterface(this, "com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback");
        this.d = zziVar2;
        this.e = taskCompletionSource;
    }
}
