package io.sentry.android.core;

import io.sentry.SentryLevel;
import io.sentry.android.core.cache.AndroidEnvelopeCache;
import io.sentry.util.LazyEvaluator;
import java.io.File;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements LazyEvaluator.Evaluator {
    public final /* synthetic */ int j;
    public final /* synthetic */ SentryAndroidOptions k;

    public /* synthetic */ h(SentryAndroidOptions sentryAndroidOptions, int i) {
        this.j = i;
        this.k = sentryAndroidOptions;
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        int i = this.j;
        SentryAndroidOptions sentryAndroidOptions = this.k;
        switch (i) {
            case 0:
                return sentryAndroidOptions.getExecutorService();
            case 1:
                List list = AndroidEnvelopeCache.u;
                String outboxPath = sentryAndroidOptions.getOutboxPath();
                boolean z = false;
                if (outboxPath == null) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Outbox path is null, the startup crash marker file does not exist", new Object[0]);
                } else {
                    File file = new File(outboxPath, "startup_crash");
                    try {
                        boolean exists = file.exists();
                        if (exists && !file.delete()) {
                            sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "Failed to delete the startup crash marker file. %s.", file.getAbsolutePath());
                        }
                        z = exists;
                    } catch (Throwable th) {
                        sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error reading/deleting the startup crash marker file on the disk", th);
                    }
                }
                return Boolean.valueOf(z);
            default:
                return sentryAndroidOptions.getExecutorService();
        }
    }
}
