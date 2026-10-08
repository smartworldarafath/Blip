package coil3.disk;

import coil3.util.FileSystemsKt;
import defpackage.c;
import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.FileSystem;
import okio.ForwardingFileSystem;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiskLruCache implements AutoCloseable {
    public static final Regex A = new Regex("[a-z0-9_-]{1,120}");
    public final Path j;
    public final long k;
    public final Path l;
    public final Path m;
    public final Path n;
    public final LinkedHashMap o;
    public final ContextScope p;
    public final Object q;
    public long r;
    public int s;
    public RealBufferedSink t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public final DiskLruCache$fileSystem$1 z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Editor {
        public final Entry a;
        public boolean b;
        public final boolean[] c = new boolean[2];

        public Editor(Entry entry) {
            this.a = entry;
        }

        public final void a(boolean z) {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.q) {
                try {
                    if (!this.b) {
                        if (Intrinsics.a(this.a.g, this)) {
                            DiskLruCache.a(diskLruCache, this, z);
                        }
                        this.b = true;
                    } else {
                        throw new IllegalStateException("editor is closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final Path b(int i) {
            Path path;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.q) {
                if (!this.b) {
                    this.c[i] = true;
                    Object obj = this.a.d.get(i);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = diskLruCache.z;
                    Path path2 = (Path) obj;
                    if (!diskLruCache$fileSystem$1.A(path2)) {
                        try {
                            diskLruCache$fileSystem$1.S(path2, false).close();
                        } catch (RuntimeException e) {
                            throw e;
                        } catch (Exception unused) {
                        }
                    }
                    path = (Path) obj;
                } else {
                    throw new IllegalStateException("editor is closed");
                }
            }
            return path;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Entry {
        public final String a;
        public final long[] b = new long[2];
        public final ArrayList c = new ArrayList(2);
        public final ArrayList d = new ArrayList(2);
        public boolean e;
        public boolean f;
        public Editor g;
        public int h;

        public Entry(String str) {
            this.a = str;
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < 2; i++) {
                sb.append(i);
                this.c.add(DiskLruCache.this.j.e(sb.toString()));
                sb.append(".tmp");
                this.d.add(DiskLruCache.this.j.e(sb.toString()));
                sb.setLength(length);
            }
        }

        public final Snapshot a() {
            if (!this.e || this.g != null || this.f) {
                return null;
            }
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (i < size) {
                    if (!diskLruCache.z.A((Path) arrayList.get(i))) {
                        try {
                            diskLruCache.P(this);
                        } catch (IOException unused) {
                        }
                        return null;
                    }
                    i++;
                } else {
                    this.h++;
                    return new Snapshot(this);
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Snapshot implements AutoCloseable {
        public final Entry j;
        public boolean k;

        public Snapshot(Entry entry) {
            this.j = entry;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (!this.k) {
                this.k = true;
                DiskLruCache diskLruCache = DiskLruCache.this;
                synchronized (diskLruCache.q) {
                    Entry entry = this.j;
                    int i = entry.h - 1;
                    entry.h = i;
                    if (i == 0 && entry.f) {
                        diskLruCache.P(entry);
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v14, types: [okio.ForwardingFileSystem, coil3.disk.DiskLruCache$fileSystem$1] */
    public DiskLruCache(long j, CoroutineContext coroutineContext, FileSystem fileSystem, Path path) {
        this.j = path;
        this.k = j;
        if (j > 0) {
            this.l = path.e("journal");
            this.m = path.e("journal.tmp");
            this.n = path.e("journal.bkp");
            this.o = new LinkedHashMap(0, 0.75f, true);
            CoroutineContext A2 = coroutineContext.A(SupervisorKt.b());
            CoroutineContext.Element v = coroutineContext.v(ContinuationInterceptor.Key.j);
            CoroutineDispatcher coroutineDispatcher = v instanceof CoroutineDispatcher ? (CoroutineDispatcher) v : null;
            if (coroutineDispatcher == null) {
                DefaultScheduler defaultScheduler = Dispatchers.a;
                coroutineDispatcher = DefaultIoScheduler.l;
            }
            CoroutineDispatcher.Key key = CoroutineDispatcher.k;
            this.p = CoroutineScopeKt.a(A2.A(coroutineDispatcher.e1(1)));
            this.q = new Object();
            this.z = new ForwardingFileSystem(fileSystem);
            return;
        }
        u2.g("maxSize <= 0");
        throw null;
    }

    public static void S(String str) {
        if (A.d(str)) {
            return;
        }
        fe.l(q.i("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0116, code lost:
    
        if (r3 != false) goto L64;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010f A[Catch: all -> 0x0033, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0011, B:12:0x0018, B:14:0x001e, B:17:0x002e, B:27:0x003c, B:30:0x0056, B:31:0x0072, B:33:0x0080, B:35:0x0087, B:38:0x005a, B:40:0x0068, B:42:0x006c, B:45:0x0071, B:48:0x00a7, B:50:0x00ae, B:53:0x00b3, B:55:0x00c4, B:58:0x00c9, B:59:0x0104, B:61:0x010f, B:67:0x0118, B:68:0x00e1, B:70:0x00f6, B:72:0x0101, B:75:0x0097, B:77:0x011d, B:78:0x0124), top: B:3:0x0003, inners: #1, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(DiskLruCache diskLruCache, Editor editor, boolean z) {
        long j;
        synchronized (diskLruCache.q) {
            Entry entry = editor.a;
            if (Intrinsics.a(entry.g, editor)) {
                boolean z2 = false;
                if (z && !entry.f) {
                    for (int i = 0; i < 2; i++) {
                        if (editor.c[i] && !diskLruCache.z.A((Path) entry.d.get(i))) {
                            editor.a(false);
                            return;
                        }
                    }
                    for (int i2 = 0; i2 < 2; i2++) {
                        Path path = (Path) entry.d.get(i2);
                        Path path2 = (Path) entry.c.get(i2);
                        boolean A2 = diskLruCache.z.A(path);
                        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = diskLruCache.z;
                        if (A2) {
                            diskLruCache$fileSystem$1.h(path, path2);
                        } else {
                            Path path3 = (Path) entry.c.get(i2);
                            if (!diskLruCache$fileSystem$1.A(path3)) {
                                try {
                                    diskLruCache$fileSystem$1.S(path3, false).close();
                                } catch (RuntimeException e) {
                                    throw e;
                                } catch (Exception unused) {
                                }
                            }
                        }
                        long j2 = entry.b[i2];
                        Long l = diskLruCache.z.O(path2).d;
                        if (l != null) {
                            j = l.longValue();
                        } else {
                            j = 0;
                        }
                        entry.b[i2] = j;
                        diskLruCache.r = (diskLruCache.r - j2) + j;
                    }
                } else {
                    for (int i3 = 0; i3 < 2; i3++) {
                        diskLruCache.z.w((Path) entry.d.get(i3));
                    }
                }
                entry.g = null;
                if (entry.f) {
                    diskLruCache.P(entry);
                    return;
                }
                diskLruCache.s++;
                RealBufferedSink realBufferedSink = diskLruCache.t;
                realBufferedSink.getClass();
                if (!z && !entry.e) {
                    diskLruCache.o.remove(entry.a);
                    realBufferedSink.f0("REMOVE");
                    realBufferedSink.writeByte(32);
                    realBufferedSink.f0(entry.a);
                    realBufferedSink.writeByte(10);
                    realBufferedSink.flush();
                    if (diskLruCache.r <= diskLruCache.k) {
                        if (diskLruCache.s >= 2000) {
                            z2 = true;
                        }
                    }
                    diskLruCache.v();
                    return;
                }
                entry.e = true;
                realBufferedSink.f0("CLEAN");
                realBufferedSink.writeByte(32);
                realBufferedSink.f0(entry.a);
                for (long j3 : entry.b) {
                    realBufferedSink.writeByte(32);
                    realBufferedSink.h(j3);
                }
                realBufferedSink.writeByte(10);
                realBufferedSink.flush();
                if (diskLruCache.r <= diskLruCache.k) {
                }
                diskLruCache.v();
                return;
            }
            throw new IllegalStateException("Check failed.");
        }
    }

    public final void A() {
        Iterator it = this.o.values().iterator();
        long j = 0;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            int i = 0;
            if (entry.g == null) {
                while (i < 2) {
                    j += entry.b[i];
                    i++;
                }
            } else {
                entry.g = null;
                while (i < 2) {
                    Path path = (Path) entry.c.get(i);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.z;
                    diskLruCache$fileSystem$1.w(path);
                    diskLruCache$fileSystem$1.w((Path) entry.d.get(i));
                    i++;
                }
                it.remove();
            }
        }
        this.r = j;
    }

    public final void E() {
        Source X = this.z.X(this.l);
        X.getClass();
        RealBufferedSource realBufferedSource = new RealBufferedSource(X);
        try {
            String U = realBufferedSource.U(Long.MAX_VALUE);
            String U2 = realBufferedSource.U(Long.MAX_VALUE);
            String U3 = realBufferedSource.U(Long.MAX_VALUE);
            String U4 = realBufferedSource.U(Long.MAX_VALUE);
            String U5 = realBufferedSource.U(Long.MAX_VALUE);
            if ("libcore.io.DiskLruCache".equals(U) && "1".equals(U2) && Intrinsics.a(String.valueOf(3), U3) && Intrinsics.a(String.valueOf(2), U4) && U5.length() <= 0) {
                int i = 0;
                while (true) {
                    try {
                        O(realBufferedSource.U(Long.MAX_VALUE));
                        i++;
                    } catch (EOFException unused) {
                        this.s = i - this.o.size();
                        if (!realBufferedSource.J()) {
                            X();
                        } else {
                            this.t = w();
                        }
                        try {
                            realBufferedSource.close();
                            th = null;
                        } catch (Throwable th) {
                            th = th;
                        }
                        if (th == null) {
                            return;
                        } else {
                            throw th;
                        }
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + U + ", " + U2 + ", " + U3 + ", " + U4 + ", " + U5 + "]");
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                realBufferedSource.close();
            } catch (Throwable th3) {
                ExceptionsKt.a(th, th3);
            }
        }
    }

    public final void O(String str) {
        String substring;
        int q = StringsKt.q(str, ' ', 0, 6);
        if (q != -1) {
            int i = q + 1;
            int q2 = StringsKt.q(str, ' ', i, 4);
            LinkedHashMap linkedHashMap = this.o;
            if (q2 == -1) {
                substring = str.substring(i);
                if (q == 6 && StringsKt.J(str, "REMOVE", false)) {
                    linkedHashMap.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, q2);
            }
            Object obj = linkedHashMap.get(substring);
            if (obj == null) {
                obj = new Entry(substring);
                linkedHashMap.put(substring, obj);
            }
            Entry entry = (Entry) obj;
            if (q2 != -1 && q == 5 && StringsKt.J(str, "CLEAN", false)) {
                List H = StringsKt.H(str.substring(q2 + 1), new char[]{' '});
                entry.e = true;
                entry.g = null;
                if (H.size() == 2) {
                    try {
                        int size = H.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            entry.b[i2] = Long.parseLong((String) H.get(i2));
                        }
                        return;
                    } catch (NumberFormatException unused) {
                        fe.v(H, "unexpected journal line: ");
                        return;
                    }
                }
                fe.v(H, "unexpected journal line: ");
                return;
            }
            if (q2 == -1 && q == 5 && StringsKt.J(str, "DIRTY", false)) {
                entry.g = new Editor(entry);
                return;
            } else {
                if (q2 == -1 && q == 4 && StringsKt.J(str, "READ", false)) {
                    return;
                }
                k8.j("unexpected journal line: ".concat(str));
                return;
            }
        }
        k8.j("unexpected journal line: ".concat(str));
    }

    public final void P(Entry entry) {
        RealBufferedSink realBufferedSink;
        int i = entry.h;
        String str = entry.a;
        if (i > 0 && (realBufferedSink = this.t) != null) {
            realBufferedSink.f0("DIRTY");
            realBufferedSink.writeByte(32);
            realBufferedSink.f0(str);
            realBufferedSink.writeByte(10);
            realBufferedSink.flush();
        }
        if (entry.h <= 0 && entry.g == null) {
            for (int i2 = 0; i2 < 2; i2++) {
                this.z.w((Path) entry.c.get(i2));
                long j = this.r;
                long[] jArr = entry.b;
                this.r = j - jArr[i2];
                jArr[i2] = 0;
            }
            this.s++;
            RealBufferedSink realBufferedSink2 = this.t;
            if (realBufferedSink2 != null) {
                realBufferedSink2.f0("REMOVE");
                realBufferedSink2.writeByte(32);
                realBufferedSink2.f0(str);
                realBufferedSink2.writeByte(10);
                realBufferedSink2.flush();
            }
            this.o.remove(str);
            if (this.s >= 2000) {
                v();
                return;
            }
            return;
        }
        entry.f = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        P(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R() {
        while (this.r > this.k) {
            for (Entry entry : this.o.values()) {
                if (!entry.f) {
                    break;
                }
            }
            return;
        }
        this.x = false;
    }

    public final void X() {
        synchronized (this.q) {
            try {
                RealBufferedSink realBufferedSink = this.t;
                if (realBufferedSink != null) {
                    realBufferedSink.close();
                }
                Sink S = this.z.S(this.m, false);
                S.getClass();
                RealBufferedSink realBufferedSink2 = new RealBufferedSink(S);
                try {
                    realBufferedSink2.f0("libcore.io.DiskLruCache");
                    realBufferedSink2.writeByte(10);
                    realBufferedSink2.f0("1");
                    realBufferedSink2.writeByte(10);
                    realBufferedSink2.h(3L);
                    realBufferedSink2.writeByte(10);
                    realBufferedSink2.h(2L);
                    realBufferedSink2.writeByte(10);
                    realBufferedSink2.writeByte(10);
                    for (Entry entry : this.o.values()) {
                        if (entry.g != null) {
                            realBufferedSink2.f0("DIRTY");
                            realBufferedSink2.writeByte(32);
                            realBufferedSink2.f0(entry.a);
                            realBufferedSink2.writeByte(10);
                        } else {
                            realBufferedSink2.f0("CLEAN");
                            realBufferedSink2.writeByte(32);
                            realBufferedSink2.f0(entry.a);
                            for (long j : entry.b) {
                                realBufferedSink2.writeByte(32);
                                realBufferedSink2.h(j);
                            }
                            realBufferedSink2.writeByte(10);
                        }
                    }
                    try {
                        realBufferedSink2.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        realBufferedSink2.close();
                    } catch (Throwable th3) {
                        ExceptionsKt.a(th, th3);
                    }
                }
                if (th == null) {
                    boolean A2 = this.z.A(this.l);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.z;
                    if (A2) {
                        diskLruCache$fileSystem$1.h(this.l, this.n);
                        this.z.h(this.m, this.l);
                        this.z.w(this.n);
                    } else {
                        diskLruCache$fileSystem$1.h(this.m, this.l);
                    }
                    this.t = w();
                    this.s = 0;
                    this.u = false;
                    this.y = false;
                } else {
                    throw th;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.q) {
            try {
                if (this.v && !this.w) {
                    for (Entry entry : (Entry[]) this.o.values().toArray(new Entry[0])) {
                        Editor editor = entry.g;
                        if (editor != null) {
                            Entry entry2 = editor.a;
                            if (Intrinsics.a(entry2.g, editor)) {
                                entry2.f = true;
                            }
                        }
                    }
                    R();
                    CoroutineScopeKt.b(this.p, null);
                    RealBufferedSink realBufferedSink = this.t;
                    realBufferedSink.getClass();
                    realBufferedSink.close();
                    this.t = null;
                    this.w = true;
                    return;
                }
                this.w = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Editor h(String str) {
        Editor editor;
        synchronized (this.q) {
            if (!this.w) {
                S(str);
                q();
                Entry entry = (Entry) this.o.get(str);
                if (entry != null) {
                    editor = entry.g;
                } else {
                    editor = null;
                }
                if (editor != null) {
                    return null;
                }
                if (entry != null && entry.h != 0) {
                    return null;
                }
                if (!this.x && !this.y) {
                    RealBufferedSink realBufferedSink = this.t;
                    realBufferedSink.getClass();
                    realBufferedSink.f0("DIRTY");
                    realBufferedSink.writeByte(32);
                    realBufferedSink.f0(str);
                    realBufferedSink.writeByte(10);
                    realBufferedSink.flush();
                    if (this.u) {
                        return null;
                    }
                    if (entry == null) {
                        entry = new Entry(str);
                        this.o.put(str, entry);
                    }
                    Editor editor2 = new Editor(entry);
                    entry.g = editor2;
                    return editor2;
                }
                v();
                return null;
            }
            throw new IllegalStateException("cache is closed");
        }
    }

    public final Snapshot n(String str) {
        Snapshot a;
        synchronized (this.q) {
            if (!this.w) {
                S(str);
                q();
                Entry entry = (Entry) this.o.get(str);
                if (entry != null && (a = entry.a()) != null) {
                    boolean z = true;
                    this.s++;
                    RealBufferedSink realBufferedSink = this.t;
                    realBufferedSink.getClass();
                    realBufferedSink.f0("READ");
                    realBufferedSink.writeByte(32);
                    realBufferedSink.f0(str);
                    realBufferedSink.writeByte(10);
                    realBufferedSink.flush();
                    if (this.s < 2000) {
                        z = false;
                    }
                    if (z) {
                        v();
                    }
                    return a;
                }
                return null;
            }
            throw new IllegalStateException("cache is closed");
        }
    }

    public final void q() {
        synchronized (this.q) {
            try {
                if (this.v) {
                    return;
                }
                this.z.w(this.m);
                if (this.z.A(this.n)) {
                    boolean A2 = this.z.A(this.l);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.z;
                    Path path = this.n;
                    if (A2) {
                        diskLruCache$fileSystem$1.w(path);
                    } else {
                        diskLruCache$fileSystem$1.h(path, this.l);
                    }
                }
                if (this.z.A(this.l)) {
                    try {
                        E();
                        A();
                        this.v = true;
                        return;
                    } catch (IOException unused) {
                        try {
                            close();
                            FileSystemsKt.a(this.z, this.j);
                            this.w = false;
                        } catch (Throwable th) {
                            this.w = false;
                            throw th;
                        }
                    }
                }
                X();
                this.v = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void v() {
        BuildersKt.c(this.p, null, null, new DiskLruCache$launchCleanup$1(this, null), 3);
    }

    public final RealBufferedSink w() {
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.z;
        diskLruCache$fileSystem$1.getClass();
        Path path = this.l;
        path.getClass();
        return new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$1.l.a(path), new c(15, this)));
    }
}
