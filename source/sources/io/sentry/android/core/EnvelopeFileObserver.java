package io.sentry.android.core;

import android.os.FileObserver;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.OutboxSender;
import io.sentry.SentryLevel;
import io.sentry.hints.ApplyScopeData;
import io.sentry.hints.Cached;
import io.sentry.hints.Flushable;
import io.sentry.hints.Resettable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EnvelopeFileObserver extends FileObserver {
    public final String a;
    public final OutboxSender b;
    public final ILogger c;
    public final long d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CachedEnvelopeHint implements Cached, Retryable, SubmissionResult, Flushable, ApplyScopeData, Resettable {
        public boolean a;
        public boolean b;
        public CountDownLatch c;
        public final long d;
        public final ILogger e;

        public CachedEnvelopeHint(long j, ILogger iLogger) {
            reset();
            this.d = j;
            Objects.b(iLogger, "ILogger is required.");
            this.e = iLogger;
        }

        @Override // io.sentry.hints.Retryable
        public final boolean a() {
            return this.a;
        }

        @Override // io.sentry.hints.SubmissionResult
        public final void b(boolean z) {
            this.b = z;
            this.c.countDown();
        }

        @Override // io.sentry.hints.Retryable
        public final void c(boolean z) {
            this.a = z;
        }

        @Override // io.sentry.hints.Flushable
        public final boolean e() {
            try {
                return this.c.await(this.d, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                this.e.b(SentryLevel.ERROR, "Exception while awaiting on lock.", e);
                return false;
            }
        }

        @Override // io.sentry.hints.SubmissionResult
        public final boolean f() {
            return this.b;
        }

        @Override // io.sentry.hints.Resettable
        public final void reset() {
            this.c = new CountDownLatch(1);
            this.a = false;
            this.b = false;
        }
    }

    public EnvelopeFileObserver(String str, OutboxSender outboxSender, ILogger iLogger, long j) {
        super(str);
        this.a = str;
        this.b = outboxSender;
        Objects.b(iLogger, "Logger is required.");
        this.c = iLogger;
        this.d = j;
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i, String str) {
        if (str != null && i == 8) {
            SentryLevel sentryLevel = SentryLevel.DEBUG;
            Integer valueOf = Integer.valueOf(i);
            String str2 = this.a;
            ILogger iLogger = this.c;
            iLogger.c(sentryLevel, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s.", valueOf, str2, str);
            Hint a = HintUtils.a(new CachedEnvelopeHint(this.d, iLogger));
            String str3 = str2 + File.separator + str;
            OutboxSender outboxSender = this.b;
            outboxSender.getClass();
            outboxSender.b(new File(str3), a);
        }
    }
}
