package io.sentry.android.core;

import android.annotation.SuppressLint;
import android.app.ApplicationExitInfo;
import android.content.Context;
import io.sentry.Attachment;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.ISentryExecutorService;
import io.sentry.Integration;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.ApplicationExitInfoHistoryDispatcher;
import io.sentry.android.core.cache.AndroidEnvelopeCache;
import io.sentry.android.core.internal.threaddump.Lines;
import io.sentry.android.core.internal.threaddump.ThreadDumpParser;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.Backfillable;
import io.sentry.hints.BlockingFlushHint;
import io.sentry.protocol.SentryId;
import io.sentry.transport.CurrentDateProvider;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class AnrV2Integration implements Integration, Closeable {
    public final Context j;
    public final CurrentDateProvider k;
    public SentryAndroidOptions l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AnrV2Policy implements ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy {
        public final SentryAndroidOptions a;

        public AnrV2Policy(SentryAndroidOptions sentryAndroidOptions) {
            this.a = sentryAndroidOptions;
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final int a() {
            return 6;
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final Long b() {
            return AndroidEnvelopeCache.j(this.a, "last_anr_report", "ANR");
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final String c() {
            return "ANR";
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final boolean d() {
            return this.a.isReportHistoricalAnrs();
        }

        /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object, io.sentry.protocol.Message] */
        /* JADX WARN: Type inference failed for: r2v2, types: [io.sentry.protocol.DebugMeta, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v4, types: [io.sentry.android.core.internal.threaddump.Line, java.lang.Object] */
        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final ApplicationExitInfoHistoryDispatcher.Report e(ApplicationExitInfo applicationExitInfo, boolean z) {
            long timestamp;
            int importance;
            boolean z2;
            ParseResult parseResult;
            byte[] bArr;
            String applicationExitInfo2;
            InputStream traceInputStream;
            SentryAndroidOptions sentryAndroidOptions = this.a;
            timestamp = applicationExitInfo.getTimestamp();
            importance = applicationExitInfo.getImportance();
            if (importance != 100) {
                z2 = true;
            } else {
                z2 = false;
            }
            try {
                traceInputStream = applicationExitInfo.getTraceInputStream();
                try {
                    if (traceInputStream == null) {
                        parseResult = new ParseResult(ParseResult.Type.NO_DUMP);
                        if (traceInputStream != null) {
                            traceInputStream.close();
                        }
                    } else {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            byte[] bArr2 = new byte[1024];
                            while (true) {
                                int read = traceInputStream.read(bArr2, 0, 1024);
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr2, 0, read);
                            }
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            traceInputStream.close();
                            try {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(byteArray)));
                                try {
                                    ArrayList arrayList = new ArrayList();
                                    while (true) {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        ?? obj = new Object();
                                        obj.a = readLine;
                                        arrayList.add(obj);
                                    }
                                    Lines lines = new Lines(arrayList);
                                    ThreadDumpParser threadDumpParser = new ThreadDumpParser(sentryAndroidOptions, z2);
                                    threadDumpParser.d(lines);
                                    ArrayList arrayList2 = threadDumpParser.e;
                                    ArrayList arrayList3 = new ArrayList(threadDumpParser.d.values());
                                    if (arrayList2.isEmpty()) {
                                        parseResult = new ParseResult(ParseResult.Type.NO_DUMP);
                                    } else {
                                        parseResult = new ParseResult(ParseResult.Type.DUMP, byteArray, arrayList2, arrayList3);
                                    }
                                    bufferedReader.close();
                                } finally {
                                }
                            } catch (Throwable th) {
                                sentryAndroidOptions.getLogger().b(SentryLevel.WARNING, "Failed to parse ANR thread dump", th);
                                parseResult = new ParseResult(ParseResult.Type.ERROR, byteArray);
                            }
                        } finally {
                        }
                    }
                } finally {
                }
            } catch (Throwable th2) {
                sentryAndroidOptions.getLogger().b(SentryLevel.WARNING, "Failed to read ANR thread dump", th2);
                parseResult = new ParseResult(ParseResult.Type.NO_DUMP);
            }
            ParseResult parseResult2 = parseResult;
            ParseResult.Type type = ParseResult.Type.NO_DUMP;
            ParseResult.Type type2 = parseResult2.a;
            if (type2 == type) {
                ILogger logger = sentryAndroidOptions.getLogger();
                SentryLevel sentryLevel = SentryLevel.WARNING;
                applicationExitInfo2 = applicationExitInfo.toString();
                logger.c(sentryLevel, "Not reporting ANR event as there was no thread dump for the ANR %s", applicationExitInfo2);
                return null;
            }
            AnrV2Hint anrV2Hint = new AnrV2Hint(sentryAndroidOptions.getFlushTimeoutMillis(), sentryAndroidOptions.getLogger(), timestamp, z, z2);
            Hint a = HintUtils.a(anrV2Hint);
            SentryEvent sentryEvent = new SentryEvent();
            if (type2 == ParseResult.Type.ERROR) {
                ?? obj2 = new Object();
                obj2.j = "Sentry Android SDK failed to parse system thread dump for this ANR. We recommend enabling [SentryOptions.isAttachAnrThreadDump] option to attach the thread dump as plain text and report this issue on GitHub.";
                sentryEvent.z = obj2;
            } else if (type2 == ParseResult.Type.DUMP) {
                sentryEvent.j(parseResult2.c);
                ArrayList arrayList4 = parseResult2.d;
                if (arrayList4 != null) {
                    ?? obj3 = new Object();
                    obj3.k = new ArrayList(arrayList4);
                    sentryEvent.w = obj3;
                }
            }
            sentryEvent.D = SentryLevel.FATAL;
            sentryEvent.y = DateUtils.c(timestamp);
            if (sentryAndroidOptions.isAttachAnrThreadDump() && (bArr = parseResult2.b) != null) {
                a.f = new Attachment("thread-dump.txt", "text/plain", "event.attachment", bArr);
            }
            return new ApplicationExitInfoHistoryDispatcher.Report(sentryEvent, a, anrV2Hint);
        }
    }

    public AnrV2Integration(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = CurrentDateProvider.j;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.l = sentryAndroidOptions;
        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "AnrIntegration enabled: %s", Boolean.valueOf(this.l.isAnrEnabled()));
        String cacheDirPath = this.l.getCacheDirPath();
        SentryAndroidOptions sentryAndroidOptions2 = this.l;
        if (cacheDirPath == null) {
            sentryAndroidOptions2.getLogger().c(SentryLevel.INFO, "Cache dir is not set, unable to process ANRs", new Object[0]);
            return;
        }
        if (sentryAndroidOptions2.isAnrEnabled()) {
            try {
                ISentryExecutorService executorService = sentryOptions.getExecutorService();
                Context context = this.j;
                SentryAndroidOptions sentryAndroidOptions3 = this.l;
                executorService.submit(new ApplicationExitInfoHistoryDispatcher(context, sentryAndroidOptions3, this.k, new AnrV2Policy(sentryAndroidOptions3)));
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.DEBUG, "Failed to start ANR processor.", th);
            }
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "AnrV2Integration installed.", new Object[0]);
            IntegrationUtils.a("AnrV2");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "AnrV2Integration removed.", new Object[0]);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ParseResult {
        public final Type a;
        public final byte[] b;
        public final List c;
        public final ArrayList d;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public enum Type {
            DUMP,
            NO_DUMP,
            ERROR
        }

        public ParseResult(Type type) {
            this.a = type;
            this.b = null;
            this.c = null;
            this.d = null;
        }

        public ParseResult(Type type, byte[] bArr) {
            this.a = type;
            this.b = bArr;
            this.c = null;
            this.d = null;
        }

        public ParseResult(Type type, byte[] bArr, ArrayList arrayList, ArrayList arrayList2) {
            this.a = type;
            this.b = bArr;
            this.c = arrayList;
            this.d = arrayList2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AnrV2Hint extends BlockingFlushHint implements Backfillable, AbnormalExit {
        public final long d;
        public final boolean e;
        public final boolean f;

        public AnrV2Hint(long j, ILogger iLogger, long j2, boolean z, boolean z2) {
            super(j, iLogger);
            this.d = j2;
            this.e = z;
            this.f = z2;
        }

        @Override // io.sentry.hints.Backfillable
        public final boolean a() {
            return this.e;
        }

        @Override // io.sentry.hints.AbnormalExit
        public final Long b() {
            return Long.valueOf(this.d);
        }

        @Override // io.sentry.hints.AbnormalExit
        public final boolean c() {
            return false;
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public final boolean d(SentryId sentryId) {
            return true;
        }

        @Override // io.sentry.hints.AbnormalExit
        public final String f() {
            if (this.f) {
                return "anr_background";
            }
            return "anr_foreground";
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public final void g(SentryId sentryId) {
        }
    }
}
