package androidx.work.impl.background.systemjob;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.Clock;
import androidx.work.Logger;
import androidx.work.SystemClock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class SystemJobInfoConverter {
    public static final String d = Logger.f("SystemJobInfoConverter");
    public final ComponentName a;
    public final Clock b;
    public final boolean c;

    public SystemJobInfoConverter(Context context, SystemClock systemClock, boolean z) {
        this.b = systemClock;
        this.a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
        this.c = z;
    }
}
