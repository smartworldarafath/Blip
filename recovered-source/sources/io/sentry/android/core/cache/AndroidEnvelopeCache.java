package io.sentry.android.core.cache;

import android.os.SystemClock;
import defpackage.q;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.SentryEnvelope;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.android.core.AnrV2Integration;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.TombstoneIntegration;
import io.sentry.android.core.internal.util.AndroidCurrentDateProvider;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.cache.EnvelopeCache;
import io.sentry.util.FileUtils;
import io.sentry.util.Objects;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidEnvelopeCache extends EnvelopeCache {
    public static final List u;
    public final AndroidCurrentDateProvider t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TimestampMarkerHandler<T> {
        public final Class a;
        public final String b;
        public final String c;
        public final TimestampExtractor d;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public interface TimestampExtractor<T> {
            Long a(Object obj);
        }

        public TimestampMarkerHandler(Class cls, String str, String str2, TimestampExtractor timestampExtractor) {
            this.a = cls;
            this.b = str;
            this.c = str2;
            this.d = timestampExtractor;
        }
    }

    static {
        final int i = 0;
        final int i2 = 1;
        u = Arrays.asList(new TimestampMarkerHandler(AnrV2Integration.AnrV2Hint.class, "ANR", "last_anr_report", new TimestampMarkerHandler.TimestampExtractor() { // from class: io.sentry.android.core.cache.a
            @Override // io.sentry.android.core.cache.AndroidEnvelopeCache.TimestampMarkerHandler.TimestampExtractor
            public final Long a(Object obj) {
                switch (i) {
                    case 0:
                        List list = AndroidEnvelopeCache.u;
                        return Long.valueOf(((AnrV2Integration.AnrV2Hint) obj).d);
                    default:
                        List list2 = AndroidEnvelopeCache.u;
                        return Long.valueOf(((TombstoneIntegration.TombstoneHint) obj).d);
                }
            }
        }), new TimestampMarkerHandler(TombstoneIntegration.TombstoneHint.class, "Tombstone", "last_tombstone_report", new TimestampMarkerHandler.TimestampExtractor() { // from class: io.sentry.android.core.cache.a
            @Override // io.sentry.android.core.cache.AndroidEnvelopeCache.TimestampMarkerHandler.TimestampExtractor
            public final Long a(Object obj) {
                switch (i2) {
                    case 0:
                        List list = AndroidEnvelopeCache.u;
                        return Long.valueOf(((AnrV2Integration.AnrV2Hint) obj).d);
                    default:
                        List list2 = AndroidEnvelopeCache.u;
                        return Long.valueOf(((TombstoneIntegration.TombstoneHint) obj).d);
                }
            }
        }));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AndroidEnvelopeCache(SentryAndroidOptions sentryAndroidOptions) {
        super(sentryAndroidOptions, r0, sentryAndroidOptions.getMaxCacheItems());
        String cacheDirPath = sentryAndroidOptions.getCacheDirPath();
        Objects.b(cacheDirPath, "cacheDirPath must not be null");
        this.t = AndroidCurrentDateProvider.j;
    }

    public static Long j(SentryOptions sentryOptions, String str, String str2) {
        String cacheDirPath = sentryOptions.getCacheDirPath();
        Objects.b(cacheDirPath, "Cache dir path should be set for getting " + str2 + "s reported");
        File file = new File(cacheDirPath, str);
        try {
            String c = FileUtils.c(file);
            if (c != null && !c.equals("null")) {
                return Long.valueOf(Long.parseLong(c.trim()));
            }
            return null;
        } catch (Throwable th) {
            if (th instanceof FileNotFoundException) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, q.i("Last ", str2, " marker does not exist. %s."), file.getAbsolutePath());
                return null;
            }
            sentryOptions.getLogger().b(SentryLevel.ERROR, q.i("Error reading last ", str2, " marker"), th);
            return null;
        }
    }

    @Override // io.sentry.cache.EnvelopeCache, io.sentry.cache.IEnvelopeCache
    public final boolean q(SentryEnvelope sentryEnvelope, Hint hint) {
        boolean q = super.q(sentryEnvelope, hint);
        SentryOptions sentryOptions = this.j;
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        TimeSpan timeSpan = AppStartMetrics.c().n;
        if (UncaughtExceptionHandlerIntegration.UncaughtExceptionHint.class.isInstance(hint.b("sentry:typeCheckHint")) && timeSpan.b()) {
            this.t.getClass();
            long uptimeMillis = SystemClock.uptimeMillis() - timeSpan.l;
            if (uptimeMillis <= sentryAndroidOptions.getStartupCrashDurationThresholdMillis()) {
                ILogger logger = sentryAndroidOptions.getLogger();
                SentryLevel sentryLevel = SentryLevel.DEBUG;
                logger.c(sentryLevel, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk.", Long.valueOf(uptimeMillis));
                String outboxPath = sentryOptions.getOutboxPath();
                if (outboxPath == null) {
                    sentryOptions.getLogger().c(sentryLevel, "Outbox path is null, the startup crash marker file will not be written", new Object[0]);
                } else {
                    try {
                        new File(outboxPath, "startup_crash").createNewFile();
                    } catch (Throwable th) {
                        sentryOptions.getLogger().b(SentryLevel.ERROR, "Error writing the startup crash marker file to the disk", th);
                    }
                }
            }
        }
        for (TimestampMarkerHandler timestampMarkerHandler : u) {
            Class cls = timestampMarkerHandler.a;
            b bVar = new b(timestampMarkerHandler, sentryAndroidOptions, this);
            Object b = hint.b("sentry:typeCheckHint");
            if (cls.isInstance(hint.b("sentry:typeCheckHint")) && b != null) {
                TimestampMarkerHandler timestampMarkerHandler2 = bVar.a;
                Long a = timestampMarkerHandler2.d.a(b);
                ILogger logger2 = bVar.b.getLogger();
                SentryLevel sentryLevel2 = SentryLevel.DEBUG;
                String str = timestampMarkerHandler2.b;
                logger2.c(sentryLevel2, "Writing last reported %s marker with timestamp %d", str, a);
                String str2 = timestampMarkerHandler2.c;
                SentryOptions sentryOptions2 = bVar.c.j;
                String cacheDirPath = sentryOptions2.getCacheDirPath();
                if (cacheDirPath == null) {
                    sentryOptions2.getLogger().c(sentryLevel2, q.i("Cache dir path is null, the ", str, " marker will not be written"), new Object[0]);
                } else {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(new File(cacheDirPath, str2));
                        try {
                            fileOutputStream.write(String.valueOf(a).getBytes(n));
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                            break;
                        }
                    } catch (Throwable th4) {
                        sentryOptions2.getLogger().b(SentryLevel.ERROR, q.i("Error writing the ", str, " marker to the disk"), th4);
                    }
                }
            }
        }
        return q;
    }
}
