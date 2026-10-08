package io.sentry.android.core;

import android.app.ApplicationExitInfo;
import android.content.Context;
import io.sentry.Attachment;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.ISentryExecutorService;
import io.sentry.Integration;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryEnvelopeItemHeader;
import io.sentry.SentryEvent;
import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.ApplicationExitInfoHistoryDispatcher;
import io.sentry.android.core.NativeEventCollector;
import io.sentry.android.core.cache.AndroidEnvelopeCache;
import io.sentry.android.core.internal.tombstone.NativeExceptionMechanism;
import io.sentry.android.core.internal.tombstone.TombstoneParser;
import io.sentry.hints.Backfillable;
import io.sentry.hints.BlockingFlushHint;
import io.sentry.hints.NativeCrashExit;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.Message;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryId;
import io.sentry.transport.CurrentDateProvider;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TombstoneIntegration implements Integration, Closeable {
    public final Context j;
    public final CurrentDateProvider k;
    public SentryAndroidOptions l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class TombstonePolicy implements ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy {
        public final SentryAndroidOptions a;
        public final NativeEventCollector b;
        public final Context c;

        public TombstonePolicy(Context context, SentryAndroidOptions sentryAndroidOptions) {
            this.a = sentryAndroidOptions;
            this.b = new NativeEventCollector(sentryAndroidOptions);
            this.c = context;
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final int a() {
            return 5;
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final Long b() {
            return AndroidEnvelopeCache.j(this.a, "last_tombstone_report", "Tombstone");
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final String c() {
            return "Tombstone";
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final boolean d() {
            return this.a.isReportHistoricalTombstones();
        }

        @Override // io.sentry.android.core.ApplicationExitInfoHistoryDispatcher.ApplicationExitInfoPolicy
        public final ApplicationExitInfoHistoryDispatcher.Report e(ApplicationExitInfo applicationExitInfo, boolean z) {
            long timestamp;
            InputStream traceInputStream;
            long timestamp2;
            long timestamp3;
            SentryAndroidOptions sentryAndroidOptions = this.a;
            try {
                traceInputStream = applicationExitInfo.getTraceInputStream();
                if (traceInputStream == null) {
                    ILogger logger = sentryAndroidOptions.getLogger();
                    SentryLevel sentryLevel = SentryLevel.WARNING;
                    DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ISO_INSTANT;
                    timestamp3 = applicationExitInfo.getTimestamp();
                    logger.c(sentryLevel, "No tombstone InputStream available for ApplicationExitInfo from %s", dateTimeFormatter.format(Instant.ofEpochMilli(timestamp3)));
                    return null;
                }
                TombstoneParser tombstoneParser = new TombstoneParser(traceInputStream, sentryAndroidOptions.getInAppIncludes(), sentryAndroidOptions.getInAppExcludes(), this.c.getApplicationInfo().nativeLibraryDir);
                try {
                    SentryEvent a = tombstoneParser.a();
                    tombstoneParser.close();
                    timestamp2 = applicationExitInfo.getTimestamp();
                    a.y = DateUtils.c(timestamp2);
                    TombstoneHint tombstoneHint = new TombstoneHint(sentryAndroidOptions.getFlushTimeoutMillis(), sentryAndroidOptions.getLogger(), timestamp2, z);
                    Hint a2 = HintUtils.a(tombstoneHint);
                    try {
                        SentryEvent f = f(timestamp2, a, a2);
                        if (f != null) {
                            a = f;
                        }
                    } catch (Throwable th) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Failed to merge native event with tombstone, continuing without merge: %s", th.getMessage());
                    }
                    return new ApplicationExitInfoHistoryDispatcher.Report(a, a2, tombstoneHint);
                } finally {
                }
            } catch (Throwable th2) {
                ILogger logger2 = sentryAndroidOptions.getLogger();
                SentryLevel sentryLevel2 = SentryLevel.WARNING;
                DateTimeFormatter dateTimeFormatter2 = DateTimeFormatter.ISO_INSTANT;
                timestamp = applicationExitInfo.getTimestamp();
                logger2.c(sentryLevel2, "Failed to parse tombstone from %s: %s", dateTimeFormatter2.format(Instant.ofEpochMilli(timestamp)), th2.getMessage());
                return null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:193:0x0125, code lost:
        
            r13.close();
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:122:0x02a5 A[EDGE_INSN: B:122:0x02a5->B:17:0x02a5 BREAK  A[LOOP:0: B:5:0x01d0->B:121:?], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:187:0x0187  */
        /* JADX WARN: Removed duplicated region for block: B:190:0x01aa A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x01d6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final SentryEvent f(long j, SentryEvent sentryEvent, Hint hint) {
            SentryEvent sentryEvent2;
            boolean z;
            File[] fileArr;
            String name;
            NativeEventCollector.NativeEnvelopeMetadata nativeEnvelopeMetadata;
            NativeEventCollector.NativeEnvelopeMetadata nativeEnvelopeMetadata2;
            String str;
            long j2;
            Iterator it;
            NativeEventCollector.NativeEventData nativeEventData;
            String str2;
            NativeEventCollector nativeEventCollector = this.b;
            ArrayList arrayList = nativeEventCollector.b;
            SentryAndroidOptions sentryAndroidOptions = nativeEventCollector.a;
            int i = 0;
            if (!nativeEventCollector.c) {
                boolean z2 = true;
                nativeEventCollector.c = true;
                String outboxPath = sentryAndroidOptions.getOutboxPath();
                if (outboxPath == null) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Outbox path is null, skipping native event collection.", new Object[0]);
                } else {
                    File[] listFiles = new File(outboxPath).listFiles();
                    if (listFiles == null) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Outbox path is not a directory or an I/O error occurred: %s", outboxPath);
                    } else if (listFiles.length == 0) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "No envelope files found in outbox.", new Object[0]);
                    } else {
                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Scanning %d files in outbox for native events.", Integer.valueOf(listFiles.length));
                        int length = listFiles.length;
                        int i2 = 0;
                        while (i2 < length) {
                            File file = listFiles[i2];
                            if (file.isFile() && (name = file.getName()) != null && !name.startsWith("session") && !name.startsWith("previous_session") && !name.startsWith("startup_crash")) {
                                try {
                                    BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                                    int i3 = i;
                                    while (true) {
                                        try {
                                            int read = bufferedInputStream.read();
                                            nativeEnvelopeMetadata = null;
                                            if (read != -1) {
                                                i3++;
                                                if (read == 10) {
                                                    break;
                                                }
                                            } else if (i3 <= 0) {
                                                i3 = -1;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            z = z2;
                                            fileArr = listFiles;
                                            nativeEnvelopeMetadata = null;
                                        }
                                    }
                                    if (i3 < 0) {
                                        try {
                                            bufferedInputStream.close();
                                            z = z2;
                                            fileArr = listFiles;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            z = z2;
                                            fileArr = listFiles;
                                            sentryAndroidOptions.getLogger().a(SentryLevel.DEBUG, th, "Error extracting metadata from envelope file: %s", file.getAbsolutePath());
                                            nativeEnvelopeMetadata2 = nativeEnvelopeMetadata;
                                            if (nativeEnvelopeMetadata2 != null) {
                                            }
                                            i2++;
                                            listFiles = fileArr;
                                            z2 = z;
                                            i = 0;
                                        }
                                    } else {
                                        boolean z3 = z2;
                                        fileArr = listFiles;
                                        long j3 = i3;
                                        while (true) {
                                            if (j3 < 209715200) {
                                                try {
                                                    StringBuilder sb = new StringBuilder();
                                                    z = z3;
                                                    while (true) {
                                                        try {
                                                            int read2 = bufferedInputStream.read();
                                                            if (read2 != -1) {
                                                                if (read2 == 10) {
                                                                    str = sb.toString();
                                                                    break;
                                                                }
                                                                sb.append((char) read2);
                                                            } else if (sb.length() > 0) {
                                                                str = sb.toString();
                                                            } else {
                                                                str = null;
                                                            }
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            Throwable th4 = th;
                                                            try {
                                                                bufferedInputStream.close();
                                                            } catch (Throwable th5) {
                                                                th4.addSuppressed(th5);
                                                            }
                                                            throw th4;
                                                            break;
                                                        }
                                                    }
                                                    if (str == null || str.isEmpty()) {
                                                        break;
                                                    }
                                                    long length2 = j3 + str.length() + 1;
                                                    NativeEventCollector.ItemHeaderInfo b = nativeEventCollector.b(str);
                                                    if (b == null) {
                                                        break;
                                                    }
                                                    int i4 = b.b;
                                                    if ("event".equals(b.a)) {
                                                        nativeEnvelopeMetadata2 = nativeEventCollector.a(bufferedInputStream, i4, file);
                                                        if (nativeEnvelopeMetadata2 != null) {
                                                            try {
                                                                break;
                                                            } catch (Throwable th6) {
                                                                th = th6;
                                                                sentryAndroidOptions.getLogger().a(SentryLevel.DEBUG, th, "Error extracting metadata from envelope file: %s", file.getAbsolutePath());
                                                                nativeEnvelopeMetadata2 = nativeEnvelopeMetadata;
                                                                if (nativeEnvelopeMetadata2 != null) {
                                                                }
                                                                i2++;
                                                                listFiles = fileArr;
                                                                z2 = z;
                                                                i = 0;
                                                            }
                                                        } else {
                                                            j2 = length2;
                                                        }
                                                    } else {
                                                        j2 = length2;
                                                        NativeEventCollector.c(bufferedInputStream, i4);
                                                    }
                                                    long j4 = j2 + i4;
                                                    int read3 = bufferedInputStream.read();
                                                    if (read3 == -1) {
                                                        break;
                                                    }
                                                    j3 = j4 + 1;
                                                    if (read3 != 10) {
                                                        break;
                                                    }
                                                    z3 = z;
                                                } catch (Throwable th7) {
                                                    th = th7;
                                                    z = z3;
                                                }
                                            } else {
                                                z = z3;
                                                break;
                                            }
                                        }
                                        bufferedInputStream.close();
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    z = z2;
                                    fileArr = listFiles;
                                    nativeEnvelopeMetadata = null;
                                }
                                nativeEnvelopeMetadata2 = nativeEnvelopeMetadata;
                                if (nativeEnvelopeMetadata2 != null) {
                                    arrayList.add(nativeEnvelopeMetadata2);
                                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Found native event in outbox: %s (timestamp: %d)", file.getName(), Long.valueOf(nativeEnvelopeMetadata2.b));
                                }
                            } else {
                                z = z2;
                                fileArr = listFiles;
                            }
                            i2++;
                            listFiles = fileArr;
                            z2 = z;
                            i = 0;
                        }
                        sentryEvent2 = null;
                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Collected %d native events from outbox.", Integer.valueOf(arrayList.size()));
                        it = arrayList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                break;
                            }
                            NativeEventCollector.NativeEnvelopeMetadata nativeEnvelopeMetadata3 = (NativeEventCollector.NativeEnvelopeMetadata) it.next();
                            long abs = Math.abs(j - nativeEnvelopeMetadata3.b);
                            if (abs <= 5000) {
                                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Matched native event by timestamp (diff: %d ms)", Long.valueOf(abs));
                                arrayList.remove(nativeEnvelopeMetadata3);
                                File file2 = nativeEnvelopeMetadata3.a;
                                try {
                                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file2));
                                    try {
                                        SentryEnvelope a = sentryAndroidOptions.getEnvelopeReader().a(bufferedInputStream2);
                                        if (a != null) {
                                            for (SentryEnvelopeItem sentryEnvelopeItem : a.b) {
                                                if (SentryItemType.Event.equals(sentryEnvelopeItem.a.n)) {
                                                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.f()), StandardCharsets.UTF_8));
                                                    try {
                                                        SentryEvent sentryEvent3 = (SentryEvent) sentryAndroidOptions.getSerializer().d(bufferedReader, SentryEvent.class);
                                                        if (sentryEvent3 != null && "native".equals(sentryEvent3.q)) {
                                                            NativeEventCollector.NativeEventData nativeEventData2 = new NativeEventCollector.NativeEventData(sentryEvent3, file2, a);
                                                            bufferedReader.close();
                                                            bufferedInputStream2.close();
                                                            nativeEventData = nativeEventData2;
                                                            break;
                                                        }
                                                        bufferedReader.close();
                                                    } finally {
                                                    }
                                                }
                                            }
                                        }
                                        bufferedInputStream2.close();
                                    } finally {
                                    }
                                } catch (Throwable th9) {
                                    sentryAndroidOptions.getLogger().a(SentryLevel.DEBUG, th9, "Error loading envelope file: %s", file2.getAbsolutePath());
                                    nativeEventData = sentryEvent2;
                                    SentryAndroidOptions sentryAndroidOptions2 = this.a;
                                    if (nativeEventData == 0) {
                                        sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "No matching native event found for tombstone.", new Object[0]);
                                        return sentryEvent2;
                                    }
                                    File file3 = nativeEventData.b;
                                    ILogger logger = sentryAndroidOptions2.getLogger();
                                    SentryLevel sentryLevel = SentryLevel.DEBUG;
                                    logger.c(sentryLevel, "Found matching native event for tombstone, removing from outbox: %s", file3.getName());
                                    try {
                                    } catch (Throwable th10) {
                                        sentryAndroidOptions.getLogger().a(SentryLevel.ERROR, th10, "Error deleting native event file: %s", file3.getAbsolutePath());
                                    }
                                    if (file3.delete()) {
                                        sentryAndroidOptions.getLogger().c(sentryLevel, "Deleted native event file from outbox: %s", file3.getName());
                                        SentryEvent sentryEvent4 = nativeEventData.a;
                                        ArrayList d = sentryEvent.d();
                                        DebugMeta debugMeta = sentryEvent.w;
                                        ArrayList e = sentryEvent.e();
                                        if (d != null && !d.isEmpty() && debugMeta != null && e != null) {
                                            Mechanism mechanism = ((SentryException) d.get(0)).o;
                                            if (mechanism != null) {
                                                mechanism.j = NativeExceptionMechanism.TOMBSTONE_MERGED.getValue();
                                            }
                                            Message message = sentryEvent4.z;
                                            if (message == null || (str2 = message.k) == null || str2.isEmpty()) {
                                                sentryEvent4.z = sentryEvent.z;
                                            }
                                            sentryEvent4.h(d);
                                            sentryEvent4.w = debugMeta;
                                            sentryEvent4.j(e);
                                        }
                                        for (SentryEnvelopeItem sentryEnvelopeItem2 : nativeEventData.c.b) {
                                            try {
                                                SentryEnvelopeItemHeader sentryEnvelopeItemHeader = sentryEnvelopeItem2.a;
                                                String str3 = sentryEnvelopeItemHeader.l;
                                                if (sentryEnvelopeItemHeader.n == SentryItemType.Attachment && str3 != null) {
                                                    byte[] f = sentryEnvelopeItem2.f();
                                                    SentryEnvelopeItemHeader sentryEnvelopeItemHeader2 = sentryEnvelopeItem2.a;
                                                    try {
                                                        hint.b.add(new Attachment(str3, sentryEnvelopeItemHeader2.j, sentryEnvelopeItemHeader2.q, f));
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "Failed to process envelope item: %s", th.getMessage());
                                                    }
                                                }
                                            } catch (Throwable th12) {
                                                th = th12;
                                            }
                                        }
                                        return sentryEvent4;
                                    }
                                    sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Failed to delete native event file: %s", file3.getAbsolutePath());
                                    return sentryEvent2;
                                }
                            }
                        }
                    }
                }
            }
            sentryEvent2 = null;
            it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                }
            }
        }
    }

    public TombstoneIntegration(Context context) {
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
        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "TombstoneIntegration enabled: %s", Boolean.valueOf(this.l.isTombstoneEnabled()));
        if (this.l.isTombstoneEnabled()) {
            if (this.l.getCacheDirPath() == null) {
                this.l.getLogger().c(SentryLevel.INFO, "Cache dir is not set, unable to process Tombstones", new Object[0]);
                return;
            }
            try {
                ISentryExecutorService executorService = sentryOptions.getExecutorService();
                Context context = this.j;
                SentryAndroidOptions sentryAndroidOptions2 = this.l;
                executorService.submit(new ApplicationExitInfoHistoryDispatcher(context, sentryAndroidOptions2, this.k, new TombstonePolicy(context, sentryAndroidOptions2)));
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.DEBUG, "Failed to start tombstone processor.", th);
            }
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "TombstoneIntegration installed.", new Object[0]);
            IntegrationUtils.a("Tombstone");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "TombstoneIntegration removed.", new Object[0]);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TombstoneHint extends BlockingFlushHint implements Backfillable, NativeCrashExit {
        public final long d;
        public final boolean e;

        public TombstoneHint(long j, ILogger iLogger, long j2, boolean z) {
            super(j, iLogger);
            this.d = j2;
            this.e = z;
        }

        @Override // io.sentry.hints.Backfillable
        public final boolean a() {
            return this.e;
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public final boolean d(SentryId sentryId) {
            return true;
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public final void g(SentryId sentryId) {
        }
    }
}
