package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RescheduleReceiver extends BroadcastReceiver {
    public static final String a = Logger.f("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Logger.d().a(a, "Received intent " + intent);
        try {
            WorkManagerImpl a2 = WorkManagerImpl.a(context);
            BroadcastReceiver.PendingResult goAsync = goAsync();
            synchronized (WorkManagerImpl.m) {
                try {
                    BroadcastReceiver.PendingResult pendingResult = a2.i;
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    a2.i = goAsync;
                    if (a2.h) {
                        goAsync.finish();
                        a2.i = null;
                    }
                } finally {
                }
            }
        } catch (IllegalStateException e) {
            Logger.d().c(a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }
}
