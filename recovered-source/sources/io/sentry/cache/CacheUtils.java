package io.sentry.cache;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CacheUtils {
    public static final Charset a = Charset.forName("UTF-8");

    public static void a(SentryOptions sentryOptions, String str, String str2) {
        File b = b(sentryOptions, str);
        if (b == null) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Cache dir is not set, cannot delete from scope cache", new Object[0]);
            return;
        }
        File file = new File(b, str2);
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Deleting %s from scope cache", str2);
        if (!file.delete()) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Failed to delete: %s", file.getAbsolutePath());
        }
    }

    public static File b(SentryOptions sentryOptions, String str) {
        String cacheDirPath = sentryOptions.getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        File file = new File(cacheDirPath, str);
        file.mkdirs();
        return file;
    }

    public static Object c(SentryOptions sentryOptions, String str, String str2, Class cls) {
        File b = b(sentryOptions, str);
        if (b == null) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Cache dir is not set, cannot read from scope cache", new Object[0]);
            return null;
        }
        File file = new File(b, str2);
        if (file.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), a));
                try {
                    Object d = sentryOptions.getSerializer().d(bufferedReader, cls);
                    bufferedReader.close();
                    return d;
                } finally {
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Error reading entity from scope cache: %s", str2);
                return null;
            }
        }
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "No entry stored for %s", str2);
        return null;
    }

    public static void d(SentryOptions sentryOptions, Object obj, String str, String str2) {
        File b = b(sentryOptions, str);
        if (b == null) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Cache dir is not set, cannot store in scope cache", new Object[0]);
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(b, str2));
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, a));
                try {
                    sentryOptions.getSerializer().a(obj, bufferedWriter);
                    bufferedWriter.close();
                    fileOutputStream.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th3, "Error persisting entity: %s", str2);
        }
    }
}
