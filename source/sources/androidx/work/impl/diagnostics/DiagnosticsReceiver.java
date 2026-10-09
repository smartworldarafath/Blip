package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.workers.DiagnosticsWorker;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {
    public static final String a = Logger.f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        Logger d = Logger.d();
        String str = a;
        d.a(str, "Requesting diagnostics");
        try {
            context.getClass();
            WorkManagerImpl a2 = WorkManagerImpl.a(context);
            List B = CollectionsKt.B(new WorkRequest.Builder(DiagnosticsWorker.class).a());
            if (!B.isEmpty()) {
                ExistingWorkPolicy[] existingWorkPolicyArr = ExistingWorkPolicy.j;
                new WorkContinuationImpl(a2, null, B).a();
                return;
            }
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        } catch (IllegalStateException e) {
            Logger.d().c(str, "WorkManager is not initialized", e);
        }
    }
}
