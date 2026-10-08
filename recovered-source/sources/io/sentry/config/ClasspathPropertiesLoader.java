package io.sentry.config;

import io.sentry.SystemOutLogger;
import io.sentry.util.ClassLoaderUtils;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ClasspathPropertiesLoader {
    public final String a;
    public final ClassLoader b;
    public final SystemOutLogger c;

    public ClasspathPropertiesLoader(SystemOutLogger systemOutLogger) {
        ClassLoader classLoader = ClasspathPropertiesLoader.class.getClassLoader();
        this.a = "sentry.properties";
        this.b = ClassLoaderUtils.a(classLoader);
        this.c = systemOutLogger;
    }
}
