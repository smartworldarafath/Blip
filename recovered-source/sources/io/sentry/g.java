package io.sentry;

import io.sentry.util.FileUtils;
import java.io.File;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ g(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        int i2 = 0;
        Object obj = this.k;
        switch (i) {
            case 0:
                IScopesStorage iScopesStorage = Sentry.a;
                File[] listFiles = ((File) obj).listFiles();
                if (listFiles != null) {
                    int length = listFiles.length;
                    while (i2 < length) {
                        File file = listFiles[i2];
                        if (file.lastModified() < Sentry.f - 300000) {
                            FileUtils.a(file);
                        }
                        i2++;
                    }
                    return;
                }
                return;
            default:
                SentryExecutorService sentryExecutorService = (SentryExecutorService) obj;
                while (true) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = sentryExecutorService.a;
                    if (i2 < 40) {
                        try {
                            scheduledThreadPoolExecutor.schedule(sentryExecutorService.c, 365L, TimeUnit.DAYS).cancel(true);
                            i2++;
                        } catch (RejectedExecutionException unused) {
                            return;
                        }
                    } else {
                        scheduledThreadPoolExecutor.purge();
                        return;
                    }
                    return;
                }
        }
    }
}
