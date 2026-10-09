package io.sentry.android.core.internal.debugmeta;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.internal.debugmeta.IDebugMetaLoader;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AssetsDebugMetaLoader implements IDebugMetaLoader {
    public final Context a;
    public final ILogger b;

    public AssetsDebugMetaLoader(Context context, ILogger iLogger) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext != null ? applicationContext : context;
        this.b = iLogger;
    }

    @Override // io.sentry.internal.debugmeta.IDebugMetaLoader
    public final List a() {
        ILogger iLogger = this.b;
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.a.getAssets().open("sentry-debug-meta.properties"));
            try {
                Properties properties = new Properties();
                properties.load(bufferedInputStream);
                List singletonList = Collections.singletonList(properties);
                bufferedInputStream.close();
                return singletonList;
            } finally {
            }
        } catch (FileNotFoundException unused) {
            iLogger.c(SentryLevel.INFO, "%s file was not found.", "sentry-debug-meta.properties");
            return null;
        } catch (IOException e) {
            iLogger.b(SentryLevel.ERROR, "Error getting Proguard UUIDs.", e);
            return null;
        } catch (RuntimeException e2) {
            iLogger.a(SentryLevel.ERROR, e2, "%s file is malformed.", "sentry-debug-meta.properties");
            return null;
        }
    }
}
