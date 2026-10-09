package io.sentry.cache;

import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ISerializer;
import io.sentry.SentryCrashLastRunState;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SentryUUID;
import io.sentry.Session;
import io.sentry.UncaughtExceptionHandlerIntegration;
import io.sentry.android.core.TombstoneIntegration;
import io.sentry.clientreport.DiscardReason;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.NativeCrashExit;
import io.sentry.hints.SessionEnd;
import io.sentry.hints.SessionStart;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.HintUtils;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class EnvelopeCache extends CacheStrategy implements IEnvelopeCache {
    public static final /* synthetic */ int s = 0;
    public final CountDownLatch o;
    public final WeakHashMap p;
    public final AutoClosableReentrantLock q;
    public final AutoClosableReentrantLock r;

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public EnvelopeCache(SentryOptions sentryOptions, String str, int i) {
        super(sentryOptions, str, i);
        this.p = new WeakHashMap();
        this.q = new ReentrantLock();
        this.r = new ReentrantLock();
        this.o = new CountDownLatch(1);
    }

    @Override // io.sentry.cache.IEnvelopeCache
    public final void a(SentryEnvelope sentryEnvelope) {
        Objects.b(sentryEnvelope, "Envelope is required.");
        File e = e(sentryEnvelope);
        boolean delete = e.delete();
        SentryOptions sentryOptions = this.j;
        if (delete) {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Discarding envelope from cache: %s", e.getAbsolutePath());
        } else {
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Envelope was not cached or could not be deleted: %s", e.getAbsolutePath());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.FilenameFilter, java.lang.Object] */
    public final File[] d() {
        File file = this.l;
        if (file.isDirectory() && file.canWrite() && file.canRead()) {
            File[] listFiles = file.listFiles((FilenameFilter) new Object());
            if (listFiles != null) {
                return listFiles;
            }
        } else {
            this.j.getLogger().c(SentryLevel.ERROR, "The directory for caching files is inaccessible.: %s", file.getAbsolutePath());
        }
        return new File[0];
    }

    public final File e(SentryEnvelope sentryEnvelope) {
        String str;
        WeakHashMap weakHashMap = this.p;
        ISentryLifecycleToken a = this.q.a();
        try {
            if (weakHashMap.containsKey(sentryEnvelope)) {
                str = (String) weakHashMap.get(sentryEnvelope);
            } else {
                String concat = SentryUUID.a().concat(".envelope");
                weakHashMap.put(sentryEnvelope, concat);
                str = concat;
            }
            File file = new File(this.l.getAbsolutePath(), str);
            a.close();
            return file;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void f(File file, File file2) {
        ISentryLifecycleToken a = this.r.a();
        try {
            if (!file.exists()) {
                a.close();
                return;
            }
            boolean exists = file2.exists();
            SentryOptions sentryOptions = this.j;
            if (exists) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Previous session file already exists, deleting it.", new Object[0]);
                if (!file2.delete()) {
                    sentryOptions.getLogger().c(SentryLevel.WARNING, "Unable to delete previous session file: %s", file2);
                }
            }
            sentryOptions.getLogger().c(SentryLevel.INFO, "Moving current session to previous session.", new Object[0]);
            try {
                if (!file.renameTo(file2)) {
                    sentryOptions.getLogger().c(SentryLevel.WARNING, "Unable to move current session to previous session.", new Object[0]);
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Error moving current session to previous session.", th);
            }
            a.close();
        } catch (Throwable th2) {
            try {
                a.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final boolean g() {
        SentryOptions sentryOptions = this.j;
        try {
            return this.o.await(sentryOptions.getSessionFlushTimeoutMillis(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Timed out waiting for previous session to flush.", new Object[0]);
            return false;
        }
    }

    public final void i(File file, Session session) {
        String str = session.n;
        SentryOptions sentryOptions = this.j;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, CacheStrategy.n));
                try {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "Overwriting session to offline storage: %s", str);
                    ((ISerializer) this.k.a()).a(session, bufferedWriter);
                    bufferedWriter.close();
                    fileOutputStream.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th3, "Error writing Session to offline storage: %s", str);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<SentryEnvelope> iterator() {
        SentryOptions sentryOptions = this.j;
        File[] d = d();
        ArrayList arrayList = new ArrayList(d.length);
        for (File file : d) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    arrayList.add(((ISerializer) this.k.a()).e(bufferedInputStream));
                    bufferedInputStream.close();
                } catch (Throwable th) {
                    try {
                        bufferedInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                    break;
                }
            } catch (FileNotFoundException unused) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Envelope file '%s' disappeared while converting all cached files to envelopes.", file.getAbsolutePath());
            } catch (IOException e) {
                sentryOptions.getLogger().b(SentryLevel.ERROR, "Error while reading cached envelope from file " + file.getAbsolutePath(), e);
            }
        }
        return arrayList.iterator();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x048d  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x022d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v12, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v25, types: [io.sentry.Session$State, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27, types: [int] */
    /* JADX WARN: Type inference failed for: r15v29, types: [io.sentry.SentryItemType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v30 */
    /* JADX WARN: Type inference failed for: r15v31 */
    /* JADX WARN: Type inference failed for: r15v32 */
    /* JADX WARN: Type inference failed for: r15v33 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v36 */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v41 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r9v10, types: [io.sentry.Session$State, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v25, types: [io.sentry.SentryItemType, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean q(SentryEnvelope sentryEnvelope, Hint hint) {
        boolean z;
        ?? r15;
        Throwable th;
        boolean z2;
        Date date;
        boolean z3;
        boolean z4;
        File e;
        boolean z5;
        FileOutputStream fileOutputStream;
        File[] fileArr;
        LazyEvaluator lazyEvaluator;
        SentryOptions sentryOptions;
        Session session;
        boolean z6;
        Boolean bool;
        String str;
        int i;
        Iterable iterable;
        SentryEnvelopeItem sentryEnvelopeItem;
        FileOutputStream fileOutputStream2;
        boolean equals;
        Session c;
        boolean z7;
        boolean equals2;
        Objects.b(sentryEnvelope, "Envelope is required.");
        File[] d = d();
        int length = d.length;
        LazyEvaluator lazyEvaluator2 = this.k;
        boolean z8 = false;
        SentryOptions sentryOptions2 = this.j;
        int i2 = this.m;
        if (length >= i2) {
            sentryOptions2.getLogger().c(SentryLevel.WARNING, "Cache folder if full (respecting maxSize). Rotating files", new Object[0]);
            int i3 = (length - i2) + 1;
            if (d.length > 1) {
                Arrays.sort(d, new Object());
            }
            File[] fileArr2 = (File[]) Arrays.copyOfRange(d, i3, length);
            int i4 = 0;
            while (i4 < i3) {
                File file = d[i4];
                SentryEnvelope b = b(file);
                if (b != null) {
                    r15 = b.b;
                    if (r15.iterator().hasNext()) {
                        sentryOptions2.getClientReportRecorder().b(DiscardReason.CACHE_OVERFLOW, b);
                        Iterator it = r15.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                SentryEnvelopeItem sentryEnvelopeItem2 = (SentryEnvelopeItem) it.next();
                                if (sentryEnvelopeItem2 == null) {
                                    equals2 = z8;
                                } else {
                                    ?? r9 = sentryEnvelopeItem2.a.n;
                                    r15 = SentryItemType.Session;
                                    equals2 = r9.equals(r15);
                                }
                                if (equals2) {
                                    session = c(sentryEnvelopeItem2);
                                    r15 = r15;
                                    break;
                                }
                            } else {
                                session = null;
                                r15 = r15;
                                break;
                            }
                        }
                        if (session != null) {
                            String str2 = session.n;
                            ?? r92 = session.p;
                            r15 = Session.State.Ok;
                            if (r92.equals(r15) && str2 != null) {
                                z6 = true;
                            } else {
                                z6 = z8;
                            }
                            if (z6 && (bool = session.o) != null && bool.booleanValue()) {
                                int length2 = fileArr2.length;
                                r15 = z8;
                                while (r15 < length2) {
                                    File file2 = fileArr2[r15];
                                    fileArr = d;
                                    SentryEnvelope b2 = b(file2);
                                    if (b2 != null) {
                                        lazyEvaluator = lazyEvaluator2;
                                        Iterable iterable2 = b2.b;
                                        if (!iterable2.iterator().hasNext()) {
                                            str = str2;
                                        } else {
                                            Iterator it2 = iterable2.iterator();
                                            while (true) {
                                                if (it2.hasNext()) {
                                                    Iterator it3 = it2;
                                                    SentryEnvelopeItem sentryEnvelopeItem3 = (SentryEnvelopeItem) it2.next();
                                                    if (sentryEnvelopeItem3 == null) {
                                                        iterable = iterable2;
                                                        sentryOptions = sentryOptions2;
                                                        equals = false;
                                                    } else {
                                                        iterable = iterable2;
                                                        sentryOptions = sentryOptions2;
                                                        equals = sentryEnvelopeItem3.a.n.equals(SentryItemType.Session);
                                                    }
                                                    if (!equals || (c = c(sentryEnvelopeItem3)) == null) {
                                                        iterable2 = iterable;
                                                        it2 = it3;
                                                        sentryOptions2 = sentryOptions;
                                                    } else {
                                                        String str3 = c.n;
                                                        i = length2;
                                                        if (c.p.equals(Session.State.Ok) && str3 != null) {
                                                            z7 = true;
                                                        } else {
                                                            z7 = false;
                                                        }
                                                        if (!z7) {
                                                            iterable2 = iterable;
                                                            it2 = it3;
                                                            sentryOptions2 = sentryOptions;
                                                            length2 = i;
                                                        } else {
                                                            Boolean bool2 = c.o;
                                                            if (bool2 != null && bool2.booleanValue()) {
                                                                sentryOptions.getLogger().c(SentryLevel.ERROR, "Session %s has 2 times the init flag.", str2);
                                                                r15 = r15;
                                                                break;
                                                            }
                                                            if (str2 != null && str2.equals(str3)) {
                                                                c.o = Boolean.TRUE;
                                                                try {
                                                                    sentryEnvelopeItem = SentryEnvelopeItem.d((ISerializer) lazyEvaluator.a(), c);
                                                                } catch (IOException e2) {
                                                                    e = e2;
                                                                    sentryEnvelopeItem = null;
                                                                }
                                                                try {
                                                                    it3.remove();
                                                                    str = str2;
                                                                    break;
                                                                } catch (IOException e3) {
                                                                    e = e3;
                                                                    str = str2;
                                                                    sentryOptions.getLogger().a(SentryLevel.ERROR, e, "Failed to create new envelope item for the session %s", str);
                                                                    sentryEnvelopeItem = sentryEnvelopeItem;
                                                                    if (sentryEnvelopeItem != null) {
                                                                        ArrayList arrayList = new ArrayList();
                                                                        Iterator it4 = iterable.iterator();
                                                                        while (it4.hasNext()) {
                                                                            arrayList.add((SentryEnvelopeItem) it4.next());
                                                                        }
                                                                        arrayList.add(sentryEnvelopeItem);
                                                                        SentryEnvelope sentryEnvelope2 = new SentryEnvelope(b2.a, arrayList);
                                                                        long lastModified = file2.lastModified();
                                                                        if (!file2.delete()) {
                                                                            sentryOptions.getLogger().c(SentryLevel.WARNING, "File can't be deleted: %s", file2.getAbsolutePath());
                                                                        }
                                                                        try {
                                                                            fileOutputStream2 = new FileOutputStream(file2);
                                                                        } catch (Throwable th2) {
                                                                            sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to serialize the new envelope to the disk.", th2);
                                                                            r15 = r15;
                                                                        }
                                                                        try {
                                                                            ((ISerializer) lazyEvaluator.a()).b(sentryEnvelope2, fileOutputStream2);
                                                                            file2.setLastModified(lastModified);
                                                                            fileOutputStream2.close();
                                                                            r15 = r15;
                                                                            if (file.delete()) {
                                                                            }
                                                                            i4++;
                                                                            d = fileArr;
                                                                            lazyEvaluator2 = lazyEvaluator;
                                                                            sentryOptions2 = sentryOptions;
                                                                            z8 = false;
                                                                        } finally {
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        d = fileArr;
                                                                        lazyEvaluator2 = lazyEvaluator;
                                                                        sentryOptions2 = sentryOptions;
                                                                        length2 = i;
                                                                        str2 = str;
                                                                        r15++;
                                                                    }
                                                                }
                                                            } else {
                                                                iterable2 = iterable;
                                                                it2 = it3;
                                                                sentryOptions2 = sentryOptions;
                                                                length2 = i;
                                                                str2 = str2;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    str = str2;
                                                    iterable = iterable2;
                                                    sentryOptions = sentryOptions2;
                                                    i = length2;
                                                    sentryEnvelopeItem = null;
                                                    break;
                                                }
                                            }
                                        }
                                    } else {
                                        str = str2;
                                        lazyEvaluator = lazyEvaluator2;
                                    }
                                    sentryOptions = sentryOptions2;
                                    i = length2;
                                    d = fileArr;
                                    lazyEvaluator2 = lazyEvaluator;
                                    sentryOptions2 = sentryOptions;
                                    length2 = i;
                                    str2 = str;
                                    r15++;
                                }
                            }
                        }
                    }
                }
                fileArr = d;
                lazyEvaluator = lazyEvaluator2;
                sentryOptions = sentryOptions2;
                r15 = r15;
                if (file.delete()) {
                    sentryOptions.getLogger().c(SentryLevel.WARNING, "File can't be deleted: %s", file.getAbsolutePath());
                }
                i4++;
                d = fileArr;
                lazyEvaluator2 = lazyEvaluator;
                sentryOptions2 = sentryOptions;
                z8 = false;
            }
        }
        LazyEvaluator lazyEvaluator3 = lazyEvaluator2;
        SentryOptions sentryOptions3 = sentryOptions2;
        File file3 = this.l;
        File file4 = new File(file3.getAbsolutePath(), "session.json");
        File file5 = new File(file3.getAbsolutePath(), "previous_session.json");
        if (HintUtils.b(hint, SessionEnd.class) && !file4.delete()) {
            sentryOptions3.getLogger().c(SentryLevel.WARNING, "Current envelope doesn't exist.", new Object[0]);
        }
        boolean isInstance = AbnormalExit.class.isInstance(hint.b("sentry:typeCheckHint"));
        Charset charset = CacheStrategy.n;
        if (isInstance || NativeCrashExit.class.isInstance(hint.b("sentry:typeCheckHint"))) {
            Object b3 = hint.b("sentry:typeCheckHint");
            File file6 = new File(file3.getAbsolutePath(), "previous_session.json");
            if (file6.exists()) {
                ILogger logger = sentryOptions3.getLogger();
                SentryLevel sentryLevel = SentryLevel.WARNING;
                logger.c(sentryLevel, "Previous session is not ended, we'd need to end it.", new Object[0]);
                try {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file6), charset));
                        try {
                            Session session2 = (Session) ((ISerializer) lazyEvaluator3.a()).d(bufferedReader, Session.class);
                            if (session2 != null) {
                                try {
                                    if (b3 instanceof AbnormalExit) {
                                        try {
                                            AbnormalExit abnormalExit = (AbnormalExit) b3;
                                            Long b4 = abnormalExit.b();
                                            if (b4 != null) {
                                                date = DateUtils.c(b4.longValue());
                                                Date c2 = session2.c();
                                                if (c2 != null) {
                                                    if (date.before(c2)) {
                                                    }
                                                }
                                                sentryOptions3.getLogger().c(sentryLevel, "Abnormal exit happened before previous session start, not ending the session.", new Object[0]);
                                                bufferedReader.close();
                                            } else {
                                                date = null;
                                            }
                                            session2.d(Session.State.Abnormal, null, true, abnormalExit.f());
                                            z3 = true;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            r15 = 1;
                                            try {
                                                bufferedReader.close();
                                                throw th;
                                            } catch (Throwable th4) {
                                                th.addSuppressed(th4);
                                                throw th;
                                            }
                                        }
                                    } else if (b3 instanceof NativeCrashExit) {
                                        Date c3 = DateUtils.c(((TombstoneIntegration.TombstoneHint) ((NativeCrashExit) b3)).d);
                                        Date c4 = session2.c();
                                        if (c4 == null || c3.before(c4)) {
                                            z2 = true;
                                            sentryOptions3.getLogger().c(sentryLevel, "Native crash exit happened before previous session start, not ending the session.", new Object[0]);
                                        } else {
                                            z3 = true;
                                            session2.d(Session.State.Crashed, null, true, null);
                                            date = c3;
                                        }
                                    } else {
                                        z3 = true;
                                        date = null;
                                    }
                                    session2.b(date);
                                    i(file6, session2);
                                    z2 = z3;
                                } catch (Throwable th5) {
                                    th = th5;
                                    th = th;
                                    r15 = r15;
                                    bufferedReader.close();
                                    throw th;
                                }
                            } else {
                                z2 = true;
                            }
                            bufferedReader.close();
                            z = z2;
                        } catch (Throwable th6) {
                            th = th6;
                            r15 = 1;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        r15 = 1;
                        sentryOptions3.getLogger().b(SentryLevel.ERROR, "Error processing previous session.", th);
                        z = r15;
                        if (!SessionStart.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                        }
                        e = e(sentryEnvelope);
                        if (!e.exists()) {
                        }
                    }
                } catch (Throwable th8) {
                    th = th8;
                    sentryOptions3.getLogger().b(SentryLevel.ERROR, "Error processing previous session.", th);
                    z = r15;
                    if (!SessionStart.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                    }
                    e = e(sentryEnvelope);
                    if (!e.exists()) {
                    }
                }
            } else {
                z = true;
                sentryOptions3.getLogger().c(SentryLevel.DEBUG, "No previous session file to end.", new Object[0]);
            }
            if (!SessionStart.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                f(file4, file5);
                Iterable iterable3 = sentryEnvelope.b;
                if (iterable3.iterator().hasNext()) {
                    SentryEnvelopeItem sentryEnvelopeItem4 = (SentryEnvelopeItem) iterable3.iterator().next();
                    SentryItemType sentryItemType = SentryItemType.Session;
                    SentryItemType sentryItemType2 = sentryEnvelopeItem4.a.n;
                    if (sentryItemType.equals(sentryItemType2)) {
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem4.f()), charset));
                            try {
                                Session session3 = (Session) ((ISerializer) lazyEvaluator3.a()).d(bufferedReader2, Session.class);
                                if (session3 == null) {
                                    sentryOptions3.getLogger().c(SentryLevel.ERROR, "Item of type %s returned null by the parser.", sentryItemType2);
                                } else {
                                    i(file4, session3);
                                }
                                bufferedReader2.close();
                            } finally {
                            }
                        } catch (Throwable th9) {
                            sentryOptions3.getLogger().b(SentryLevel.ERROR, "Item failed to process.", th9);
                        }
                    } else {
                        sentryOptions3.getLogger().c(SentryLevel.INFO, "Current envelope has a different envelope type %s", sentryItemType2);
                    }
                } else {
                    sentryOptions3.getLogger().c(SentryLevel.INFO, "Current envelope %s is empty", file4.getAbsolutePath());
                }
                if (!new File(sentryOptions3.getCacheDirPath(), ".sentry-native/last_crash").exists()) {
                    File file7 = new File(sentryOptions3.getCacheDirPath(), "last_crash");
                    if (file7.exists()) {
                        z4 = false;
                        sentryOptions3.getLogger().c(SentryLevel.INFO, "Crash marker file exists, crashedLastRun will return true.", new Object[0]);
                        if (!file7.delete()) {
                            sentryOptions3.getLogger().c(SentryLevel.ERROR, "Failed to delete the crash marker file. %s.", file7.getAbsolutePath());
                        }
                        SentryCrashLastRunState.c.a();
                        this.o.countDown();
                    }
                }
                z4 = false;
                SentryCrashLastRunState.c.a();
                this.o.countDown();
            } else {
                z4 = false;
            }
            e = e(sentryEnvelope);
            if (!e.exists()) {
                sentryOptions3.getLogger().c(SentryLevel.WARNING, "Not adding Envelope to offline storage because it already exists: %s", e.getAbsolutePath());
                return z;
            }
            ILogger logger2 = sentryOptions3.getLogger();
            SentryLevel sentryLevel2 = SentryLevel.DEBUG;
            logger2.c(sentryLevel2, "Adding Envelope to offline storage: %s", e.getAbsolutePath());
            if (e.exists()) {
                sentryOptions3.getLogger().c(sentryLevel2, "Overwriting envelope to offline storage: %s", e.getAbsolutePath());
                if (!e.delete()) {
                    sentryOptions3.getLogger().c(SentryLevel.ERROR, "Failed to delete: %s", e.getAbsolutePath());
                }
            }
            try {
                fileOutputStream = new FileOutputStream(e);
            } catch (Throwable th10) {
                sentryOptions3.getLogger().a(SentryLevel.ERROR, th10, "Error writing Envelope %s to offline storage", e.getAbsolutePath());
                z5 = z4;
            }
            try {
                ((ISerializer) lazyEvaluator3.a()).b(sentryEnvelope, fileOutputStream);
                fileOutputStream.close();
                z5 = z;
                if (UncaughtExceptionHandlerIntegration.UncaughtExceptionHint.class.isInstance(hint.b("sentry:typeCheckHint"))) {
                    try {
                        FileOutputStream fileOutputStream3 = new FileOutputStream(new File(sentryOptions3.getCacheDirPath(), "last_crash"));
                        try {
                            fileOutputStream3.write(DateUtils.f(DateUtils.b()).getBytes(charset));
                            fileOutputStream3.flush();
                            fileOutputStream3.close();
                        } finally {
                        }
                    } catch (Throwable th11) {
                        sentryOptions3.getLogger().b(SentryLevel.ERROR, "Error writing the crash marker file to the disk", th11);
                    }
                }
                return z5;
            } finally {
                try {
                    fileOutputStream.close();
                    throw th;
                } catch (Throwable th12) {
                    th.addSuppressed(th12);
                }
            }
        }
        z = true;
        if (!SessionStart.class.isInstance(hint.b("sentry:typeCheckHint"))) {
        }
        e = e(sentryEnvelope);
        if (!e.exists()) {
        }
    }
}
