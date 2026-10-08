package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class zzad implements SuccessContinuation {
    public static final /* synthetic */ zzad a = new Object();

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task a(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i = Rpc.h;
        if (bundle != null && bundle.containsKey("google.messenger")) {
            return Tasks.e(null);
        }
        return Tasks.e(bundle);
    }
}
