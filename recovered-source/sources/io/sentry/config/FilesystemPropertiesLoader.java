package io.sentry.config;

import io.sentry.SentryLevel;
import io.sentry.SystemOutLogger;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FilesystemPropertiesLoader {
    public final String a;
    public final SystemOutLogger b;
    public final boolean c;

    public FilesystemPropertiesLoader(String str, SystemOutLogger systemOutLogger, boolean z) {
        this.a = str;
        this.b = systemOutLogger;
        this.c = z;
    }

    public final Properties a() {
        SystemOutLogger systemOutLogger = this.b;
        String str = this.a;
        try {
            File file = new File(str.trim());
            if (file.isFile() && file.canRead()) {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    Properties properties = new Properties();
                    properties.load(bufferedInputStream);
                    bufferedInputStream.close();
                    return properties;
                } finally {
                }
            }
            if (!file.isFile()) {
                if (this.c) {
                    systemOutLogger.c(SentryLevel.ERROR, "Failed to load Sentry configuration since it is not a file or does not exist: %s", str);
                    return null;
                }
            } else if (!file.canRead()) {
                systemOutLogger.c(SentryLevel.ERROR, "Failed to load Sentry configuration since it is not readable: %s", str);
            }
            return null;
        } catch (Throwable th) {
            systemOutLogger.a(SentryLevel.ERROR, th, "Failed to load Sentry configuration from file: %s", str);
            return null;
        }
    }
}
