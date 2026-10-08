package io.sentry.android.core.performance;

import android.os.Build;
import android.os.Looper;
import io.sentry.ISpan;
import io.sentry.Instrumenter;
import io.sentry.SentryDate;
import io.sentry.android.core.internal.util.AndroidThreadChecker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActivityLifecycleSpanHelper {
    public final String a;
    public SentryDate b = null;
    public SentryDate c = null;
    public ISpan d = null;
    public ISpan e = null;

    public ActivityLifecycleSpanHelper(String str) {
        this.a = str;
    }

    public static ISpan a(ISpan iSpan, String str, SentryDate sentryDate) {
        long id;
        ISpan c = iSpan.c(str, sentryDate, Instrumenter.SENTRY);
        Thread thread = Looper.getMainLooper().getThread();
        AndroidThreadChecker androidThreadChecker = AndroidThreadChecker.a;
        if (Build.VERSION.SDK_INT >= 36) {
            id = thread.threadId();
        } else {
            id = thread.getId();
        }
        c.i(Long.valueOf(id), "thread.id");
        c.i("main", "thread.name");
        Boolean bool = Boolean.TRUE;
        c.i(bool, "ui.contributes_to_ttid");
        c.i(bool, "ui.contributes_to_ttfd");
        return c;
    }
}
