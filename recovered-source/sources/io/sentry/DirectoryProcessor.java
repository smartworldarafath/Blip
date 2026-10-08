package io.sentry;

import io.sentry.hints.Cached;
import io.sentry.hints.Enqueable;
import io.sentry.hints.Flushable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import java.io.File;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DirectoryProcessor {
    public final IScopes a;
    public final ILogger b;
    public final long c;
    public final Queue d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SendCachedEnvelopeHint implements Cached, Retryable, SubmissionResult, Flushable, Enqueable {
        public boolean a = false;
        public boolean b = false;
        public final CountDownLatch c = new CountDownLatch(1);
        public final long d;
        public final ILogger e;
        public final String f;
        public final Queue g;

        public SendCachedEnvelopeHint(long j, ILogger iLogger, String str, Queue queue) {
            this.d = j;
            this.f = str;
            this.g = queue;
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

        @Override // io.sentry.hints.Enqueable
        public final void d() {
            this.g.add(this.f);
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
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.Queue, io.sentry.SynchronizedCollection] */
    public DirectoryProcessor(IScopes iScopes, ILogger iLogger, long j, int i) {
        this.a = iScopes;
        this.b = iLogger;
        this.c = j;
        this.d = new SynchronizedCollection(new CircularFifoQueue(i));
    }

    public abstract boolean a(String str);

    public abstract void b(File file, Hint hint);
}
