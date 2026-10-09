package io.sentry.android.core.internal.util;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.util.Objects;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RootChecker {
    public static final Charset g = Charset.forName("UTF-8");
    public final Context a;
    public final BuildInfoProvider b;
    public final ILogger c;
    public final String[] d;
    public final String[] e;
    public final Runtime f;

    public RootChecker(Context context, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        Runtime runtime = Runtime.getRuntime();
        this.a = context;
        Objects.b(buildInfoProvider, "The BuildInfoProvider is required.");
        this.b = buildInfoProvider;
        Objects.b(iLogger, "The Logger is required.");
        this.c = iLogger;
        this.d = new String[]{"/sbin/su", "/data/local/xbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/bin/su", "/system/app/Superuser.apk", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su", "/su/bin", "/system/xbin/daemonsu"};
        this.e = new String[]{"com.devadvance.rootcloak", "com.devadvance.rootcloakplus", "com.koushikdutta.superuser", "com.thirdparty.superuser", "eu.chainfire.supersu", "com.noshufou.android.su"};
        Objects.b(runtime, "The Runtime is required.");
        this.f = runtime;
    }
}
