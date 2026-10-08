package okhttp3.internal.http2;

import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Http2Stream {
    public final int a;
    public final Http2Connection b;
    public long c;
    public long d;
    public long e;
    public long f;
    public final ArrayDeque g;
    public boolean h;
    public final FramingSource i;
    public final FramingSink j;
    public final StreamTimeout k;
    public final StreamTimeout l;
    public ErrorCode m;
    public IOException n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class FramingSink implements Sink {
        public final boolean j;
        public final Buffer k = new Object();
        public boolean l;

        /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
        public FramingSink(boolean z) {
            this.j = z;
        }

        /* JADX WARN: Finally extract failed */
        public final void a(boolean z) {
            long min;
            boolean z2;
            boolean z3;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                http2Stream.l.h();
                while (http2Stream.e >= http2Stream.f && !this.j && !this.l) {
                    try {
                        synchronized (http2Stream) {
                            ErrorCode errorCode = http2Stream.m;
                            if (errorCode != null) {
                                break;
                            }
                            try {
                                http2Stream.wait();
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        }
                    } catch (Throwable th) {
                        http2Stream.l.k();
                        throw th;
                    }
                }
                http2Stream.l.k();
                http2Stream.b();
                min = Math.min(http2Stream.f - http2Stream.e, this.k.k);
                http2Stream.e += min;
                if (z && min == this.k.k) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                z3 = z2;
            }
            Http2Stream.this.l.h();
            try {
                Http2Stream http2Stream2 = Http2Stream.this;
                http2Stream2.b.A(http2Stream2.a, z3, this.k, min);
            } finally {
                Http2Stream.this.l.k();
            }
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            Http2Stream http2Stream = Http2Stream.this;
            byte[] bArr = Util.a;
            synchronized (http2Stream) {
                if (this.l) {
                    return;
                }
                synchronized (http2Stream) {
                    ErrorCode errorCode = http2Stream.m;
                    if (errorCode == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                Http2Stream http2Stream2 = Http2Stream.this;
                if (!http2Stream2.j.j) {
                    if (this.k.k > 0) {
                        while (this.k.k > 0) {
                            a(true);
                        }
                    } else if (z) {
                        http2Stream2.b.A(http2Stream2.a, true, null, 0L);
                    }
                }
                synchronized (Http2Stream.this) {
                    this.l = true;
                }
                Http2Stream.this.b.flush();
                Http2Stream.this.a();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            Http2Stream http2Stream = Http2Stream.this;
            byte[] bArr = Util.a;
            synchronized (http2Stream) {
                http2Stream.b();
            }
            while (this.k.k > 0) {
                a(false);
                Http2Stream.this.b.flush();
            }
        }

        @Override // okio.Sink
        public final Timeout i() {
            return Http2Stream.this.l;
        }

        @Override // okio.Sink
        public final void l0(long j, Buffer buffer) {
            byte[] bArr = Util.a;
            Buffer buffer2 = this.k;
            buffer2.l0(j, buffer);
            while (buffer2.k >= 16384) {
                a(false);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class FramingSource implements Source {
        public final long j;
        public boolean k;
        public final Buffer l = new Object();
        public final Buffer m = new Object();
        public boolean n;

        /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v2, types: [okio.Buffer, java.lang.Object] */
        public FramingSource(long j, boolean z) {
            this.j = j;
            this.k = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x009c A[LOOP:0: B:3:0x000d->B:40:0x009c, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a0 A[SYNTHETIC] */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final long J0(long j, Buffer buffer) {
            ErrorCode errorCode;
            Throwable th;
            boolean z;
            long j2;
            long j3;
            buffer.getClass();
            long j4 = 0;
            if (j < 0) {
                fe.l(q.h(j, "byteCount < 0: "));
                return 0L;
            }
            while (true) {
                Http2Stream http2Stream = Http2Stream.this;
                synchronized (http2Stream) {
                    http2Stream.k.h();
                    try {
                        synchronized (http2Stream) {
                            errorCode = http2Stream.m;
                        }
                        if (!z) {
                            j4 = j2;
                        } else {
                            if (j3 != -1) {
                                return j3;
                            }
                            if (th == null) {
                                return -1L;
                            }
                            throw th;
                        }
                    } finally {
                        http2Stream.k.k();
                    }
                }
                if (errorCode != null && !this.k) {
                    th = http2Stream.n;
                    if (th == null) {
                        synchronized (http2Stream) {
                            ErrorCode errorCode2 = http2Stream.m;
                            errorCode2.getClass();
                            th = new StreamResetException(errorCode2);
                        }
                    }
                } else {
                    th = null;
                }
                if (!this.n) {
                    Buffer buffer2 = this.m;
                    long j5 = buffer2.k;
                    z = false;
                    if (j5 > j4) {
                        j3 = buffer2.J0(Math.min(j, j5), buffer);
                        long j6 = http2Stream.c + j3;
                        http2Stream.c = j6;
                        j2 = j4;
                        long j7 = j6 - http2Stream.d;
                        if (th == null && j7 >= http2Stream.b.y.a() / 2) {
                            http2Stream.b.O(http2Stream.a, j7);
                            http2Stream.d = http2Stream.c;
                        }
                    } else {
                        j2 = j4;
                        if (!this.k && th == null) {
                            try {
                                http2Stream.wait();
                                z = true;
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        }
                        j3 = -1;
                    }
                    if (!z) {
                    }
                } else {
                    throw new IOException("stream closed");
                }
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.n = true;
                Buffer buffer = this.m;
                j = buffer.k;
                buffer.skip(j);
                http2Stream.notifyAll();
            }
            if (j > 0) {
                Http2Stream http2Stream2 = Http2Stream.this;
                byte[] bArr = Util.a;
                http2Stream2.b.w(j);
            }
            Http2Stream.this.a();
        }

        @Override // okio.Source
        public final Timeout i() {
            return Http2Stream.this.k;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StreamTimeout extends AsyncTimeout {
        public StreamTimeout() {
        }

        @Override // okio.AsyncTimeout
        public final void j() {
            Http2Stream.this.e(ErrorCode.CANCEL);
            final Http2Connection http2Connection = Http2Stream.this.b;
            synchronized (http2Connection) {
                long j = http2Connection.w;
                long j2 = http2Connection.v;
                if (j < j2) {
                    return;
                }
                http2Connection.v = j2 + 1;
                http2Connection.x = System.nanoTime() + 1000000000;
                TaskQueue taskQueue = http2Connection.q;
                final String l = q.l(new StringBuilder(), http2Connection.l, " ping");
                taskQueue.c(new Task(l) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$default$1
                    @Override // okhttp3.internal.concurrent.Task
                    public final long a() {
                        Http2Connection http2Connection2 = http2Connection;
                        http2Connection2.getClass();
                        try {
                            http2Connection2.F.w(2, 0, false);
                            return -1L;
                        } catch (IOException e) {
                            http2Connection2.h(e);
                            return -1L;
                        }
                    }
                }, 0L);
            }
        }

        public final void k() {
            if (!i()) {
            } else {
                throw new SocketTimeoutException("timeout");
            }
        }
    }

    public Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, Headers headers) {
        http2Connection.getClass();
        this.a = i;
        this.b = http2Connection;
        this.f = http2Connection.z.a();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.g = arrayDeque;
        this.i = new FramingSource(http2Connection.y.a(), z2);
        this.j = new FramingSink(z);
        this.k = new StreamTimeout();
        this.l = new StreamTimeout();
        if (headers != null) {
            if (!g()) {
                arrayDeque.add(headers);
                return;
            } else {
                u2.l("locally-initiated streams shouldn't have headers yet");
                throw null;
            }
        }
        if (g()) {
            return;
        }
        u2.l("remotely-initiated streams should have headers");
        throw null;
    }

    public final void a() {
        boolean z;
        boolean h;
        byte[] bArr = Util.a;
        synchronized (this) {
            try {
                FramingSource framingSource = this.i;
                if (!framingSource.k && framingSource.n) {
                    FramingSink framingSink = this.j;
                    if (!framingSink.j) {
                        if (framingSink.l) {
                        }
                    }
                    z = true;
                    h = h();
                }
                z = false;
                h = h();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            c(ErrorCode.CANCEL, null);
        } else if (!h) {
            this.b.q(this.a);
        }
    }

    public final void b() {
        FramingSink framingSink = this.j;
        if (!framingSink.l) {
            if (!framingSink.j) {
                ErrorCode errorCode = this.m;
                if (errorCode != null) {
                    IOException iOException = this.n;
                    if (iOException != null) {
                        throw iOException;
                    }
                    throw new StreamResetException(errorCode);
                }
                return;
            }
            k8.j("stream finished");
            return;
        }
        k8.j("stream closed");
    }

    public final void c(ErrorCode errorCode, IOException iOException) {
        if (!d(errorCode, iOException)) {
            return;
        }
        Http2Connection http2Connection = this.b;
        http2Connection.getClass();
        http2Connection.F.A(this.a, errorCode);
    }

    public final boolean d(ErrorCode errorCode, IOException iOException) {
        byte[] bArr = Util.a;
        synchronized (this) {
            if (this.m != null) {
                return false;
            }
            this.m = errorCode;
            this.n = iOException;
            notifyAll();
            if (this.i.k) {
                if (this.j.j) {
                    return false;
                }
            }
            this.b.q(this.a);
            return true;
        }
    }

    public final void e(ErrorCode errorCode) {
        if (!d(errorCode, null)) {
            return;
        }
        this.b.E(this.a, errorCode);
    }

    public final FramingSink f() {
        synchronized (this) {
            if (!this.h && !g()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.j;
    }

    public final boolean g() {
        boolean z;
        if ((this.a & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        this.b.getClass();
        if (true == z) {
            return true;
        }
        return false;
    }

    public final synchronized boolean h() {
        try {
            if (this.m != null) {
                return false;
            }
            FramingSource framingSource = this.i;
            if (!framingSource.k) {
                if (framingSource.n) {
                }
                return true;
            }
            FramingSink framingSink = this.j;
            if (framingSink.j || framingSink.l) {
                if (this.h) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0006, B:8:0x000e, B:10:0x001f, B:11:0x0023, B:19:0x0016), top: B:3:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Headers headers, boolean z) {
        boolean h;
        headers.getClass();
        byte[] bArr = Util.a;
        synchronized (this) {
            try {
                if (this.h && z) {
                    this.i.getClass();
                    if (z) {
                        this.i.k = true;
                    }
                    h = h();
                    notifyAll();
                }
                this.h = true;
                this.g.add(headers);
                if (z) {
                }
                h = h();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!h) {
            this.b.q(this.a);
        }
    }
}
