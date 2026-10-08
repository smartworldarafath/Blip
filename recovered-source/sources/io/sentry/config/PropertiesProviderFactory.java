package io.sentry.config;

import io.sentry.SentryLevel;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Properties;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PropertiesProviderFactory {
    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.SystemOutLogger, java.lang.Object] */
    public static PropertiesProvider a() {
        Properties a;
        Properties a2;
        ?? obj = new Object();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AbstractPropertiesProvider("sentry.", System.getProperties()));
        arrayList.add(new Object());
        String property = System.getProperty("sentry.properties.file");
        if (property != null && (a2 = new FilesystemPropertiesLoader(property, obj, true).a()) != null) {
            arrayList.add(new SimplePropertiesProvider(a2));
        }
        String str = System.getenv("SENTRY_PROPERTIES_FILE");
        if (str != null && (a = new FilesystemPropertiesLoader(str, obj, true).a()) != null) {
            arrayList.add(new SimplePropertiesProvider(a));
        }
        ClasspathPropertiesLoader classpathPropertiesLoader = new ClasspathPropertiesLoader(obj);
        String str2 = classpathPropertiesLoader.a;
        Properties properties = null;
        try {
            InputStream resourceAsStream = classpathPropertiesLoader.b.getResourceAsStream(str2);
            if (resourceAsStream != null) {
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(resourceAsStream);
                    try {
                        Properties properties2 = new Properties();
                        properties2.load(bufferedInputStream);
                        bufferedInputStream.close();
                        resourceAsStream.close();
                        properties = properties2;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        resourceAsStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } else if (resourceAsStream != null) {
                resourceAsStream.close();
            }
        } catch (IOException e) {
            classpathPropertiesLoader.c.a(SentryLevel.ERROR, e, "Failed to load Sentry configuration from classpath resource: %s", str2);
        }
        if (properties != null) {
            arrayList.add(new SimplePropertiesProvider(properties));
        }
        Properties a3 = new FilesystemPropertiesLoader("sentry.properties", obj, false).a();
        if (a3 != null) {
            arrayList.add(new SimplePropertiesProvider(a3));
        }
        return new CompositePropertiesProvider(arrayList);
    }
}
