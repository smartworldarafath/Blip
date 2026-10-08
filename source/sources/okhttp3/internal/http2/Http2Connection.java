package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okio.Buffer;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Http2Connection implements Closeable {
    public static final Settings I;
    public long A;
    public long B;
    public long C;
    public long D;
    public final Socket E;
    public final Http2Writer F;
    public final ReaderRunnable G;
    public final LinkedHashSet H;
    public final Listener j;
    public final LinkedHashMap k = new LinkedHashMap();
    public final String l;
    public int m;
    public int n;
    public boolean o;
    public final TaskRunner p;
    public final TaskQueue q;
    public final TaskQueue r;
    public final TaskQueue s;
    public final PushObserver t;
    public long u;
    public long v;
    public long w;
    public long x;
    public final Settings y;
    public Settings z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final TaskRunner a;
        public Socket b;
        public String c;
        public RealBufferedSource d;
        public RealBufferedSink e;
        public Listener f;

        public Builder(TaskRunner taskRunner) {
            taskRunner.getClass();
            this.a = taskRunner;
            this.f = Listener.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Listener {
        public static final Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 a = new Object();

        public void a(Http2Connection http2Connection, Settings settings) {
            settings.getClass();
        }

        public abstract void b(Http2Stream http2Stream);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ReaderRunnable implements Function0<Unit> {
        public final Http2Reader j;

        public ReaderRunnable(Http2Reader http2Reader) {
            this.j = http2Reader;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v12 */
        /* JADX WARN: Type inference failed for: r5v13 */
        /* JADX WARN: Type inference failed for: r5v8 */
        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            Throwable th;
            ErrorCode errorCode;
            Http2Connection http2Connection = Http2Connection.this;
            Http2Reader http2Reader = this.j;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException iOException = null;
            try {
                try {
                    try {
                        if (!http2Reader.a(true, this)) {
                            throw new IOException("Required SETTINGS preface not received");
                        }
                        do {
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                                this = errorCode2;
                                http2Connection.a(this, errorCode2, iOException);
                                Util.b(http2Reader);
                                throw th;
                            }
                        } while (http2Reader.a(false, this));
                        errorCode = ErrorCode.NO_ERROR;
                    } catch (Throwable th3) {
                        th = th3;
                        http2Connection.a(this, errorCode2, iOException);
                        Util.b(http2Reader);
                        throw th;
                    }
                } catch (IOException e) {
                    iOException = e;
                }
                try {
                    errorCode2 = ErrorCode.CANCEL;
                    http2Connection.a(errorCode, errorCode2, null);
                    this = errorCode;
                } catch (IOException e2) {
                    iOException = e2;
                    ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.a(errorCode3, errorCode3, iOException);
                    this = errorCode3;
                    Util.b(http2Reader);
                    return Unit.a;
                }
                Util.b(http2Reader);
                return Unit.a;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    static {
        Settings settings = new Settings();
        settings.b(7, 65535);
        settings.b(5, 16384);
        I = settings;
    }

    public Http2Connection(Builder builder) {
        this.j = builder.f;
        String str = builder.c;
        if (str != null) {
            this.l = str;
            this.n = 3;
            TaskRunner taskRunner = builder.a;
            this.p = taskRunner;
            this.q = taskRunner.e();
            this.r = taskRunner.e();
            this.s = taskRunner.e();
            this.t = PushObserver.a;
            Settings settings = new Settings();
            settings.b(7, 16777216);
            this.y = settings;
            this.z = I;
            this.D = r0.a();
            Socket socket = builder.b;
            if (socket != null) {
                this.E = socket;
                RealBufferedSink realBufferedSink = builder.e;
                if (realBufferedSink != null) {
                    this.F = new Http2Writer(realBufferedSink);
                    RealBufferedSource realBufferedSource = builder.d;
                    if (realBufferedSource != null) {
                        this.G = new ReaderRunnable(new Http2Reader(realBufferedSource));
                        this.H = new LinkedHashSet();
                        return;
                    } else {
                        Intrinsics.e("source");
                        throw null;
                    }
                }
                Intrinsics.e("sink");
                throw null;
            }
            Intrinsics.e("socket");
            throw null;
        }
        Intrinsics.e("connectionName");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.F.l);
        r6 = r2;
        r8.C += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(int i, boolean z, Buffer buffer, long j) {
        int min;
        long j2;
        boolean z2;
        if (j == 0) {
            this.F.h(z, i, buffer, 0);
            return;
        }
        loop0: while (j > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            long j3 = this.C;
                            long j4 = this.D;
                            if (j3 < j4) {
                                break;
                            } else if (!this.k.containsKey(Integer.valueOf(i))) {
                                break loop0;
                            } else {
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            j -= j2;
            Http2Writer http2Writer = this.F;
            if (z && j == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            http2Writer.h(z2, i, buffer, min);
        }
    }

    public final void E(final int i, final ErrorCode errorCode) {
        final String str = this.l + '[' + i + "] writeSynReset";
        this.q.c(new Task(str) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                Http2Connection http2Connection = this;
                try {
                    http2Connection.F.A(i, errorCode);
                    return -1L;
                } catch (IOException e) {
                    Settings settings = Http2Connection.I;
                    http2Connection.h(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void O(final int i, final long j) {
        final String str = this.l + '[' + i + "] windowUpdate";
        this.q.c(new Task(str) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                Http2Connection http2Connection = this;
                try {
                    http2Connection.F.E(i, j);
                    return -1L;
                } catch (IOException e) {
                    Settings settings = Http2Connection.I;
                    http2Connection.h(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void a(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i;
        Object[] objArr;
        byte[] bArr = Util.a;
        try {
            v(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (!this.k.isEmpty()) {
                objArr = this.k.values().toArray(new Http2Stream[0]);
                this.k.clear();
            } else {
                objArr = null;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.c(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.F.close();
        } catch (IOException unused3) {
        }
        try {
            this.E.close();
        } catch (IOException unused4) {
        }
        this.q.e();
        this.r.e();
        this.s.e();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void flush() {
        this.F.flush();
    }

    public final void h(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        a(errorCode, errorCode, iOException);
    }

    public final synchronized Http2Stream n(int i) {
        return (Http2Stream) this.k.get(Integer.valueOf(i));
    }

    public final synchronized Http2Stream q(int i) {
        Http2Stream http2Stream;
        http2Stream = (Http2Stream) this.k.remove(Integer.valueOf(i));
        notifyAll();
        return http2Stream;
    }

    public final void v(ErrorCode errorCode) {
        synchronized (this.F) {
            synchronized (this) {
                if (this.o) {
                    return;
                }
                this.o = true;
                this.F.q(this.m, errorCode, Util.a);
            }
        }
    }

    public final synchronized void w(long j) {
        long j2 = this.A + j;
        this.A = j2;
        long j3 = j2 - this.B;
        if (j3 >= this.y.a() / 2) {
            O(0, j3);
            this.B += j3;
        }
    }
}
