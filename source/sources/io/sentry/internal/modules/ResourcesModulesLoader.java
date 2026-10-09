package io.sentry.internal.modules;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.util.ClassLoaderUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourcesModulesLoader extends ModulesLoader {
    public final ClassLoader e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourcesModulesLoader(ILogger iLogger) {
        super(iLogger);
        ClassLoader classLoader = ResourcesModulesLoader.class.getClassLoader();
        this.e = ClassLoaderUtils.a(classLoader);
    }

    @Override // io.sentry.internal.modules.ModulesLoader
    public final Map b() {
        InputStream resourceAsStream;
        ILogger iLogger = this.a;
        TreeMap treeMap = new TreeMap();
        try {
            resourceAsStream = this.e.getResourceAsStream("sentry-external-modules.txt");
            try {
            } catch (Throwable th) {
                if (resourceAsStream != null) {
                    try {
                        resourceAsStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e) {
            iLogger.b(SentryLevel.INFO, "Access to resources failed.", e);
        } catch (SecurityException e2) {
            iLogger.b(SentryLevel.INFO, "Access to resources denied.", e2);
        }
        if (resourceAsStream == null) {
            iLogger.c(SentryLevel.INFO, "%s file was not found.", "sentry-external-modules.txt");
            if (resourceAsStream != null) {
                resourceAsStream.close();
                return treeMap;
            }
            return treeMap;
        }
        TreeMap c = c(resourceAsStream);
        resourceAsStream.close();
        return c;
    }
}
