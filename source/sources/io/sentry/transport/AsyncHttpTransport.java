package io.sentry.transport;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.DataCategory;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.RequestDetails;
import io.sentry.SentryDate;
import io.sentry.SentryDateProvider;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.cache.IEnvelopeCache;
import io.sentry.clientreport.DiscardReason;
import io.sentry.hints.BlockingFlushHint;
import io.sentry.hints.Cached;
import io.sentry.hints.DiskFlushNotification;
import io.sentry.hints.Enqueable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.transport.AsyncHttpTransport;
import io.sentry.transport.TransportResult;
import io.sentry.util.HintUtils;
import io.sentry.util.LogUtils;
import io.sentry.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncHttpTransport implements ITransport {
    public final QueuedThreadPoolExecutor j;
    public final IEnvelopeCache k;
    public final SentryOptions l;
    public final RateLimiter m;
    public final ITransportGate n;
    public final HttpConnection o;
    public volatile Runnable p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AsyncConnectionThreadFactory implements ThreadFactory {
        public int a;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            StringBuilder sb = new StringBuilder("SentryAsyncConnection-");
            int i = this.a;
            this.a = i + 1;
            sb.append(i);
            Thread thread = new Thread(runnable, sb.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class EnvelopeSender implements Runnable {
        public final SentryEnvelope j;
        public final Hint k;
        public final IEnvelopeCache l;
        public final TransportResult m = new TransportResult.ErrorTransportResult(-1);

        public EnvelopeSender(SentryEnvelope sentryEnvelope, Hint hint, IEnvelopeCache iEnvelopeCache) {
            Objects.b(sentryEnvelope, "Envelope is required.");
            this.j = sentryEnvelope;
            this.k = hint;
            Objects.b(iEnvelopeCache, "EnvelopeCache is required.");
            this.l = iEnvelopeCache;
        }

        public static /* synthetic */ void a(EnvelopeSender envelopeSender, TransportResult transportResult, SubmissionResult submissionResult) {
            AsyncHttpTransport.this.l.getLogger().c(SentryLevel.DEBUG, "Marking envelope submission result: %s", Boolean.valueOf(transportResult.b()));
            submissionResult.b(transportResult.b());
        }

        public final TransportResult b() {
            SentryEnvelope sentryEnvelope = this.j;
            sentryEnvelope.a.m = null;
            IEnvelopeCache iEnvelopeCache = this.l;
            Hint hint = this.k;
            boolean q = iEnvelopeCache.q(sentryEnvelope, hint);
            Object b = hint.b("sentry:typeCheckHint");
            boolean isInstance = DiskFlushNotification.class.isInstance(hint.b("sentry:typeCheckHint"));
            AsyncHttpTransport asyncHttpTransport = AsyncHttpTransport.this;
            if (isInstance && b != null) {
                DiskFlushNotification diskFlushNotification = (DiskFlushNotification) b;
                SentryOptions sentryOptions = asyncHttpTransport.l;
                if (diskFlushNotification.d(sentryEnvelope.a.j)) {
                    ((BlockingFlushHint) diskFlushNotification).a.countDown();
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Disk flush envelope fired", new Object[0]);
                } else {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Not firing envelope flush as there's an ongoing transaction", new Object[0]);
                }
            }
            SentryOptions sentryOptions2 = asyncHttpTransport.l;
            if (asyncHttpTransport.n.a()) {
                SentryEnvelope d = sentryOptions2.getClientReportRecorder().d(sentryEnvelope);
                try {
                    SentryDate a = sentryOptions2.getDateProvider().a();
                    d.a.m = DateUtils.c(Double.valueOf(a.d() / 1000000.0d).longValue());
                    TransportResult d2 = asyncHttpTransport.o.d(d);
                    if (d2.b()) {
                        iEnvelopeCache.a(sentryEnvelope);
                        return d2;
                    }
                    String str = "The transport failed to send the envelope with response code " + d2.a();
                    sentryOptions2.getLogger().c(SentryLevel.ERROR, str, new Object[0]);
                    if (d2.a() >= 400) {
                        iEnvelopeCache.a(sentryEnvelope);
                        if (d2.a() != 429) {
                            sentryOptions2.getClientReportRecorder().b(DiscardReason.SEND_ERROR, d);
                        }
                    }
                    throw new IllegalStateException(str);
                } catch (IOException e) {
                    Object b2 = hint.b("sentry:typeCheckHint");
                    if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b2 != null) {
                        ((Retryable) b2).c(true);
                    } else if (!q) {
                        LogUtils.a(Retryable.class, b2, sentryOptions2.getLogger());
                        sentryOptions2.getClientReportRecorder().b(DiscardReason.NETWORK_ERROR, d);
                    }
                    throw new IllegalStateException("Sending the event failed.", e);
                }
            }
            Object b3 = hint.b("sentry:typeCheckHint");
            boolean isInstance2 = Retryable.class.isInstance(hint.b("sentry:typeCheckHint"));
            TransportResult transportResult = this.m;
            if (isInstance2 && b3 != null) {
                ((Retryable) b3).c(true);
                return transportResult;
            }
            if (!q) {
                LogUtils.a(Retryable.class, b3, sentryOptions2.getLogger());
                sentryOptions2.getClientReportRecorder().b(DiscardReason.NETWORK_ERROR, sentryEnvelope);
            }
            return transportResult;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AsyncHttpTransport.this.p = this;
            TransportResult transportResult = this.m;
            try {
                transportResult = b();
                AsyncHttpTransport.this.l.getLogger().c(SentryLevel.DEBUG, "Envelope flushed", new Object[0]);
            } catch (Throwable th) {
                try {
                    AsyncHttpTransport.this.l.getLogger().a(SentryLevel.ERROR, th, "Envelope submission failed", new Object[0]);
                    throw th;
                } finally {
                    Hint hint = this.k;
                    Object b = hint.b("sentry:typeCheckHint");
                    if (SubmissionResult.class.isInstance(hint.b("sentry:typeCheckHint")) && b != null) {
                        a(this, transportResult, (SubmissionResult) b);
                    }
                    AsyncHttpTransport.this.p = null;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    /* JADX WARN: Type inference failed for: r3v0, types: [io.sentry.transport.a] */
    public AsyncHttpTransport(SentryOptions sentryOptions, RateLimiter rateLimiter, ITransportGate iTransportGate, RequestDetails requestDetails) {
        int maxQueueSize = sentryOptions.getMaxQueueSize();
        final IEnvelopeCache envelopeDiskCache = sentryOptions.getEnvelopeDiskCache();
        final ILogger logger = sentryOptions.getLogger();
        SentryDateProvider dateProvider = sentryOptions.getDateProvider();
        QueuedThreadPoolExecutor queuedThreadPoolExecutor = new QueuedThreadPoolExecutor(maxQueueSize, new Object(), new RejectedExecutionHandler() { // from class: io.sentry.transport.a
            @Override // java.util.concurrent.RejectedExecutionHandler
            public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                if (runnable instanceof AsyncHttpTransport.EnvelopeSender) {
                    AsyncHttpTransport.EnvelopeSender envelopeSender = (AsyncHttpTransport.EnvelopeSender) runnable;
                    Hint hint = envelopeSender.k;
                    if (!HintUtils.b(hint, Cached.class)) {
                        IEnvelopeCache.this.q(envelopeSender.j, hint);
                    }
                    Object b = hint.b("sentry:typeCheckHint");
                    if (SubmissionResult.class.isInstance(hint.b("sentry:typeCheckHint")) && b != null) {
                        ((SubmissionResult) b).b(false);
                    }
                    Object b2 = hint.b("sentry:typeCheckHint");
                    if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b2 != null) {
                        ((Retryable) b2).c(true);
                    }
                    logger.c(SentryLevel.WARNING, "Envelope rejected", new Object[0]);
                }
            }
        }, logger, dateProvider);
        HttpConnection httpConnection = new HttpConnection(sentryOptions, requestDetails, rateLimiter);
        this.p = null;
        this.j = queuedThreadPoolExecutor;
        IEnvelopeCache envelopeDiskCache2 = sentryOptions.getEnvelopeDiskCache();
        Objects.b(envelopeDiskCache2, "envelopeCache is required");
        this.k = envelopeDiskCache2;
        this.l = sentryOptions;
        this.m = rateLimiter;
        Objects.b(iTransportGate, "transportGate is required");
        this.n = iTransportGate;
        this.o = httpConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0147  */
    @Override // io.sentry.transport.ITransport
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void N(SentryEnvelope sentryEnvelope, Hint hint) {
        IEnvelopeCache iEnvelopeCache;
        boolean z;
        SentryEnvelope sentryEnvelope2;
        List singletonList;
        Iterator it;
        Iterable<SentryEnvelopeItem> iterable = sentryEnvelope.b;
        boolean b = HintUtils.b(hint, Cached.class);
        SentryOptions sentryOptions = this.l;
        IEnvelopeCache iEnvelopeCache2 = this.k;
        if (b) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Captured Envelope is already cached", new Object[0]);
            iEnvelopeCache = NoOpEnvelopeCache.j;
            z = true;
        } else {
            iEnvelopeCache = iEnvelopeCache2;
            z = false;
        }
        RateLimiter rateLimiter = this.m;
        SentryOptions sentryOptions2 = rateLimiter.k;
        ArrayList arrayList = null;
        for (SentryEnvelopeItem sentryEnvelopeItem : iterable) {
            String itemType = sentryEnvelopeItem.a.n.getItemType();
            itemType.getClass();
            char c = 65535;
            switch (itemType.hashCode()) {
                case -1963501277:
                    if (itemType.equals("attachment")) {
                        c = 0;
                    }
                    switch (c) {
                        case 0:
                            singletonList = Collections.singletonList(DataCategory.Attachment);
                            break;
                        case 1:
                            singletonList = Collections.singletonList(DataCategory.Replay);
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            singletonList = Arrays.asList(DataCategory.ProfileChunkUi, DataCategory.ProfileChunk);
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            singletonList = Collections.singletonList(DataCategory.Profile);
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            singletonList = Collections.singletonList(DataCategory.Feedback);
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            singletonList = Collections.singletonList(DataCategory.LogItem);
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            singletonList = Collections.singletonList(DataCategory.Span);
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            singletonList = Collections.singletonList(DataCategory.Error);
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            singletonList = Collections.singletonList(DataCategory.TraceMetric);
                            break;
                        case KeyModifiers.a /* 9 */:
                            singletonList = Collections.singletonList(DataCategory.Monitor);
                            break;
                        case KeyModifiers.b /* 10 */:
                            singletonList = Collections.singletonList(DataCategory.Session);
                            break;
                        case 11:
                            singletonList = Collections.singletonList(DataCategory.Transaction);
                            break;
                        default:
                            singletonList = Collections.singletonList(DataCategory.Unknown);
                            break;
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (rateLimiter.h((DataCategory) it.next())) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(sentryEnvelopeItem);
                            sentryOptions2.getClientReportRecorder().e(DiscardReason.RATELIMIT_BACKOFF, sentryEnvelopeItem);
                        }
                    }
                    break;
                case -1639516637:
                    if (itemType.equals("replay_video")) {
                        c = 1;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case -729715625:
                    if (itemType.equals("profile_chunk")) {
                        c = 2;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case -309425751:
                    if (itemType.equals("profile")) {
                        c = 3;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case -191501435:
                    if (itemType.equals("feedback")) {
                        c = 4;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 107332:
                    if (itemType.equals("log")) {
                        c = 5;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 3536714:
                    if (itemType.equals("span")) {
                        c = 6;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 96891546:
                    if (itemType.equals("event")) {
                        c = 7;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 229505514:
                    if (itemType.equals("trace_metric")) {
                        c = '\b';
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 1536888764:
                    if (itemType.equals("check_in")) {
                        c = '\t';
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 1984987798:
                    if (itemType.equals("session")) {
                        c = '\n';
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                case 2141246174:
                    if (itemType.equals("transaction")) {
                        c = 11;
                    }
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
                default:
                    switch (c) {
                    }
                    it = singletonList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                    }
                    break;
            }
        }
        if (arrayList != null) {
            sentryOptions2.getLogger().c(SentryLevel.WARNING, "%d envelope items will be dropped due rate limiting.", Integer.valueOf(arrayList.size()));
            ArrayList arrayList2 = new ArrayList();
            for (SentryEnvelopeItem sentryEnvelopeItem2 : iterable) {
                if (!arrayList.contains(sentryEnvelopeItem2)) {
                    arrayList2.add(sentryEnvelopeItem2);
                }
            }
            if (arrayList2.isEmpty()) {
                sentryOptions2.getLogger().c(SentryLevel.WARNING, "Envelope discarded due all items rate limited.", new Object[0]);
                Object b2 = hint.b("sentry:typeCheckHint");
                if (SubmissionResult.class.isInstance(hint.b("sentry:typeCheckHint")) && b2 != null) {
                    ((SubmissionResult) b2).b(false);
                }
                Object b3 = hint.b("sentry:typeCheckHint");
                if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b3 != null) {
                    ((Retryable) b3).c(false);
                }
                Object b4 = hint.b("sentry:typeCheckHint");
                if (DiskFlushNotification.class.isInstance(hint.b("sentry:typeCheckHint")) && b4 != null) {
                    ((BlockingFlushHint) ((DiskFlushNotification) b4)).a.countDown();
                    sentryOptions2.getLogger().c(SentryLevel.DEBUG, "Disk flush envelope fired due to rate limit", new Object[0]);
                }
                sentryEnvelope2 = null;
            } else {
                sentryEnvelope2 = new SentryEnvelope(sentryEnvelope.a, arrayList2);
            }
        } else {
            sentryEnvelope2 = sentryEnvelope;
        }
        if (sentryEnvelope2 == null) {
            if (z) {
                iEnvelopeCache2.a(sentryEnvelope);
                return;
            }
            return;
        }
        if (UncaughtExceptionHandlerIntegration.UncaughtExceptionHint.class.isInstance(hint.b("sentry:typeCheckHint"))) {
            sentryEnvelope2 = sentryOptions.getClientReportRecorder().d(sentryEnvelope2);
        }
        Future submit = this.j.submit(new EnvelopeSender(sentryEnvelope2, hint, iEnvelopeCache));
        if (submit != null && submit.isCancelled()) {
            sentryOptions.getClientReportRecorder().b(DiscardReason.QUEUE_OVERFLOW, sentryEnvelope2);
            return;
        }
        Object b5 = hint.b("sentry:typeCheckHint");
        if (Enqueable.class.isInstance(hint.b("sentry:typeCheckHint")) && b5 != null) {
            ((Enqueable) b5).d();
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Envelope enqueued", new Object[0]);
        }
    }

    @Override // io.sentry.transport.ITransport
    public final void b(boolean z) {
        this.m.close();
        this.j.shutdown();
        this.l.getLogger().c(SentryLevel.DEBUG, "Shutting down", new Object[0]);
        if (!z) {
            try {
                long flushTimeoutMillis = this.l.getFlushTimeoutMillis();
                if (!this.j.awaitTermination(flushTimeoutMillis, TimeUnit.MILLISECONDS)) {
                    this.l.getLogger().c(SentryLevel.WARNING, "Failed to shutdown the async connection async sender  within " + flushTimeoutMillis + " ms. Trying to force it now.", new Object[0]);
                    this.j.shutdownNow();
                    if (this.p != null) {
                        this.j.getRejectedExecutionHandler().rejectedExecution(this.p, this.j);
                    }
                }
            } catch (InterruptedException unused) {
                this.l.getLogger().c(SentryLevel.DEBUG, "Thread interrupted while closing the connection.", new Object[0]);
                Thread.currentThread().interrupt();
            }
        }
    }

    @Override // io.sentry.transport.ITransport
    public final void c(long j) {
        QueuedThreadPoolExecutor queuedThreadPoolExecutor = this.j;
        queuedThreadPoolExecutor.getClass();
        try {
            queuedThreadPoolExecutor.n.a.tryAcquireSharedNanos(1, TimeUnit.MILLISECONDS.toNanos(j));
        } catch (InterruptedException e) {
            queuedThreadPoolExecutor.l.b(SentryLevel.ERROR, "Failed to wait till idle", e);
            Thread.currentThread().interrupt();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b(false);
    }

    @Override // io.sentry.transport.ITransport
    public final RateLimiter d() {
        return this.m;
    }

    @Override // io.sentry.transport.ITransport
    public final boolean f() {
        boolean z;
        boolean z2;
        RateLimiter rateLimiter = this.m;
        rateLimiter.getClass();
        rateLimiter.j.getClass();
        Date date = new Date(System.currentTimeMillis());
        ConcurrentHashMap concurrentHashMap = rateLimiter.l;
        Iterator it = concurrentHashMap.keySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Date date2 = (Date) concurrentHashMap.get((DataCategory) it.next());
                if (date2 != null && !date.after(date2)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        QueuedThreadPoolExecutor queuedThreadPoolExecutor = this.j;
        SentryDate sentryDate = queuedThreadPoolExecutor.k;
        if (sentryDate == null || queuedThreadPoolExecutor.m.a().b(sentryDate) >= 2000000000) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z || z2) {
            return false;
        }
        return true;
    }
}
