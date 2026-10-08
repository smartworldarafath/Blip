package io.sentry.android.core.internal.util;

import android.content.ContentProvider;
import android.os.Build;
import io.sentry.NoOpLogger;
import io.sentry.android.core.BuildInfoProvider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentProviderSecurityChecker {
    public final BuildInfoProvider a = new BuildInfoProvider(NoOpLogger.a);

    public final void a(ContentProvider contentProvider) {
        this.a.getClass();
        if (Build.VERSION.SDK_INT <= 28) {
            String callingPackage = contentProvider.getCallingPackage();
            String packageName = contentProvider.getContext().getPackageName();
            if (callingPackage == null || !callingPackage.equals(packageName)) {
                throw new SecurityException("Provider does not allow for granting of Uri permissions");
            }
        }
    }
}
