package io.sentry;

import io.sentry.DirectoryProcessor;
import io.sentry.transport.RateLimiter;
import io.sentry.util.HintUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Queue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget {
    public final /* synthetic */ ILogger a;
    public final /* synthetic */ String b;
    public final /* synthetic */ DirectoryProcessor c;
    public final /* synthetic */ File d;

    public /* synthetic */ e(ILogger iLogger, String str, DirectoryProcessor directoryProcessor, File file) {
        this.a = iLogger;
        this.b = str;
        this.c = directoryProcessor;
        this.d = file;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        File file = this.d;
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        String str = this.b;
        ILogger iLogger = this.a;
        iLogger.c(sentryLevel, "Started processing cached files from %s", str);
        final DirectoryProcessor directoryProcessor = this.c;
        Queue queue = directoryProcessor.d;
        ILogger iLogger2 = directoryProcessor.b;
        try {
            SentryLevel sentryLevel2 = SentryLevel.DEBUG;
            iLogger2.c(sentryLevel2, "Processing dir. %s", file.getAbsolutePath());
            File[] listFiles = file.listFiles(new FilenameFilter() { // from class: io.sentry.a
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return DirectoryProcessor.this.a(str2);
                }
            });
            if (listFiles == null) {
                iLogger2.c(SentryLevel.ERROR, "Cache dir %s is null or is not a directory.", file.getAbsolutePath());
            } else {
                iLogger2.c(sentryLevel2, "Processing %d items from cache dir %s", Integer.valueOf(listFiles.length), file.getAbsolutePath());
                int length = listFiles.length;
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    File file2 = listFiles[i2];
                    if (!file2.isFile()) {
                        iLogger2.c(SentryLevel.DEBUG, "File %s is not a File.", file2.getAbsolutePath());
                    } else {
                        String absolutePath = file2.getAbsolutePath();
                        if (((SynchronizedCollection) queue).contains(absolutePath)) {
                            iLogger2.c(SentryLevel.DEBUG, "File '%s' has already been processed so it will not be processed again.", absolutePath);
                        } else {
                            RateLimiter d = directoryProcessor.a.d();
                            if (d != null && d.h(DataCategory.All)) {
                                iLogger2.c(SentryLevel.INFO, "DirectoryProcessor, rate limiting active.", new Object[i]);
                                break;
                            } else {
                                iLogger2.c(SentryLevel.DEBUG, "Processing file: %s", absolutePath);
                                directoryProcessor.b(file2, HintUtils.a(new DirectoryProcessor.SendCachedEnvelopeHint(directoryProcessor.c, directoryProcessor.b, absolutePath, queue)));
                                Thread.sleep(100L);
                            }
                        }
                    }
                    i2++;
                    i = 0;
                }
            }
        } catch (Throwable th) {
            iLogger2.a(SentryLevel.ERROR, th, "Failed processing '%s'", file.getAbsolutePath());
        }
        iLogger.c(sentryLevel, "Finished processing cached files from %s", str);
    }
}
