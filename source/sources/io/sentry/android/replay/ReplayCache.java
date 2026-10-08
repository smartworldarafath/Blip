package io.sentry.android.replay;

import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.replay.ReplayCache;
import io.sentry.android.replay.video.SimpleVideoEncoder;
import io.sentry.protocol.SentryId;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.io.TextStreamsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayCache implements Closeable {
    public final SentryOptions j;
    public final SentryId k;
    public final AtomicBoolean l;
    public final AutoClosableReentrantLock m;
    public final AutoClosableReentrantLock n;
    public final AutoClosableReentrantLock o;
    public SimpleVideoEncoder p;
    public final Lazy q;
    public final ArrayList r;
    public final LinkedHashMap s;
    public final Lazy t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static File a(SentryOptions sentryOptions, SentryId sentryId) {
            sentryOptions.getClass();
            sentryId.getClass();
            String cacheDirPath = sentryOptions.getCacheDirPath();
            if (cacheDirPath != null && cacheDirPath.length() != 0) {
                String cacheDirPath2 = sentryOptions.getCacheDirPath();
                cacheDirPath2.getClass();
                File file = new File(cacheDirPath2, "replay_" + sentryId);
                file.mkdirs();
                return file;
            }
            sentryOptions.getLogger().c(SentryLevel.WARNING, "SentryOptions.cacheDirPath is not set, session replay is no-op", new Object[0]);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public ReplayCache(SentryOptions sentryOptions, SentryId sentryId) {
        sentryOptions.getClass();
        sentryId.getClass();
        this.j = sentryOptions;
        this.k = sentryId;
        this.l = new AtomicBoolean(false);
        this.m = new ReentrantLock();
        this.n = new ReentrantLock();
        this.o = new ReentrantLock();
        this.q = LazyKt.b(new Function0<File>() { // from class: io.sentry.android.replay.ReplayCache$replayCacheDir$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ReplayCache replayCache = ReplayCache.this;
                return ReplayCache.Companion.a(replayCache.j, replayCache.k);
            }
        });
        this.r = new ArrayList();
        this.s = new LinkedHashMap();
        this.t = LazyKt.b(new Function0<File>() { // from class: io.sentry.android.replay.ReplayCache$ongoingSegmentFile$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ReplayCache replayCache = ReplayCache.this;
                if (replayCache.n() == null) {
                    return null;
                }
                File file = new File(replayCache.n(), ".ongoing_segment");
                if (!file.exists()) {
                    file.createNewFile();
                }
                return file;
            }
        });
    }

    public final void a(File file, long j, String str) {
        ReplayFrame replayFrame = new ReplayFrame(file, j, str);
        ISentryLifecycleToken a = this.o.a();
        try {
            this.r.add(replayFrame);
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ISentryLifecycleToken a = this.m.a();
        try {
            SimpleVideoEncoder simpleVideoEncoder = this.p;
            if (simpleVideoEncoder != null) {
                simpleVideoEncoder.c();
            }
            this.p = null;
            AutoCloseableKt.a(a, null);
            this.l.set(true);
        } finally {
        }
    }

    public final void h(File file) {
        SentryOptions sentryOptions = this.j;
        try {
            if (!file.delete()) {
                sentryOptions.getLogger().c(SentryLevel.ERROR, "Failed to delete replay frame: %s", file.getAbsolutePath());
            }
        } catch (Throwable th) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Failed to delete replay frame: %s", file.getAbsolutePath());
        }
    }

    public final File n() {
        return (File) this.q.getValue();
    }

    public final void q(String str, String str2) {
        File file;
        File file2;
        Lazy lazy = this.t;
        LinkedHashMap linkedHashMap = this.s;
        ISentryLifecycleToken a = this.n.a();
        try {
            if (this.l.get()) {
                AutoCloseableKt.a(a, null);
                return;
            }
            File file3 = (File) lazy.getValue();
            if ((file3 == null || !file3.exists()) && (file = (File) lazy.getValue()) != null) {
                file.createNewFile();
            }
            if (linkedHashMap.isEmpty() && (file2 = (File) lazy.getValue()) != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2), Charsets.a), 8192);
                try {
                    Iterator it = TextStreamsKt.a(bufferedReader).iterator();
                    while (it.hasNext()) {
                        List G = StringsKt.G((String) it.next(), new String[]{"="}, 2);
                        linkedHashMap.put((String) G.get(0), (String) G.get(1));
                    }
                    bufferedReader.close();
                } finally {
                }
            }
            if (str2 == null) {
                linkedHashMap.remove(str);
            } else {
                linkedHashMap.put(str, str2);
            }
            File file4 = (File) lazy.getValue();
            if (file4 != null) {
                Set entrySet = linkedHashMap.entrySet();
                entrySet.getClass();
                FilesKt.b(file4, CollectionsKt.y(entrySet, "\n", null, null, ReplayCache$persistSegmentValues$1$2.k, 30));
            }
            AutoCloseableKt.a(a, null);
        } finally {
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final String v(final long j) {
        final ?? obj = new Object();
        ISentryLifecycleToken a = this.o.a();
        try {
            CollectionsKt.J(this.r, new Function1<ReplayFrame, Boolean>() { // from class: io.sentry.android.replay.ReplayCache$rotate$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj2) {
                    ReplayFrame replayFrame = (ReplayFrame) obj2;
                    replayFrame.getClass();
                    if (replayFrame.b < j) {
                        this.h(replayFrame.a);
                        return Boolean.TRUE;
                    }
                    Ref$ObjectRef ref$ObjectRef = obj;
                    if (ref$ObjectRef.j == null) {
                        ref$ObjectRef.j = replayFrame.c;
                    }
                    return Boolean.FALSE;
                }
            });
            AutoCloseableKt.a(a, null);
            return (String) obj.j;
        } finally {
        }
    }
}
