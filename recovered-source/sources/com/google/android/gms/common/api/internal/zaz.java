package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zaz implements OnCompleteListener {
    public final /* synthetic */ TaskCompletionSource j;
    public final /* synthetic */ zaaa k;

    public zaz(zaaa zaaaVar, TaskCompletionSource taskCompletionSource) {
        this.j = taskCompletionSource;
        Objects.requireNonNull(zaaaVar);
        this.k = zaaaVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void h(Task task) {
        this.k.b.remove(this.j);
    }
}
