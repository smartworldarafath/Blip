package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class zzae implements Continuation {
    public static final /* synthetic */ zzae j = new Object();

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object g(Task task) {
        if (task.k()) {
            return (Bundle) task.g();
        }
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Error making request: ".concat(String.valueOf(task.f())));
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", task.f());
    }
}
