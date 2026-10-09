package io.sentry;

import defpackage.n5;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.android.core.ApplicationExitInfoEventProcessor;
import io.sentry.clientreport.DiscardReason;
import io.sentry.clientreport.IClientReportRecorder;
import io.sentry.exception.SentryEnvelopeException;
import io.sentry.hints.ApplyScopeData;
import io.sentry.hints.Backfillable;
import io.sentry.hints.Cached;
import io.sentry.hints.DiskFlushNotification;
import io.sentry.hints.TransactionEnd;
import io.sentry.logger.ILoggerBatchProcessor;
import io.sentry.logger.NoOpLoggerBatchProcessor;
import io.sentry.metrics.IMetricsBatchProcessor;
import io.sentry.metrics.NoOpMetricsBatchProcessor;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.FeatureFlags;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.Message;
import io.sentry.protocol.Request;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.ITransport;
import io.sentry.transport.RateLimiter;
import io.sentry.util.EventSizeLimitingUtils;
import io.sentry.util.FileUtils;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import io.sentry.util.Random;
import io.sentry.util.SentryRandom;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryClient implements ISentryClient {
    public final SentryOptions b;
    public final ITransport c;
    public final ILoggerBatchProcessor e;
    public final IMetricsBatchProcessor f;
    public final SortBreadcrumbsByDate d = new Object();
    public boolean a = true;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SortBreadcrumbsByDate implements Comparator<Breadcrumb> {
        @Override // java.util.Comparator
        public final int compare(Breadcrumb breadcrumb, Breadcrumb breadcrumb2) {
            return breadcrumb.b().compareTo(breadcrumb2.b());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.SentryClient$SortBreadcrumbsByDate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v15, types: [io.sentry.ITransportFactory, java.lang.Object] */
    public SentryClient(SentryOptions sentryOptions) {
        String str;
        this.b = sentryOptions;
        ITransportFactory transportFactory = sentryOptions.getTransportFactory();
        boolean z = transportFactory instanceof NoOpTransportFactory;
        ITransportFactory iTransportFactory = transportFactory;
        if (z) {
            ?? obj = new Object();
            sentryOptions.setTransportFactory(obj);
            iTransportFactory = obj;
        }
        RequestDetailsResolver requestDetailsResolver = new RequestDetailsResolver(sentryOptions);
        Dsn dsn = requestDetailsResolver.a;
        URI uri = dsn.c;
        String uri2 = uri.resolve(uri.getPath() + "/envelope/").toString();
        String str2 = dsn.b;
        String str3 = dsn.a;
        StringBuilder sb = new StringBuilder("Sentry sentry_version=7,sentry_client=");
        String str4 = requestDetailsResolver.b;
        sb.append(str4);
        sb.append(",sentry_key=");
        sb.append(str2);
        if (str3 != null && str3.length() > 0) {
            str = ",sentry_secret=".concat(str3);
        } else {
            str = "";
        }
        sb.append(str);
        String sb2 = sb.toString();
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", str4);
        hashMap.put("X-Sentry-Auth", sb2);
        this.c = iTransportFactory.a(sentryOptions, new RequestDetails(uri2, hashMap));
        if (sentryOptions.getLogs().a) {
            this.e = sentryOptions.getLogs().b.a(sentryOptions, this);
        } else {
            this.e = NoOpLoggerBatchProcessor.j;
        }
        if (sentryOptions.getMetrics().a) {
            this.f = sentryOptions.getMetrics().b.a(sentryOptions, this);
        } else {
            this.f = NoOpMetricsBatchProcessor.j;
        }
    }

    public static ArrayList q(Hint hint) {
        ArrayList arrayList = new ArrayList(hint.b);
        Attachment attachment = hint.d;
        if (attachment != null) {
            arrayList.add(attachment);
        }
        Attachment attachment2 = hint.e;
        if (attachment2 != null) {
            arrayList.add(attachment2);
        }
        Attachment attachment3 = hint.f;
        if (attachment3 != null) {
            arrayList.add(attachment3);
        }
        return arrayList;
    }

    @Override // io.sentry.ISentryClient
    public final void a(Session session, Hint hint) {
        Objects.b(session, "Session is required.");
        String str = session.v;
        SentryOptions sentryOptions = this.b;
        if (str != null && !str.isEmpty()) {
            try {
                ISerializer serializer = sentryOptions.getSerializer();
                SdkVersion sdkVersion = sentryOptions.getSdkVersion();
                Objects.b(serializer, "Serializer is required.");
                g(new SentryEnvelope(null, sdkVersion, SentryEnvelopeItem.d(serializer, session)), hint);
                return;
            } catch (IOException e) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to capture session.", e);
                return;
            }
        }
        sentryOptions.getLogger().c(SentryLevel.WARNING, "Sessions can't be captured without setting a release.", new Object[0]);
    }

    @Override // io.sentry.ISentryClient
    public final void b(boolean z) {
        long shutdownTimeoutMillis;
        SentryOptions sentryOptions = this.b;
        sentryOptions.getLogger().c(SentryLevel.INFO, "Closing SentryClient.", new Object[0]);
        if (z) {
            shutdownTimeoutMillis = 0;
        } else {
            try {
                shutdownTimeoutMillis = sentryOptions.getShutdownTimeoutMillis();
            } catch (IOException e) {
                sentryOptions.getLogger().b(SentryLevel.WARNING, "Failed to close the connection to the Sentry Server.", e);
            }
        }
        c(shutdownTimeoutMillis);
        this.e.b(z);
        this.f.b(z);
        this.c.b(z);
        for (EventProcessor eventProcessor : sentryOptions.getEventProcessors()) {
            if (eventProcessor instanceof Closeable) {
                try {
                    ((Closeable) eventProcessor).close();
                } catch (IOException e2) {
                    sentryOptions.getLogger().c(SentryLevel.WARNING, "Failed to close the event processor {}.", eventProcessor, e2);
                }
            }
        }
        this.a = false;
    }

    @Override // io.sentry.ISentryClient
    public final void c(long j) {
        this.e.c(j);
        this.f.c(j);
        this.c.c(j);
    }

    @Override // io.sentry.ISentryClient
    public final RateLimiter d() {
        return this.c.d();
    }

    @Override // io.sentry.ISentryClient
    public final SentryId e(SentryReplayEvent sentryReplayEvent, IScope iScope, Hint hint) {
        if (w(sentryReplayEvent, hint)) {
            Request request = sentryReplayEvent.m;
            Contexts contexts = sentryReplayEvent.k;
            if (request == null) {
                sentryReplayEvent.m = iScope.d();
            }
            if (sentryReplayEvent.r == null) {
                sentryReplayEvent.r = iScope.I();
            }
            if (sentryReplayEvent.n == null) {
                sentryReplayEvent.c(new HashMap(iScope.x()));
            } else {
                for (Map.Entry entry : iScope.x().entrySet()) {
                    if (!sentryReplayEvent.n.containsKey(entry.getKey())) {
                        sentryReplayEvent.n.put((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
            for (Map.Entry entry2 : new Contexts(iScope.B()).j.entrySet()) {
                if (!contexts.a(entry2.getKey())) {
                    contexts.k(entry2.getValue(), (String) entry2.getKey());
                }
            }
            ISpan b = iScope.b();
            if (contexts.i() == null) {
                if (b == null) {
                    contexts.v(TransactionContext.b(iScope.t()));
                } else {
                    contexts.v(b.r());
                }
            }
        }
        SentryOptions sentryOptions = this.b;
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing session replay: %s", sentryReplayEvent.j);
        SentryId sentryId = SentryId.k;
        SentryId sentryId2 = sentryReplayEvent.j;
        if (sentryId2 != null) {
            sentryId = sentryId2;
        }
        Iterator<EventProcessor> it = sentryOptions.getEventProcessors().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EventProcessor next = it.next();
            try {
                sentryReplayEvent = next.a(sentryReplayEvent, hint);
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while processing replay event by processor: %s", next.getClass().getName());
            }
            if (sentryReplayEvent == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Replay event was dropped by a processor: %s", next.getClass().getName());
                sentryOptions.getClientReportRecorder().a(DiscardReason.EVENT_PROCESSOR, DataCategory.Replay);
                break;
            }
        }
        if (sentryReplayEvent != null) {
            sentryOptions.getBeforeSendReplay();
        }
        if (sentryReplayEvent == null) {
            return SentryId.k;
        }
        try {
            SentryEnvelope p = p(sentryReplayEvent, hint.g, r(iScope, hint, sentryReplayEvent, null), Backfillable.class.isInstance(hint.b("sentry:typeCheckHint")));
            hint.a();
            this.c.N(p, hint);
            return sentryId;
        } catch (IOException e) {
            sentryOptions.getLogger().a(SentryLevel.WARNING, e, "Capturing event %s failed.", sentryId);
            return SentryId.k;
        }
    }

    @Override // io.sentry.ISentryClient
    public final boolean f() {
        return this.c.f();
    }

    @Override // io.sentry.ISentryClient
    public final SentryId g(SentryEnvelope sentryEnvelope, Hint hint) {
        try {
            hint.a();
            return v(sentryEnvelope, hint);
        } catch (IOException e) {
            this.b.getLogger().b(SentryLevel.ERROR, "Failed to capture envelope.", e);
            return SentryId.k;
        }
    }

    @Override // io.sentry.ISentryClient
    public final SentryId h(ProfileChunk profileChunk) {
        Objects.b(profileChunk, "profileChunk is required.");
        SentryOptions sentryOptions = this.b;
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing profile chunk: %s", profileChunk.l);
        SentryId sentryId = profileChunk.l;
        DebugMeta a = DebugMeta.a(profileChunk.j, sentryOptions);
        if (a != null) {
            profileChunk.j = a;
        }
        try {
            return v(new SentryEnvelope(new SentryEnvelopeHeader(sentryId, sentryOptions.getSdkVersion(), null), Collections.singletonList(SentryEnvelopeItem.c(profileChunk, sentryOptions.getSerializer(), sentryOptions.getProfilerConverter()))), null);
        } catch (SentryEnvelopeException | IOException e) {
            sentryOptions.getLogger().a(SentryLevel.WARNING, e, "Capturing profile chunk %s failed.", sentryId);
            return SentryId.k;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
    
        r1.getLogger().c(io.sentry.SentryLevel.DEBUG, "Transaction was dropped as transaction name %s is ignored", r11.y);
        r10 = r1.getClientReportRecorder();
        r12 = io.sentry.clientreport.DiscardReason.EVENT_PROCESSOR;
        r10.a(r12, io.sentry.DataCategory.Transaction);
        r1.getClientReportRecorder().c(r12, io.sentry.DataCategory.Span, r11.B.size() + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a6, code lost:
    
        return io.sentry.protocol.SentryId.k;
     */
    @Override // io.sentry.ISentryClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SentryId i(SentryTransaction sentryTransaction, TraceContext traceContext, IScope iScope, Hint hint, ProfilingTraceData profilingTraceData) {
        boolean matches;
        if (hint == null) {
            hint = new Hint();
        }
        if (w(sentryTransaction, hint)) {
            hint.b.addAll(iScope.z());
        }
        SentryOptions sentryOptions = this.b;
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing transaction: %s", sentryTransaction.j);
        List<FilterString> ignoredTransactions = sentryOptions.getIgnoredTransactions();
        String str = sentryTransaction.y;
        if (str != null && ignoredTransactions != null && !ignoredTransactions.isEmpty()) {
            Iterator<FilterString> it = ignoredTransactions.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().a.equalsIgnoreCase(str)) {
                        break;
                    }
                } else {
                    Iterator<FilterString> it2 = ignoredTransactions.iterator();
                    while (it2.hasNext()) {
                        try {
                            Pattern pattern = it2.next().b;
                            if (pattern == null) {
                                matches = false;
                            } else {
                                matches = pattern.matcher(str).matches();
                            }
                        } catch (Throwable unused) {
                        }
                        if (matches) {
                        }
                    }
                }
            }
        }
        SentryId sentryId = SentryId.k;
        SentryId sentryId2 = sentryTransaction.j;
        if (sentryId2 == null) {
            sentryId2 = sentryId;
        }
        if (w(sentryTransaction, hint)) {
            l(sentryTransaction, iScope);
            sentryTransaction = u(sentryTransaction, hint, iScope.J());
            if (sentryTransaction == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Transaction was dropped by applyScope", new Object[0]);
            }
        }
        if (sentryTransaction != null) {
            sentryTransaction = u(sentryTransaction, hint, sentryOptions.getEventProcessors());
        }
        SentryTransaction sentryTransaction2 = sentryTransaction;
        if (sentryTransaction2 == null) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Transaction was dropped by Event processors.", new Object[0]);
            return sentryId;
        }
        ArrayList arrayList = sentryTransaction2.B;
        int size = arrayList.size();
        sentryOptions.getBeforeSendTransaction();
        int size2 = arrayList.size();
        if (size2 < size) {
            int i = size - size2;
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "%d spans were dropped by beforeSendTransaction.", Integer.valueOf(i));
            sentryOptions.getClientReportRecorder().c(DiscardReason.BEFORE_SEND, DataCategory.Span, i);
        }
        try {
            ArrayList q = q(hint);
            ArrayList arrayList2 = new ArrayList();
            Iterator it3 = q.iterator();
            while (it3.hasNext()) {
                ((Attachment) it3.next()).getClass();
            }
            SentryEnvelope m = m(sentryTransaction2, arrayList2, null, traceContext, profilingTraceData);
            hint.a();
            if (m != null) {
                return v(m, hint);
            }
            return sentryId2;
        } catch (SentryEnvelopeException | IOException e) {
            sentryOptions.getLogger().a(SentryLevel.WARNING, e, "Capturing transaction %s failed.", sentryId2);
            return SentryId.k;
        }
    }

    @Override // io.sentry.ISentryClient
    public final boolean isEnabled() {
        return this.a;
    }

    @Override // io.sentry.ISentryClient
    public final SentryId j(Feedback feedback, IScope iScope) {
        SentryEvent sentryEvent = new SentryEvent();
        Contexts contexts = sentryEvent.k;
        contexts.k(feedback, "feedback");
        Hint hint = new Hint();
        if (feedback.o == null) {
            feedback.o = iScope.D();
        }
        SentryOptions sentryOptions = this.b;
        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Capturing feedback: %s", sentryEvent.j);
        if (w(sentryEvent, hint)) {
            if (sentryEvent.r == null) {
                sentryEvent.r = iScope.I();
            }
            if (sentryEvent.n == null) {
                sentryEvent.c(new HashMap(iScope.x()));
            } else {
                for (Map.Entry entry : iScope.x().entrySet()) {
                    if (!sentryEvent.n.containsKey(entry.getKey())) {
                        sentryEvent.n.put((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
            for (Map.Entry entry2 : new Contexts(iScope.B()).j.entrySet()) {
                if (!contexts.a(entry2.getKey())) {
                    contexts.k(entry2.getValue(), (String) entry2.getKey());
                }
            }
            ISpan b = iScope.b();
            if (contexts.i() == null) {
                if (b == null) {
                    contexts.v(TransactionContext.b(iScope.t()));
                } else {
                    contexts.v(b.r());
                }
            }
            sentryEvent = t(sentryEvent, hint, iScope.J());
            if (sentryEvent == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Feedback was dropped by applyScope", new Object[0]);
                return SentryId.k;
            }
        }
        SentryEvent t = t(sentryEvent, hint, sentryOptions.getEventProcessors());
        if (t != null) {
            SentryOptions.BeforeSendCallback beforeSendFeedback = sentryOptions.getBeforeSendFeedback();
            if (beforeSendFeedback != null) {
                try {
                    ((io.sentry.kotlin.multiplatform.extensions.a) beforeSendFeedback).b(t, hint);
                } catch (Throwable th) {
                    sentryOptions.getLogger().b(SentryLevel.ERROR, "The BeforeSendFeedback callback threw an exception.", th);
                    t = null;
                }
            }
            if (t == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Event was dropped by beforeSend", new Object[0]);
                sentryOptions.getClientReportRecorder().a(DiscardReason.BEFORE_SEND, DataCategory.Feedback);
            }
        }
        SentryEvent sentryEvent2 = t;
        if (sentryEvent2 == null) {
            return SentryId.k;
        }
        SentryId sentryId = SentryId.k;
        SentryId sentryId2 = sentryEvent2.j;
        if (sentryId2 == null) {
            sentryId2 = sentryId;
        }
        if (feedback.n == null) {
            sentryOptions.getReplayController().n(Boolean.FALSE);
            SentryId h = iScope.h();
            if (!h.equals(sentryId)) {
                feedback.n = h;
            }
        }
        try {
            SentryEnvelope m = m(sentryEvent2, q(hint), null, r(iScope, hint, sentryEvent2, sentryEvent2.E), null);
            hint.a();
            if (m != null) {
                return v(m, hint);
            }
            return sentryId2;
        } catch (SentryEnvelopeException | IOException e) {
            sentryOptions.getLogger().a(SentryLevel.WARNING, e, "Capturing feedback %s failed.", sentryId2);
            return SentryId.k;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x0329, code lost:
    
        if (r4 != false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02bc, code lost:
    
        if (r4.p != r5) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x02cd, code lost:
    
        if (r4.l.get() <= 0) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00da, code lost:
    
        r1.getLogger().c(io.sentry.SentryLevel.DEBUG, "Event was dropped as it matched a string/pattern in ignoredErrors", r13.z);
        r1.getClientReportRecorder().a(io.sentry.clientreport.DiscardReason.EVENT_PROCESSOR, io.sentry.DataCategory.Error);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f8, code lost:
    
        return io.sentry.protocol.SentryId.k;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x027a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0316 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0351 A[Catch: SentryEnvelopeException -> 0x0357, IOException -> 0x035a, TryCatch #4 {SentryEnvelopeException -> 0x0357, IOException -> 0x035a, blocks: (B:171:0x0347, B:147:0x034b, B:149:0x0351, B:150:0x035d, B:152:0x0368), top: B:170:0x0347 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0368 A[Catch: SentryEnvelopeException -> 0x0357, IOException -> 0x035a, TRY_LEAVE, TryCatch #4 {SentryEnvelopeException -> 0x0357, IOException -> 0x035a, blocks: (B:171:0x0347, B:147:0x034b, B:149:0x0351, B:150:0x035d, B:152:0x0368), top: B:170:0x0347 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0347 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0270  */
    @Override // io.sentry.ISentryClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SentryId k(SentryEvent sentryEvent, IScope iScope, Hint hint) {
        Session session;
        Session session2;
        Session session3;
        Random a;
        SentryEvent sentryEvent2;
        boolean z;
        SentryId sentryId;
        boolean z2;
        String str;
        ITransaction k;
        Object b;
        ArrayList arrayList;
        SentryEnvelope m;
        boolean z3;
        SentryId sentryId2;
        boolean z4;
        FeatureFlags c;
        boolean matches;
        if (hint == null) {
            hint = new Hint();
        }
        if (w(sentryEvent, hint) && iScope != null) {
            hint.b.addAll(iScope.z());
        }
        SentryOptions sentryOptions = this.b;
        ILogger logger = sentryOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "Capturing event: %s", sentryEvent.j);
        Throwable a2 = sentryEvent.a();
        if (a2 != null && sentryOptions.getIgnoredExceptionsForType().contains(a2.getClass())) {
            sentryOptions.getLogger().c(sentryLevel, "Event was dropped as the exception %s is ignored", a2.getClass());
            sentryOptions.getClientReportRecorder().a(DiscardReason.EVENT_PROCESSOR, DataCategory.Error);
            return SentryId.k;
        }
        List<FilterString> ignoredErrors = sentryOptions.getIgnoredErrors();
        if (ignoredErrors != null && !ignoredErrors.isEmpty()) {
            HashSet hashSet = new HashSet();
            Message message = sentryEvent.z;
            if (message != null) {
                String str2 = message.k;
                if (str2 != null) {
                    hashSet.add(str2);
                }
                String str3 = message.j;
                if (str3 != null) {
                    hashSet.add(str3);
                }
            }
            Throwable a3 = sentryEvent.a();
            if (a3 != null) {
                hashSet.add(a3.toString());
            }
            Iterator<FilterString> it = ignoredErrors.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (hashSet.contains(it.next().a)) {
                        break;
                    }
                } else {
                    for (FilterString filterString : ignoredErrors) {
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            String str4 = (String) it2.next();
                            Pattern pattern = filterString.b;
                            if (pattern == null) {
                                matches = false;
                            } else {
                                matches = pattern.matcher(str4).matches();
                            }
                            if (matches) {
                            }
                        }
                    }
                }
            }
        }
        if (w(sentryEvent, hint)) {
            if (iScope != null) {
                l(sentryEvent, iScope);
                String str5 = sentryEvent.E;
                Contexts contexts = sentryEvent.k;
                if (str5 == null) {
                    sentryEvent.E = iScope.K();
                }
                if (sentryEvent.F == null) {
                    sentryEvent.i(iScope.H());
                }
                if (iScope.s() != null) {
                    sentryEvent.D = iScope.s();
                }
                ISpan b2 = iScope.b();
                if (contexts.i() == null) {
                    if (b2 == null) {
                        contexts.v(TransactionContext.b(iScope.t()));
                    } else {
                        contexts.v(b2.r());
                    }
                }
                if (contexts.f() == null && (c = iScope.c()) != null) {
                    contexts.p(c);
                }
                sentryEvent = s(sentryEvent, hint, iScope.J());
            }
            if (sentryEvent == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Event was dropped by applyScope", new Object[0]);
                return SentryId.k;
            }
        }
        SentryEvent s = s(sentryEvent, hint, sentryOptions.getEventProcessors());
        if (s != null) {
            SentryOptions.BeforeSendCallback beforeSend = sentryOptions.getBeforeSend();
            if (beforeSend != null) {
                try {
                    ((io.sentry.kotlin.multiplatform.extensions.a) beforeSend).b(s, hint);
                } catch (Throwable th) {
                    sentryOptions.getLogger().b(SentryLevel.ERROR, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue.", th);
                    s = null;
                }
            }
            if (s == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Event was dropped by beforeSend", new Object[0]);
                sentryOptions.getClientReportRecorder().a(DiscardReason.BEFORE_SEND, DataCategory.Error);
            }
        }
        if (s != null) {
            try {
                if (sentryOptions.isEnableEventSizeLimiting() && !EventSizeLimitingUtils.a(s, sentryOptions)) {
                    sentryOptions.getLogger().c(SentryLevel.INFO, "Event %s exceeds %d bytes limit. Reducing size by dropping fields.", s.j, Long.valueOf(SentryOptions.MAX_EVENT_SIZE_BYTES));
                    sentryOptions.getOnOversizedEvent();
                    List list = s.v;
                    if (list != null && !list.isEmpty()) {
                        s.v = null;
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Removed breadcrumbs to reduce size of event %s", s.j);
                    }
                    if (!EventSizeLimitingUtils.a(s, sentryOptions)) {
                        EventSizeLimitingUtils.b(s, sentryOptions);
                        if (!EventSizeLimitingUtils.a(s, sentryOptions)) {
                            sentryOptions.getLogger().c(SentryLevel.WARNING, "Event %s still exceeds size limit after reducing all fields. Event may be rejected by server.", s.j);
                        }
                    }
                }
            } catch (Throwable th2) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "An error occurred while limiting event size. Event will be sent as-is.", th2);
            }
        }
        if (s == null) {
            return SentryId.k;
        }
        boolean z5 = true;
        if (iScope != null) {
            session = iScope.u(new d(1));
        } else {
            session = null;
        }
        if (session != null) {
            if (session.p != Session.State.Ok) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                session3 = null;
                if (sentryOptions.getSampleRate() == null) {
                    a = null;
                } else {
                    a = SentryRandom.a();
                }
                if (sentryOptions.getSampleRate() == null && a != null && sentryOptions.getSampleRate().doubleValue() < a.c()) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Event %s was dropped due to sampling decision.", s.j);
                    sentryOptions.getClientReportRecorder().a(DiscardReason.SAMPLE_RATE, DataCategory.Error);
                    sentryEvent2 = null;
                } else {
                    sentryEvent2 = s;
                }
                if (session3 != null) {
                    if (session != null) {
                        Session.State state = session3.p;
                        Session.State state2 = Session.State.Crashed;
                        if (state == state2) {
                        }
                        if (session3.l.get() > 0) {
                        }
                    }
                    z = true;
                    if (sentryEvent2 != null && !z) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "Not sending session update for dropped event as it did not cause the session health to change.", new Object[0]);
                        return SentryId.k;
                    }
                    sentryId = SentryId.k;
                    if (sentryEvent2 != null && (sentryId2 = sentryEvent2.j) != null) {
                        sentryId = sentryId2;
                    }
                    boolean isInstance = Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"));
                    if (!Cached.class.isInstance(hint.b("sentry:typeCheckHint")) && !ApplyScopeData.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (sentryEvent2 != null && !isInstance && !z2) {
                        if (!sentryEvent2.g()) {
                            if (sentryEvent2.f() != null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                        }
                        sentryOptions.getSessionReplay().getClass();
                        ReplayController replayController = sentryOptions.getReplayController();
                        if (sentryEvent2.f() == null) {
                            z5 = false;
                        }
                        replayController.n(Boolean.valueOf(z5));
                    }
                    if (sentryEvent2 == null) {
                        try {
                            str = sentryEvent2.E;
                        } catch (SentryEnvelopeException e) {
                            e = e;
                            sentryOptions.getLogger().a(SentryLevel.WARNING, e, "Capturing event %s failed.", sentryId);
                            sentryId = SentryId.k;
                            if (iScope != null) {
                            }
                            return sentryId;
                        } catch (IOException e2) {
                            e = e2;
                            sentryOptions.getLogger().a(SentryLevel.WARNING, e, "Capturing event %s failed.", sentryId);
                            sentryId = SentryId.k;
                            if (iScope != null) {
                            }
                            return sentryId;
                        }
                    } else {
                        str = null;
                    }
                    TraceContext r = r(iScope, hint, sentryEvent2, str);
                    if (sentryEvent2 == null) {
                        arrayList = q(hint);
                    } else {
                        arrayList = null;
                    }
                    m = m(sentryEvent2, arrayList, session3, r, null);
                    hint.a();
                    if (m != null) {
                        sentryId = v(m, hint);
                    }
                    if (iScope != null && (k = iScope.k()) != null && TransactionEnd.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                        b = hint.b("sentry:typeCheckHint");
                        if (!(b instanceof DiskFlushNotification)) {
                            ((DiskFlushNotification) b).g(k.n());
                            k.e(SpanStatus.ABORTED, false, hint);
                        } else {
                            k.e(SpanStatus.ABORTED, false, null);
                        }
                    }
                    return sentryId;
                }
                z = false;
                if (sentryEvent2 != null) {
                }
                sentryId = SentryId.k;
                if (sentryEvent2 != null) {
                    sentryId = sentryId2;
                }
                boolean isInstance2 = Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"));
                if (!Cached.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                }
                z2 = false;
                if (sentryEvent2 != null) {
                    if (!sentryEvent2.g()) {
                    }
                    sentryOptions.getSessionReplay().getClass();
                    ReplayController replayController2 = sentryOptions.getReplayController();
                    if (sentryEvent2.f() == null) {
                    }
                    replayController2.n(Boolean.valueOf(z5));
                }
                if (sentryEvent2 == null) {
                }
                TraceContext r2 = r(iScope, hint, sentryEvent2, str);
                if (sentryEvent2 == null) {
                }
                m = m(sentryEvent2, arrayList, session3, r2, null);
                hint.a();
                if (m != null) {
                }
                if (iScope != null) {
                    b = hint.b("sentry:typeCheckHint");
                    if (!(b instanceof DiskFlushNotification)) {
                    }
                }
                return sentryId;
            }
        }
        if (HintUtils.d(hint)) {
            if (iScope != null) {
                session2 = iScope.u(new h(this, s, hint));
                session3 = session2;
                if (sentryOptions.getSampleRate() == null) {
                }
                if (sentryOptions.getSampleRate() == null) {
                }
                sentryEvent2 = s;
                if (session3 != null) {
                }
                z = false;
                if (sentryEvent2 != null) {
                }
                sentryId = SentryId.k;
                if (sentryEvent2 != null) {
                }
                boolean isInstance22 = Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"));
                if (!Cached.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                }
                z2 = false;
                if (sentryEvent2 != null) {
                }
                if (sentryEvent2 == null) {
                }
                TraceContext r22 = r(iScope, hint, sentryEvent2, str);
                if (sentryEvent2 == null) {
                }
                m = m(sentryEvent2, arrayList, session3, r22, null);
                hint.a();
                if (m != null) {
                }
                if (iScope != null) {
                }
                return sentryId;
            }
            sentryOptions.getLogger().c(SentryLevel.INFO, "Scope is null on client.captureEvent", new Object[0]);
        }
        session2 = null;
        session3 = session2;
        if (sentryOptions.getSampleRate() == null) {
        }
        if (sentryOptions.getSampleRate() == null) {
        }
        sentryEvent2 = s;
        if (session3 != null) {
        }
        z = false;
        if (sentryEvent2 != null) {
        }
        sentryId = SentryId.k;
        if (sentryEvent2 != null) {
        }
        boolean isInstance222 = Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"));
        if (!Cached.class.isInstance(hint.b("sentry:typeCheckHint"))) {
        }
        z2 = false;
        if (sentryEvent2 != null) {
        }
        if (sentryEvent2 == null) {
        }
        TraceContext r222 = r(iScope, hint, sentryEvent2, str);
        if (sentryEvent2 == null) {
        }
        m = m(sentryEvent2, arrayList, session3, r222, null);
        hint.a();
        if (m != null) {
        }
        if (iScope != null) {
        }
        return sentryId;
    }

    public final void l(SentryBaseEvent sentryBaseEvent, IScope iScope) {
        if (iScope != null) {
            if (sentryBaseEvent.m == null) {
                sentryBaseEvent.m = iScope.d();
            }
            if (sentryBaseEvent.r == null) {
                sentryBaseEvent.r = iScope.I();
            }
            if (sentryBaseEvent.n == null) {
                sentryBaseEvent.c(new HashMap(iScope.x()));
            } else {
                for (Map.Entry entry : iScope.x().entrySet()) {
                    if (!sentryBaseEvent.n.containsKey(entry.getKey())) {
                        sentryBaseEvent.n.put((String) entry.getKey(), (String) entry.getValue());
                    }
                }
            }
            if (sentryBaseEvent.v == null) {
                sentryBaseEvent.v = new ArrayList(new ArrayList(iScope.r()));
            } else {
                Queue r = iScope.r();
                List list = sentryBaseEvent.v;
                if (list != null && !r.isEmpty()) {
                    list.addAll(r);
                    Collections.sort(list, this.d);
                }
            }
            if (sentryBaseEvent.x == null) {
                sentryBaseEvent.x = new HashMap(new HashMap(iScope.getExtras()));
            } else {
                for (Map.Entry entry2 : iScope.getExtras().entrySet()) {
                    if (!sentryBaseEvent.x.containsKey(entry2.getKey())) {
                        sentryBaseEvent.x.put((String) entry2.getKey(), entry2.getValue());
                    }
                }
            }
            Contexts contexts = sentryBaseEvent.k;
            for (Map.Entry entry3 : new Contexts(iScope.B()).j.entrySet()) {
                if (!contexts.a(entry3.getKey())) {
                    contexts.k(entry3.getValue(), (String) entry3.getKey());
                }
            }
        }
    }

    public final SentryEnvelope m(SentryBaseEvent sentryBaseEvent, ArrayList arrayList, Session session, TraceContext traceContext, ProfilingTraceData profilingTraceData) {
        SentryId sentryId;
        ArrayList arrayList2 = new ArrayList();
        SentryOptions sentryOptions = this.b;
        if (sentryBaseEvent != null) {
            ISerializer serializer = sentryOptions.getSerializer();
            Charset charset = SentryEnvelopeItem.d;
            Objects.b(serializer, "ISerializer is required.");
            SentryEnvelopeItem.CachedItem cachedItem = new SentryEnvelopeItem.CachedItem(new i(serializer, sentryBaseEvent, 1));
            arrayList2.add(new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.resolve(sentryBaseEvent), new j(6, cachedItem), "application/json", null, null), new j(8, cachedItem)));
            sentryId = sentryBaseEvent.j;
        } else {
            sentryId = null;
        }
        if (session != null) {
            arrayList2.add(SentryEnvelopeItem.d(sentryOptions.getSerializer(), session));
        }
        if (profilingTraceData != null) {
            long maxTraceFileSize = sentryOptions.getMaxTraceFileSize();
            ISerializer serializer2 = sentryOptions.getSerializer();
            Charset charset2 = SentryEnvelopeItem.d;
            File file = profilingTraceData.j;
            SentryEnvelopeItem.CachedItem cachedItem2 = new SentryEnvelopeItem.CachedItem(new k(file, maxTraceFileSize, profilingTraceData, serializer2));
            arrayList2.add(new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.Profile, new j(4, cachedItem2), "application-json", file.getName(), null), new j(5, cachedItem2)));
            if (sentryId == null) {
                sentryId = new SentryId(profilingTraceData.F);
            }
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Attachment attachment = (Attachment) it.next();
                ISerializer serializer3 = sentryOptions.getSerializer();
                ILogger logger = sentryOptions.getLogger();
                long maxAttachmentSize = sentryOptions.getMaxAttachmentSize();
                Charset charset3 = SentryEnvelopeItem.d;
                SentryEnvelopeItem.CachedItem cachedItem3 = new SentryEnvelopeItem.CachedItem(new k(attachment, maxAttachmentSize, serializer3, logger));
                arrayList2.add(new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.Attachment, new j(2, cachedItem3), attachment.e, attachment.d, attachment.f), new j(3, cachedItem3)));
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return new SentryEnvelope(new SentryEnvelopeHeader(sentryId, sentryOptions.getSdkVersion(), traceContext), arrayList2);
    }

    public final SentryEnvelope n(SentryLogEvents sentryLogEvents) {
        ArrayList arrayList = new ArrayList();
        SentryOptions sentryOptions = this.b;
        ISerializer serializer = sentryOptions.getSerializer();
        Charset charset = SentryEnvelopeItem.d;
        Objects.b(serializer, "ISerializer is required.");
        SentryEnvelopeItem.CachedItem cachedItem = new SentryEnvelopeItem.CachedItem(new i(serializer, sentryLogEvents, 4));
        arrayList.add(new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.Log, new j(0, cachedItem), "application/vnd.sentry.items.log+json", (String) null, (String) null, (String) null, Integer.valueOf(sentryLogEvents.j.size())), new j(1, cachedItem)));
        return new SentryEnvelope(new SentryEnvelopeHeader(null, sentryOptions.getSdkVersion(), null), arrayList);
    }

    public final SentryEnvelope o(SentryMetricsEvents sentryMetricsEvents) {
        ArrayList arrayList = new ArrayList();
        SentryOptions sentryOptions = this.b;
        ISerializer serializer = sentryOptions.getSerializer();
        Charset charset = SentryEnvelopeItem.d;
        Objects.b(serializer, "ISerializer is required.");
        SentryEnvelopeItem.CachedItem cachedItem = new SentryEnvelopeItem.CachedItem(new i(serializer, sentryMetricsEvents, 0));
        arrayList.add(new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.TraceMetric, new j(7, cachedItem), "application/vnd.sentry.items.trace-metric+json", (String) null, (String) null, (String) null, Integer.valueOf(sentryMetricsEvents.j.size())), new j(13, cachedItem)));
        return new SentryEnvelope(new SentryEnvelopeHeader(null, sentryOptions.getSdkVersion(), null), arrayList);
    }

    public final SentryEnvelope p(final SentryReplayEvent sentryReplayEvent, final ReplayRecording replayRecording, TraceContext traceContext, final boolean z) {
        ArrayList arrayList = new ArrayList();
        SentryOptions sentryOptions = this.b;
        final ISerializer serializer = sentryOptions.getSerializer();
        final ILogger logger = sentryOptions.getLogger();
        Charset charset = SentryEnvelopeItem.d;
        final File file = sentryReplayEvent.y;
        SentryEnvelopeItem.CachedItem cachedItem = new SentryEnvelopeItem.CachedItem(new Callable() { // from class: io.sentry.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                ISerializer iSerializer = ISerializer.this;
                SentryReplayEvent sentryReplayEvent2 = sentryReplayEvent;
                File file2 = file;
                ILogger iLogger = logger;
                boolean z2 = z;
                Charset charset2 = SentryEnvelopeItem.d;
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(byteArrayOutputStream, SentryEnvelopeItem.d));
                        try {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            iSerializer.a(sentryReplayEvent2, bufferedWriter);
                            linkedHashMap.put(SentryItemType.ReplayEvent.getItemType(), byteArrayOutputStream.toByteArray());
                            byteArrayOutputStream.reset();
                            ReplayRecording replayRecording2 = replayRecording;
                            if (replayRecording2 != null) {
                                iSerializer.a(replayRecording2, bufferedWriter);
                                linkedHashMap.put(SentryItemType.ReplayRecording.getItemType(), byteArrayOutputStream.toByteArray());
                                byteArrayOutputStream.reset();
                            }
                            if (file2 != null && file2.exists()) {
                                byte[] b = FileUtils.b(10485760L, file2.getPath());
                                if (b.length > 0) {
                                    linkedHashMap.put(SentryItemType.ReplayVideo.getItemType(), b);
                                }
                            }
                            byte[] j = SentryEnvelopeItem.j(linkedHashMap);
                            bufferedWriter.close();
                            byteArrayOutputStream.close();
                            if (file2 != null) {
                                if (z2) {
                                    return j;
                                }
                            }
                            return j;
                        } finally {
                        }
                    } catch (Throwable th) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    try {
                        iLogger.b(SentryLevel.ERROR, "Could not serialize replay recording", th3);
                        if (file2 != null) {
                            if (z2) {
                                FileUtils.a(file2.getParentFile());
                                return null;
                            }
                            file2.delete();
                            return null;
                        }
                        return null;
                    } finally {
                        if (file2 != null) {
                            if (z2) {
                                FileUtils.a(file2.getParentFile());
                            } else {
                                file2.delete();
                            }
                        }
                    }
                }
            }
        });
        arrayList.add(new SentryEnvelopeItem(new SentryEnvelopeItemHeader(SentryItemType.ReplayVideo, new j(11, cachedItem), null, null, null), new j(12, cachedItem)));
        return new SentryEnvelope(new SentryEnvelopeHeader(sentryReplayEvent.j, sentryOptions.getSessionReplay().l, traceContext), arrayList);
    }

    public final TraceContext r(IScope iScope, Hint hint, SentryBaseEvent sentryBaseEvent, String str) {
        String str2;
        boolean isInstance = Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"));
        SentryOptions sentryOptions = this.b;
        if (isInstance) {
            if (sentryBaseEvent != null) {
                sentryOptions.getLogger();
                Baggage baggage = new Baggage();
                Contexts contexts = sentryBaseEvent.k;
                SpanContext i = contexts.i();
                if (i != null) {
                    str2 = i.j.toString();
                } else {
                    str2 = null;
                }
                baggage.b("sentry-trace_id", str2);
                baggage.b("sentry-public_key", sentryOptions.retrieveParsedDsn().b);
                baggage.b("sentry-release", sentryBaseEvent.o);
                baggage.b("sentry-environment", sentryBaseEvent.p);
                baggage.b("sentry-org_id", sentryOptions.getEffectiveOrgId());
                baggage.b("sentry-transaction", str);
                if (baggage.e) {
                    baggage.c = null;
                }
                baggage.b("sentry-sampled", null);
                if (baggage.e) {
                    baggage.d = null;
                }
                Object c = contexts.c("replay_id");
                if (c != null && !c.toString().equals(SentryId.k.toString())) {
                    baggage.b("sentry-replay_id", c.toString());
                    contexts.j.remove("replay_id");
                }
                baggage.e = false;
                return baggage.e();
            }
        } else if (iScope != null) {
            ITransaction k = iScope.k();
            if (k != null) {
                return k.b();
            }
            return iScope.C(new n5(14, iScope, sentryOptions)).c.e();
        }
        return null;
    }

    public final SentryEvent s(SentryEvent sentryEvent, Hint hint, List list) {
        SentryOptions sentryOptions = this.b;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EventProcessor eventProcessor = (EventProcessor) it.next();
            try {
                boolean z = eventProcessor instanceof BackfillingEventProcessor;
                boolean isInstance = Backfillable.class.isInstance(hint.b("sentry:typeCheckHint"));
                if (isInstance && z) {
                    ((ApplicationExitInfoEventProcessor) eventProcessor).h(sentryEvent, hint);
                } else if (!isInstance && !z) {
                    sentryEvent = eventProcessor.h(sentryEvent, hint);
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while processing event by processor: %s", eventProcessor.getClass().getName());
            }
            if (sentryEvent == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Event was dropped by a processor: %s", eventProcessor.getClass().getName());
                sentryOptions.getClientReportRecorder().a(DiscardReason.EVENT_PROCESSOR, DataCategory.Error);
                break;
            }
        }
        return sentryEvent;
    }

    public final SentryEvent t(SentryEvent sentryEvent, Hint hint, List list) {
        SentryOptions sentryOptions = this.b;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EventProcessor eventProcessor = (EventProcessor) it.next();
            try {
                sentryEvent = eventProcessor.h(sentryEvent, hint);
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while processing feedback event by processor: %s", eventProcessor.getClass().getName());
            }
            if (sentryEvent == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Feedback event was dropped by a processor: %s", eventProcessor.getClass().getName());
                sentryOptions.getClientReportRecorder().a(DiscardReason.EVENT_PROCESSOR, DataCategory.Feedback);
                break;
            }
        }
        return sentryEvent;
    }

    public final SentryTransaction u(SentryTransaction sentryTransaction, Hint hint, List list) {
        int size;
        SentryOptions sentryOptions = this.b;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EventProcessor eventProcessor = (EventProcessor) it.next();
            int size2 = sentryTransaction.B.size();
            try {
                sentryTransaction = eventProcessor.n(sentryTransaction, hint);
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "An exception occurred while processing transaction by processor: %s", eventProcessor.getClass().getName());
            }
            if (sentryTransaction == null) {
                size = 0;
            } else {
                size = sentryTransaction.B.size();
            }
            if (sentryTransaction == null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Transaction was dropped by a processor: %s", eventProcessor.getClass().getName());
                IClientReportRecorder clientReportRecorder = sentryOptions.getClientReportRecorder();
                DiscardReason discardReason = DiscardReason.EVENT_PROCESSOR;
                clientReportRecorder.a(discardReason, DataCategory.Transaction);
                sentryOptions.getClientReportRecorder().c(discardReason, DataCategory.Span, size2 + 1);
                break;
            }
            if (size < size2) {
                int i = size2 - size;
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "%d spans were dropped by a processor: %s", Integer.valueOf(i), eventProcessor.getClass().getName());
                sentryOptions.getClientReportRecorder().c(DiscardReason.EVENT_PROCESSOR, DataCategory.Span, i);
            }
        }
        return sentryTransaction;
    }

    public final SentryId v(SentryEnvelope sentryEnvelope, Hint hint) {
        SentryOptions sentryOptions = this.b;
        sentryOptions.getBeforeEnvelopeCallback();
        SentryIntegrationPackageStorage.d().c(sentryOptions.getLogger());
        ITransport iTransport = this.c;
        if (hint == null) {
            iTransport.getClass();
            iTransport.N(sentryEnvelope, new Hint());
        } else {
            iTransport.N(sentryEnvelope, hint);
        }
        SentryId sentryId = sentryEnvelope.a.j;
        if (sentryId != null) {
            return sentryId;
        }
        return SentryId.k;
    }

    public final boolean w(SentryBaseEvent sentryBaseEvent, Hint hint) {
        if (HintUtils.d(hint)) {
            return true;
        }
        this.b.getLogger().c(SentryLevel.DEBUG, "Event was cached so not applying scope: %s", sentryBaseEvent.j);
        return false;
    }
}
