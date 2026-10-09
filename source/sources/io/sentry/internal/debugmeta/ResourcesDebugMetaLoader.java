package io.sentry.internal.debugmeta;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.util.ClassLoaderUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourcesDebugMetaLoader implements IDebugMetaLoader {
    public final ILogger a;
    public final ClassLoader b;

    public ResourcesDebugMetaLoader(ILogger iLogger) {
        ClassLoader classLoader = ResourcesDebugMetaLoader.class.getClassLoader();
        this.a = iLogger;
        this.b = ClassLoaderUtils.a(classLoader);
    }

    @Override // io.sentry.internal.debugmeta.IDebugMetaLoader
    public final List a() {
        InputStream openStream;
        ILogger iLogger = this.a;
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<URL> resources = this.b.getResources("sentry-debug-meta.properties");
            while (resources.hasMoreElements()) {
                URL nextElement = resources.nextElement();
                try {
                    openStream = nextElement.openStream();
                } catch (RuntimeException e) {
                    iLogger.a(SentryLevel.ERROR, e, "%s file is malformed.", nextElement);
                }
                try {
                    Properties properties = new Properties();
                    properties.load(openStream);
                    arrayList.add(properties);
                    iLogger.c(SentryLevel.INFO, "Debug Meta Data Properties loaded from %s", nextElement);
                    if (openStream != null) {
                        openStream.close();
                    }
                } catch (Throwable th) {
                    if (openStream != null) {
                        try {
                            openStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                    break;
                }
            }
        } catch (IOException e2) {
            iLogger.a(SentryLevel.ERROR, e2, "Failed to load %s", "sentry-debug-meta.properties");
        }
        if (arrayList.isEmpty()) {
            iLogger.c(SentryLevel.INFO, "No %s file was found.", "sentry-debug-meta.properties");
            return null;
        }
        return arrayList;
    }
}
