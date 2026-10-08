package io.sentry.util;

import defpackage.q;
import defpackage.u2;
import io.sentry.ManifestVersionDetector;
import io.sentry.NoopVersionDetector;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InitUtil {
    public static boolean a(SentryOptions sentryOptions, SentryOptions sentryOptions2, boolean z) {
        String str;
        boolean z2 = Platform.a;
        if (!z2 && (sentryOptions2.getVersionDetector() instanceof NoopVersionDetector)) {
            sentryOptions2.setVersionDetector(new ManifestVersionDetector(sentryOptions2));
        }
        if (sentryOptions2.getVersionDetector().a()) {
            sentryOptions2.getLogger().c(SentryLevel.ERROR, "Not initializing Sentry because mixed SDK versions have been detected.", new Object[0]);
            if (z2) {
                str = "https://docs.sentry.io/platforms/android/troubleshooting/mixed-versions";
            } else {
                str = "https://docs.sentry.io/platforms/java/troubleshooting/mixed-versions";
            }
            u2.l(q.i("Sentry SDK has detected a mix of versions. This is not supported and likely leads to crashes. Please always use the same version of all SDK modules (dependencies). See ", str, " for more details."));
            return false;
        }
        if (z && sentryOptions != null && !sentryOptions2.isForceInit() && sentryOptions.getInitPriority().ordinal() > sentryOptions2.getInitPriority().ordinal()) {
            return false;
        }
        return true;
    }
}
