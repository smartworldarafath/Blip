package io.sentry;

import io.sentry.protocol.SentryPackage;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.Objects;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryIntegrationPackageStorage {
    public static volatile SentryIntegrationPackageStorage c;
    public static final AutoClosableReentrantLock d = new ReentrantLock();
    public static volatile Boolean e = null;
    public static final AutoClosableReentrantLock f = new ReentrantLock();
    public final CopyOnWriteArraySet a = new CopyOnWriteArraySet();
    public final CopyOnWriteArraySet b = new CopyOnWriteArraySet();

    public static SentryIntegrationPackageStorage d() {
        if (c == null) {
            ISentryLifecycleToken a = d.a();
            try {
                if (c == null) {
                    c = new SentryIntegrationPackageStorage();
                }
                a.close();
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return c;
    }

    public final void a(String str) {
        Objects.b(str, "integration is required.");
        this.a.add(str);
    }

    public final void b(String str, String str2) {
        this.b.add(new SentryPackage(str, str2));
        ISentryLifecycleToken a = f.a();
        try {
            e = null;
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final boolean c(ILogger iLogger) {
        Boolean bool = e;
        if (bool != null) {
            return bool.booleanValue();
        }
        ISentryLifecycleToken a = f.a();
        try {
            Iterator it = this.b.iterator();
            boolean z = false;
            while (it.hasNext()) {
                SentryPackage sentryPackage = (SentryPackage) it.next();
                if (sentryPackage.j.startsWith("maven:io.sentry:") && !"8.41.0".equalsIgnoreCase(sentryPackage.k)) {
                    iLogger.c(SentryLevel.ERROR, "The Sentry SDK has been configured with mixed versions. Expected %s to match core SDK version %s but was %s", sentryPackage.j, "8.41.0", sentryPackage.k);
                    z = true;
                }
            }
            if (z) {
                SentryLevel sentryLevel = SentryLevel.ERROR;
                iLogger.c(sentryLevel, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^", new Object[0]);
                iLogger.c(sentryLevel, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^", new Object[0]);
                iLogger.c(sentryLevel, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^", new Object[0]);
                iLogger.c(sentryLevel, "^^^^^^^^^^^^^^^^^^^^^^^^^^^^", new Object[0]);
            }
            e = Boolean.valueOf(z);
            a.close();
            return z;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
