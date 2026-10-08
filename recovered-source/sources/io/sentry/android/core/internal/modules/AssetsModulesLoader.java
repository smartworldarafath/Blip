package io.sentry.android.core.internal.modules;

import android.content.Context;
import defpackage.e;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.internal.modules.ModulesLoader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AssetsModulesLoader extends ModulesLoader {
    public static final /* synthetic */ int f = 0;
    public final Context e;

    public AssetsModulesLoader(Context context, SentryAndroidOptions sentryAndroidOptions) {
        super(sentryAndroidOptions.getLogger());
        Context applicationContext = context.getApplicationContext();
        this.e = applicationContext != null ? applicationContext : context;
        try {
            sentryAndroidOptions.getExecutorService().submit(new e(21, this));
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "AssetsModulesLoader submit failed", th);
        }
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    public final Map b() {
        ILogger iLogger = this.a;
        TreeMap treeMap = new TreeMap();
        try {
            InputStream open = this.e.getAssets().open("sentry-external-modules.txt");
            try {
                TreeMap c = c(open);
                if (open != null) {
                    open.close();
                    return c;
                }
                return c;
            } catch (Throwable th) {
                if (open != null) {
                    try {
                        open.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException unused) {
            iLogger.c(SentryLevel.INFO, "%s file was not found.", "sentry-external-modules.txt");
            return treeMap;
        } catch (IOException e) {
            iLogger.b(SentryLevel.ERROR, "Error extracting modules.", e);
            return treeMap;
        }
    }
}
