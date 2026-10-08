package io.sentry;

import io.sentry.hints.Flushable;
import io.sentry.hints.Resettable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.util.LogUtils;
import io.sentry.util.Objects;
import io.sentry.util.SampleRateUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OutboxSender extends DirectoryProcessor {
    public static final Charset i = Charset.forName("UTF-8");
    public final IScopes e;
    public final IEnvelopeReader f;
    public final ISerializer g;
    public final ILogger h;

    public OutboxSender(IScopes iScopes, IEnvelopeReader iEnvelopeReader, ISerializer iSerializer, ILogger iLogger, long j, int i2) {
        super(iScopes, iLogger, j, i2);
        Objects.b(iScopes, "Scopes are required.");
        this.e = iScopes;
        Objects.b(iEnvelopeReader, "Envelope reader is required.");
        this.f = iEnvelopeReader;
        Objects.b(iSerializer, "Serializer is required.");
        this.g = iSerializer;
        Objects.b(iLogger, "Logger is required.");
        this.h = iLogger;
    }

    public static /* synthetic */ void c(OutboxSender outboxSender, File file, Retryable retryable) {
        ILogger iLogger = outboxSender.h;
        if (!retryable.a()) {
            try {
                if (!file.delete()) {
                    iLogger.c(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
                }
            } catch (RuntimeException e) {
                iLogger.a(SentryLevel.ERROR, e, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
    }

    @Override // io.sentry.DirectoryProcessor
    public final boolean a(String str) {
        if (str != null && !str.startsWith("session") && !str.startsWith("previous_session") && !str.startsWith("startup_crash")) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.DirectoryProcessor
    public final void b(File file, Hint hint) {
        boolean a = a(file.getName());
        ILogger iLogger = this.h;
        try {
            if (!a) {
                iLogger.c(SentryLevel.DEBUG, "File '%s' should be ignored.", file.getAbsolutePath());
                return;
            }
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    SentryEnvelope a2 = this.f.a(bufferedInputStream);
                    if (a2 == null) {
                        iLogger.c(SentryLevel.ERROR, "Stream from path %s resulted in a null envelope.", file.getAbsolutePath());
                    } else {
                        e(a2, hint);
                        iLogger.c(SentryLevel.DEBUG, "File '%s' is done.", file.getAbsolutePath());
                    }
                    bufferedInputStream.close();
                    Object b = hint.b("sentry:typeCheckHint");
                    if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b != null) {
                        c(this, file, (Retryable) b);
                    } else {
                        LogUtils.a(Retryable.class, b, iLogger);
                    }
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                iLogger.b(SentryLevel.ERROR, "Error processing envelope.", e);
                Object b2 = hint.b("sentry:typeCheckHint");
                if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b2 != null) {
                    c(this, file, (Retryable) b2);
                } else {
                    LogUtils.a(Retryable.class, b2, iLogger);
                }
            }
        } catch (Throwable th3) {
            Object b3 = hint.b("sentry:typeCheckHint");
            if (Retryable.class.isInstance(hint.b("sentry:typeCheckHint")) && b3 != null) {
                c(this, file, (Retryable) b3);
            } else {
                LogUtils.a(Retryable.class, b3, iLogger);
            }
            throw th3;
        }
    }

    public final TracesSamplingDecision d(TraceContext traceContext) {
        String str;
        ILogger iLogger = this.h;
        if (traceContext != null && (str = traceContext.p) != null) {
            try {
                Double valueOf = Double.valueOf(Double.parseDouble(str));
                if (!SampleRateUtils.c(valueOf, false)) {
                    iLogger.c(SentryLevel.ERROR, "Invalid sample rate parsed from TraceContext: %s", str);
                } else {
                    String str2 = traceContext.q;
                    if (str2 != null) {
                        Double valueOf2 = Double.valueOf(Double.parseDouble(str2));
                        if (SampleRateUtils.c(valueOf2, false)) {
                            return new TracesSamplingDecision(Boolean.TRUE, valueOf, valueOf2, Boolean.FALSE, null);
                        }
                    }
                    return SampleRateUtils.a(new TracesSamplingDecision(Boolean.TRUE, valueOf));
                }
            } catch (Exception unused) {
                iLogger.c(SentryLevel.ERROR, "Unable to parse sample rate from TraceContext: %s", str);
            }
        }
        return new TracesSamplingDecision(Boolean.TRUE, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x026b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0272 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(SentryEnvelope sentryEnvelope, Hint hint) {
        int i2;
        Iterator it;
        int i3;
        String str;
        BufferedReader bufferedReader;
        Object b;
        Object b2;
        String str2;
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        Iterable iterable = sentryEnvelope.b;
        SentryEnvelopeHeader sentryEnvelopeHeader = sentryEnvelope.a;
        int i4 = 0;
        if (iterable instanceof Collection) {
            i2 = ((Collection) iterable).size();
        } else {
            Iterator it2 = iterable.iterator();
            int i5 = 0;
            while (it2.hasNext()) {
                it2.next();
                i5++;
            }
            i2 = i5;
        }
        Object[] objArr = {Integer.valueOf(i2)};
        ILogger iLogger = this.h;
        iLogger.c(sentryLevel, "Processing Envelope with %d item(s)", objArr);
        Iterator it3 = iterable.iterator();
        while (it3.hasNext()) {
            SentryEnvelopeItem sentryEnvelopeItem = (SentryEnvelopeItem) it3.next();
            int i6 = i4 + 1;
            SentryEnvelopeItemHeader sentryEnvelopeItemHeader = sentryEnvelopeItem.a;
            SentryEnvelopeItemHeader sentryEnvelopeItemHeader2 = sentryEnvelopeItem.a;
            if (sentryEnvelopeItemHeader == null) {
                iLogger.c(SentryLevel.ERROR, "Item %d has no header", Integer.valueOf(i6));
                it = it3;
                i3 = i6;
            } else {
                boolean equals = SentryItemType.Event.equals(sentryEnvelopeItemHeader.n);
                ISerializer iSerializer = this.g;
                it = it3;
                Charset charset = i;
                i3 = i6;
                IScopes iScopes = this.e;
                if (equals) {
                    try {
                        str = "Item failed to process.";
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.f()), charset));
                            try {
                                SentryEvent sentryEvent = (SentryEvent) iSerializer.d(bufferedReader, SentryEvent.class);
                                if (sentryEvent == null) {
                                    iLogger.c(SentryLevel.ERROR, "Item %d of type %s returned null by the parser.", Integer.valueOf(i3), sentryEnvelopeItemHeader2.n);
                                } else {
                                    SdkVersion sdkVersion = sentryEvent.l;
                                    if (sdkVersion != null) {
                                        String str3 = sdkVersion.j;
                                        if (str3.startsWith("sentry.javascript") || str3.startsWith("sentry.dart") || str3.startsWith("sentry.dotnet")) {
                                            hint.d(Boolean.TRUE, "sentry:isFromHybridSdk");
                                        }
                                    }
                                    SentryId sentryId = sentryEnvelopeHeader.j;
                                    if (sentryId != null && !sentryId.equals(sentryEvent.j)) {
                                        iLogger.c(SentryLevel.ERROR, "Item %d of has a different event id (%s) to the envelope header (%s)", Integer.valueOf(i3), sentryEnvelopeHeader.j, sentryEvent.j);
                                        bufferedReader.close();
                                    } else {
                                        iScopes.x(sentryEvent, hint);
                                        iLogger.c(SentryLevel.DEBUG, "Item %d is being captured.", Integer.valueOf(i3));
                                        if (!f(hint)) {
                                            iLogger.c(SentryLevel.WARNING, "Timed out waiting for event id submission: %s", sentryEvent.j);
                                            bufferedReader.close();
                                            return;
                                        }
                                    }
                                }
                                bufferedReader.close();
                            } finally {
                            }
                        } catch (Throwable th) {
                            th = th;
                            iLogger.b(SentryLevel.ERROR, str, th);
                            b = hint.b("sentry:typeCheckHint");
                            if (!(b instanceof SubmissionResult)) {
                            }
                            b2 = hint.b("sentry:typeCheckHint");
                            if (Resettable.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                            }
                            it3 = it;
                            i4 = i3;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        str = "Item failed to process.";
                    }
                    b = hint.b("sentry:typeCheckHint");
                    if (!(b instanceof SubmissionResult) && !((SubmissionResult) b).f()) {
                        iLogger.c(SentryLevel.WARNING, "Envelope had a failed capture at item %d. No more items will be sent.", Integer.valueOf(i3));
                        return;
                    }
                    b2 = hint.b("sentry:typeCheckHint");
                    if (Resettable.class.isInstance(hint.b("sentry:typeCheckHint")) && b2 != null) {
                        ((Resettable) b2).reset();
                    }
                } else {
                    SentryItemType sentryItemType = SentryItemType.Transaction;
                    SentryItemType sentryItemType2 = sentryEnvelopeItemHeader.n;
                    SentryItemType sentryItemType3 = sentryEnvelopeItemHeader.n;
                    if (sentryItemType.equals(sentryItemType2)) {
                        try {
                            str2 = "Item failed to process.";
                        } catch (Throwable th3) {
                            th = th3;
                            str2 = "Item failed to process.";
                        }
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.f()), charset));
                            try {
                                SentryTransaction sentryTransaction = (SentryTransaction) iSerializer.d(bufferedReader, SentryTransaction.class);
                                if (sentryTransaction == null) {
                                    iLogger.c(SentryLevel.ERROR, "Item %d of type %s returned null by the parser.", Integer.valueOf(i3), sentryEnvelopeItemHeader2.n);
                                } else {
                                    SentryId sentryId2 = sentryEnvelopeHeader.j;
                                    if (sentryId2 != null && !sentryId2.equals(sentryTransaction.j)) {
                                        iLogger.c(SentryLevel.ERROR, "Item %d of has a different event id (%s) to the envelope header (%s)", Integer.valueOf(i3), sentryEnvelopeHeader.j, sentryTransaction.j);
                                        bufferedReader.close();
                                    } else {
                                        TraceContext traceContext = sentryEnvelopeHeader.l;
                                        if (sentryTransaction.k.i() != null) {
                                            sentryTransaction.k.i().a(d(traceContext));
                                        }
                                        iScopes.u(sentryTransaction, traceContext, hint, null);
                                        iLogger.c(SentryLevel.DEBUG, "Item %d is being captured.", Integer.valueOf(i3));
                                        if (!f(hint)) {
                                            iLogger.c(SentryLevel.WARNING, "Timed out waiting for event id submission: %s", sentryTransaction.j);
                                            bufferedReader.close();
                                            return;
                                        }
                                    }
                                }
                                bufferedReader.close();
                            } finally {
                                try {
                                    bufferedReader.close();
                                    throw th;
                                } catch (Throwable th4) {
                                    th.addSuppressed(th4);
                                }
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            iLogger.b(SentryLevel.ERROR, str2, th);
                            b = hint.b("sentry:typeCheckHint");
                            if (!(b instanceof SubmissionResult)) {
                            }
                            b2 = hint.b("sentry:typeCheckHint");
                            if (Resettable.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                            }
                            it3 = it;
                            i4 = i3;
                        }
                    } else {
                        iScopes.g(new SentryEnvelope(sentryEnvelopeHeader.j, sentryEnvelopeHeader.k, sentryEnvelopeItem), hint);
                        iLogger.c(SentryLevel.DEBUG, "%s item %d is being captured.", sentryItemType3.getItemType(), Integer.valueOf(i3));
                        if (!f(hint)) {
                            iLogger.c(SentryLevel.WARNING, "Timed out waiting for item type submission: %s", sentryItemType3.getItemType());
                            return;
                        }
                    }
                    b = hint.b("sentry:typeCheckHint");
                    if (!(b instanceof SubmissionResult)) {
                    }
                    b2 = hint.b("sentry:typeCheckHint");
                    if (Resettable.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                        ((Resettable) b2).reset();
                    }
                }
            }
            it3 = it;
            i4 = i3;
        }
    }

    public final boolean f(Hint hint) {
        Object b = hint.b("sentry:typeCheckHint");
        if (b instanceof Flushable) {
            return ((Flushable) b).e();
        }
        LogUtils.a(Flushable.class, b, this.h);
        return true;
    }
}
