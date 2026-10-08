package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.review.internal.zzt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzh extends zzg {
    @Override // com.google.android.play.core.review.internal.zzh
    public final void d(Bundle bundle) {
        zzt zztVar = this.f.a;
        TaskCompletionSource taskCompletionSource = this.e;
        if (zztVar != null) {
            zztVar.d(taskCompletionSource);
        }
        this.d.a("onGetLaunchReviewFlowInfo", new Object[0]);
        taskCompletionSource.d(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
