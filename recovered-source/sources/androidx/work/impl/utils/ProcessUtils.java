package androidx.work.impl.utils;

import android.app.Application;
import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Logger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProcessUtils {
    static {
        Logger.f("ProcessUtils");
    }

    public static final boolean a(Context context, Configuration configuration) {
        context.getClass();
        configuration.getClass();
        String processName = Application.getProcessName();
        processName.getClass();
        return processName.equals(context.getApplicationInfo().processName);
    }
}
