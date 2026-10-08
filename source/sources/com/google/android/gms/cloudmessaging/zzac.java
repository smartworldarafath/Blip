package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class zzac implements Continuation {
    public static final /* synthetic */ zzac j = new Object();

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object g(Task task) {
        Intent intent = (Intent) ((Bundle) task.g()).getParcelable("notification_data");
        if (intent != null) {
            return new CloudMessage(intent);
        }
        return null;
    }
}
