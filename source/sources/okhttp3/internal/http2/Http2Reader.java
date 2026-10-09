package okhttp3.internal.http2;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.Hpack;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Http2Reader implements Closeable {
    public static final Logger m;
    public final BufferedSource j;
    public final ContinuationSource k;
    public final Hpack.Reader l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static int a(int i, int i2, int i3) {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            k8.j(q.f(i3, i, "PROTOCOL_ERROR padding ", " > remaining length "));
            return 0;
        }
    }

    static {
        Logger logger = Logger.getLogger(Http2.class.getName());
        logger.getClass();
        m = logger;
    }

    public Http2Reader(RealBufferedSource realBufferedSource) {
        realBufferedSource.getClass();
        this.j = realBufferedSource;
        ContinuationSource continuationSource = new ContinuationSource(realBufferedSource);
        this.k = continuationSource;
        this.l = new Hpack.Reader(continuationSource);
    }

    /* JADX WARN: Code restructure failed: missing block: B:166:0x0220, code lost:
    
        defpackage.k8.j(defpackage.q.g(r11, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0229, code lost:
    
        return r16;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(boolean z, final Http2Connection.ReaderRunnable readerRunnable) {
        final ErrorCode errorCode;
        int i;
        ErrorCode errorCode2;
        Object[] array;
        String f;
        int i2 = 0;
        try {
            this.j.W0(9L);
            int p = Util.p(this.j);
            if (p <= 16384) {
                int readByte = this.j.readByte() & 255;
                byte readByte2 = this.j.readByte();
                int i3 = readByte2 & 255;
                int readInt = this.j.readInt();
                final int i4 = Integer.MAX_VALUE & readInt;
                Logger logger = m;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.a(true, i4, p, readByte, i3));
                }
                if (z && readByte != 4) {
                    StringBuilder sb = new StringBuilder("Expected a SETTINGS frame but was ");
                    String[] strArr = Http2.b;
                    if (readByte < strArr.length) {
                        f = strArr[readByte];
                    } else {
                        f = Util.f("0x%02x", Integer.valueOf(readByte));
                    }
                    sb.append(f);
                    throw new IOException(sb.toString());
                }
                switch (readByte) {
                    case 0:
                        h(readerRunnable, p, i3, i4);
                        return true;
                    case 1:
                        q(readerRunnable, p, i3, i4);
                        return true;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        if (p == 5) {
                            if (i4 != 0) {
                                BufferedSource bufferedSource = this.j;
                                bufferedSource.readInt();
                                bufferedSource.readByte();
                                return true;
                            }
                            k8.j("TYPE_PRIORITY streamId == 0");
                            return false;
                        }
                        k8.j(jb.d("TYPE_PRIORITY length: ", p, " != 5"));
                        return false;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        if (p == 4) {
                            if (i4 != 0) {
                                int readInt2 = this.j.readInt();
                                ErrorCode[] values = ErrorCode.values();
                                int length = values.length;
                                int i5 = 0;
                                while (true) {
                                    if (i5 < length) {
                                        ErrorCode errorCode3 = values[i5];
                                        if (errorCode3.j == readInt2) {
                                            errorCode = errorCode3;
                                        } else {
                                            i5++;
                                        }
                                    } else {
                                        errorCode = null;
                                    }
                                }
                                if (errorCode != null) {
                                    final Http2Connection http2Connection = Http2Connection.this;
                                    Settings settings = Http2Connection.I;
                                    if (i4 != 0 && (readInt & 1) == 0) {
                                        TaskQueue taskQueue = http2Connection.r;
                                        final String str = http2Connection.l + '[' + i4 + "] onReset";
                                        taskQueue.c(new Task(str, http2Connection, i4, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1
                                            public final /* synthetic */ Http2Connection e;
                                            public final /* synthetic */ int f;

                                            @Override // okhttp3.internal.concurrent.Task
                                            public final long a() {
                                                ((PushObserver$Companion$PushObserverCancel) this.e.t).getClass();
                                                synchronized (this.e) {
                                                    this.e.H.remove(Integer.valueOf(this.f));
                                                }
                                                return -1L;
                                            }
                                        }, 0L);
                                        return true;
                                    }
                                    Http2Stream q = http2Connection.q(i4);
                                    if (q != null) {
                                        synchronized (q) {
                                            if (q.m == null) {
                                                q.m = errorCode;
                                                q.notifyAll();
                                            }
                                        }
                                        return true;
                                    }
                                    return true;
                                }
                                k8.j(q.g(readInt2, "TYPE_RST_STREAM unexpected error code: "));
                                return false;
                            }
                            k8.j("TYPE_RST_STREAM streamId == 0");
                            return false;
                        }
                        k8.j(jb.d("TYPE_RST_STREAM length: ", p, " != 4"));
                        return false;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        BufferedSource bufferedSource2 = this.j;
                        if (i4 == 0) {
                            if ((readByte2 & 1) != 0) {
                                if (p != 0) {
                                    k8.j("FRAME_SIZE_ERROR ack frame should be empty!");
                                    return false;
                                }
                                return true;
                            }
                            if (p % 6 == 0) {
                                final Settings settings2 = new Settings();
                                IntProgression h = RangesKt.h(RangesKt.j(0, p), 6);
                                int i6 = h.j;
                                int i7 = h.k;
                                int i8 = h.l;
                                if ((i8 > 0 && i6 <= i7) || (i8 < 0 && i7 <= i6)) {
                                    while (true) {
                                        short readShort = bufferedSource2.readShort();
                                        byte[] bArr = Util.a;
                                        int i9 = readShort & 65535;
                                        int readInt3 = bufferedSource2.readInt();
                                        if (i9 != 2) {
                                            if (i9 != 3) {
                                                if (i9 != 4) {
                                                    if (i9 != 5) {
                                                        i = i2;
                                                    } else {
                                                        boolean z2 = i2;
                                                        if (readInt3 < 16384) {
                                                            break;
                                                        } else {
                                                            i = z2;
                                                            if (readInt3 > 16777215) {
                                                                break;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    boolean z3 = i2;
                                                    if (readInt3 >= 0) {
                                                        i9 = 7;
                                                        i = z3;
                                                    } else {
                                                        k8.j("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                                        return z3;
                                                    }
                                                }
                                            } else {
                                                i = i2;
                                                i9 = 4;
                                            }
                                        } else {
                                            boolean z4 = i2;
                                            i = z4;
                                            i = z4;
                                            if (readInt3 != 0 && readInt3 != 1) {
                                                k8.j("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                                                return z4;
                                            }
                                        }
                                        settings2.b(i9, readInt3);
                                        if (i6 != i7) {
                                            i6 += i8;
                                            i2 = i;
                                        }
                                    }
                                }
                                Http2Connection http2Connection2 = Http2Connection.this;
                                TaskQueue taskQueue2 = http2Connection2.q;
                                final String l = q.l(new StringBuilder(), http2Connection2.l, " applyAndAckSettings");
                                taskQueue2.c(new Task(l) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1
                                    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                                    @Override // okhttp3.internal.concurrent.Task
                                    public final long a() {
                                        int i10;
                                        long a;
                                        Http2Stream[] http2StreamArr;
                                        Http2Connection.ReaderRunnable readerRunnable2 = readerRunnable;
                                        Settings settings3 = settings2;
                                        final ?? obj = new Object();
                                        final Http2Connection http2Connection3 = Http2Connection.this;
                                        synchronized (http2Connection3.F) {
                                            synchronized (http2Connection3) {
                                                try {
                                                    Settings settings4 = http2Connection3.z;
                                                    Settings settings5 = new Settings();
                                                    settings4.getClass();
                                                    for (int i11 = 0; i11 < 10; i11++) {
                                                        if (((1 << i11) & settings4.a) != 0) {
                                                            settings5.b(i11, settings4.b[i11]);
                                                        }
                                                    }
                                                    for (int i12 = 0; i12 < 10; i12++) {
                                                        if (((1 << i12) & settings3.a) != 0) {
                                                            settings5.b(i12, settings3.b[i12]);
                                                        }
                                                    }
                                                    obj.j = settings5;
                                                    a = settings5.a() - settings4.a();
                                                    if (a != 0 && !http2Connection3.k.isEmpty()) {
                                                        http2StreamArr = (Http2Stream[]) http2Connection3.k.values().toArray(new Http2Stream[0]);
                                                        Settings settings6 = (Settings) obj.j;
                                                        settings6.getClass();
                                                        http2Connection3.z = settings6;
                                                        http2Connection3.s.c(new Task(http2Connection3.l + " onSettings") { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1
                                                            @Override // okhttp3.internal.concurrent.Task
                                                            public final long a() {
                                                                Http2Connection http2Connection4 = http2Connection3;
                                                                http2Connection4.j.a(http2Connection4, (Settings) obj.j);
                                                                return -1L;
                                                            }
                                                        }, 0L);
                                                    }
                                                    http2StreamArr = null;
                                                    Settings settings62 = (Settings) obj.j;
                                                    settings62.getClass();
                                                    http2Connection3.z = settings62;
                                                    http2Connection3.s.c(new Task(http2Connection3.l + " onSettings") { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda$7$lambda$6$$inlined$execute$default$1
                                                        @Override // okhttp3.internal.concurrent.Task
                                                        public final long a() {
                                                            Http2Connection http2Connection4 = http2Connection3;
                                                            http2Connection4.j.a(http2Connection4, (Settings) obj.j);
                                                            return -1L;
                                                        }
                                                    }, 0L);
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                            try {
                                                http2Connection3.F.a((Settings) obj.j);
                                            } catch (IOException e) {
                                                http2Connection3.h(e);
                                            }
                                        }
                                        if (http2StreamArr != null) {
                                            for (Http2Stream http2Stream : http2StreamArr) {
                                                synchronized (http2Stream) {
                                                    http2Stream.f += a;
                                                    if (a > 0) {
                                                        http2Stream.notifyAll();
                                                    }
                                                }
                                            }
                                            return -1L;
                                        }
                                        return -1L;
                                    }
                                }, 0L);
                                return true;
                            }
                            k8.j(q.g(p, "TYPE_SETTINGS length % 6 != 0: "));
                            return false;
                        }
                        k8.j("TYPE_SETTINGS streamId != 0");
                        return false;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        v(readerRunnable, p, i3, i4);
                        return true;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        if (p == 8) {
                            if (i4 == 0) {
                                final int readInt4 = this.j.readInt();
                                final int readInt5 = this.j.readInt();
                                if ((readByte2 & 1) != 0) {
                                    i2 = 1;
                                }
                                Http2Connection http2Connection3 = Http2Connection.this;
                                if (i2 != 0) {
                                    synchronized (http2Connection3) {
                                        try {
                                            if (readInt4 != 1) {
                                                if (readInt4 != 2) {
                                                    if (readInt4 == 3) {
                                                        http2Connection3.notifyAll();
                                                    }
                                                } else {
                                                    http2Connection3.w++;
                                                }
                                            } else {
                                                http2Connection3.u++;
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    return true;
                                }
                                TaskQueue taskQueue3 = http2Connection3.q;
                                final String l2 = q.l(new StringBuilder(), Http2Connection.this.l, " ping");
                                final Http2Connection http2Connection4 = Http2Connection.this;
                                taskQueue3.c(new Task(l2) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1
                                    @Override // okhttp3.internal.concurrent.Task
                                    public final long a() {
                                        Http2Connection http2Connection5 = http2Connection4;
                                        try {
                                            http2Connection5.F.w(readInt4, readInt5, true);
                                            return -1L;
                                        } catch (IOException e) {
                                            http2Connection5.h(e);
                                            return -1L;
                                        }
                                    }
                                }, 0L);
                                return true;
                            }
                            k8.j("TYPE_PING streamId != 0");
                            return false;
                        }
                        k8.j(q.g(p, "TYPE_PING length != 8: "));
                        return false;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        if (p >= 8) {
                            if (i4 == 0) {
                                int readInt6 = this.j.readInt();
                                int readInt7 = this.j.readInt();
                                int i10 = p - 8;
                                ErrorCode[] values2 = ErrorCode.values();
                                int length2 = values2.length;
                                int i11 = 0;
                                while (true) {
                                    if (i11 < length2) {
                                        ErrorCode errorCode4 = values2[i11];
                                        if (errorCode4.j == readInt7) {
                                            errorCode2 = errorCode4;
                                        } else {
                                            i11++;
                                        }
                                    } else {
                                        errorCode2 = null;
                                    }
                                }
                                if (errorCode2 != null) {
                                    ByteString byteString = ByteString.m;
                                    if (i10 > 0) {
                                        byteString = this.j.s(i10);
                                    }
                                    byteString.getClass();
                                    byteString.e();
                                    Http2Connection http2Connection5 = Http2Connection.this;
                                    synchronized (http2Connection5) {
                                        array = http2Connection5.k.values().toArray(new Http2Stream[0]);
                                        http2Connection5.o = true;
                                    }
                                    Http2Stream[] http2StreamArr = (Http2Stream[]) array;
                                    int length3 = http2StreamArr.length;
                                    while (i2 < length3) {
                                        Http2Stream http2Stream = http2StreamArr[i2];
                                        if (http2Stream.a > readInt6 && http2Stream.g()) {
                                            ErrorCode errorCode5 = ErrorCode.REFUSED_STREAM;
                                            synchronized (http2Stream) {
                                                if (http2Stream.m == null) {
                                                    http2Stream.m = errorCode5;
                                                    http2Stream.notifyAll();
                                                }
                                            }
                                            Http2Connection.this.q(http2Stream.a);
                                        }
                                        i2++;
                                    }
                                    return true;
                                }
                                k8.j(q.g(readInt7, "TYPE_GOAWAY unexpected error code: "));
                                return false;
                            }
                            k8.j("TYPE_GOAWAY streamId != 0");
                            return false;
                        }
                        k8.j(q.g(p, "TYPE_GOAWAY length < 8: "));
                        return false;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        if (p == 4) {
                            long readInt8 = 2147483647L & this.j.readInt();
                            if (readInt8 != 0) {
                                Http2Connection http2Connection6 = Http2Connection.this;
                                if (i4 == 0) {
                                    synchronized (http2Connection6) {
                                        http2Connection6.D += readInt8;
                                        http2Connection6.notifyAll();
                                    }
                                    return true;
                                }
                                Http2Stream n = http2Connection6.n(i4);
                                if (n != null) {
                                    synchronized (n) {
                                        n.f += readInt8;
                                        if (readInt8 > 0) {
                                            n.notifyAll();
                                        }
                                    }
                                    return true;
                                }
                                return true;
                            }
                            k8.j("windowSizeIncrement was 0");
                            return false;
                        }
                        k8.j(q.g(p, "TYPE_WINDOW_UPDATE length !=4: "));
                        return false;
                    default:
                        this.j.skip(p);
                        return true;
                }
            }
            k8.j(q.g(p, "FRAME_SIZE_ERROR: "));
            return false;
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v14, types: [okio.Buffer, java.lang.Object] */
    public final void h(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, final int i3) {
        final boolean z;
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (i3 != 0) {
            if ((i2 & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i2 & 32) == 0) {
                if ((i2 & 8) != 0) {
                    byte readByte = this.j.readByte();
                    byte[] bArr = Util.a;
                    i4 = readByte & 255;
                } else {
                    i4 = 0;
                }
                final int a = Companion.a(i, i2, i4);
                BufferedSource bufferedSource = this.j;
                bufferedSource.getClass();
                final Http2Connection http2Connection = Http2Connection.this;
                Settings settings = Http2Connection.I;
                if (i3 != 0 && (i3 & 1) == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    final ?? obj = new Object();
                    long j = a;
                    bufferedSource.W0(j);
                    bufferedSource.J0(j, obj);
                    TaskQueue taskQueue = http2Connection.r;
                    final String str = http2Connection.l + '[' + i3 + "] onData";
                    taskQueue.c(new Task(str, http2Connection, i3, obj, a, z) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1
                        public final /* synthetic */ Http2Connection e;
                        public final /* synthetic */ int f;
                        public final /* synthetic */ Buffer g;
                        public final /* synthetic */ int h;

                        @Override // okhttp3.internal.concurrent.Task
                        public final long a() {
                            try {
                                PushObserver pushObserver = this.e.t;
                                Buffer buffer = this.g;
                                int i5 = this.h;
                                ((PushObserver$Companion$PushObserverCancel) pushObserver).getClass();
                                buffer.skip(i5);
                                this.e.F.A(this.f, ErrorCode.CANCEL);
                                synchronized (this.e) {
                                    this.e.H.remove(Integer.valueOf(this.f));
                                }
                                return -1L;
                            } catch (IOException unused) {
                                return -1L;
                            }
                        }
                    }, 0L);
                } else {
                    Http2Stream n = http2Connection.n(i3);
                    if (n == null) {
                        Http2Connection.this.E(i3, ErrorCode.PROTOCOL_ERROR);
                        long j2 = a;
                        Http2Connection.this.w(j2);
                        bufferedSource.skip(j2);
                    } else {
                        byte[] bArr2 = Util.a;
                        Http2Stream.FramingSource framingSource = n.i;
                        long j3 = a;
                        framingSource.getClass();
                        long j4 = j3;
                        while (true) {
                            Http2Stream http2Stream = Http2Stream.this;
                            if (j4 > 0) {
                                synchronized (http2Stream) {
                                    z3 = framingSource.k;
                                    if (framingSource.m.k + j4 > framingSource.j) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                }
                                if (z4) {
                                    bufferedSource.skip(j4);
                                    Http2Stream.this.e(ErrorCode.FLOW_CONTROL_ERROR);
                                    break;
                                }
                                if (z3) {
                                    bufferedSource.skip(j4);
                                    break;
                                }
                                long J0 = bufferedSource.J0(j4, framingSource.l);
                                if (J0 != -1) {
                                    j4 -= J0;
                                    Http2Stream http2Stream2 = Http2Stream.this;
                                    synchronized (http2Stream2) {
                                        try {
                                            if (framingSource.n) {
                                                Buffer buffer = framingSource.l;
                                                buffer.skip(buffer.k);
                                            } else {
                                                Buffer buffer2 = framingSource.m;
                                                if (buffer2.k == 0) {
                                                    z5 = true;
                                                } else {
                                                    z5 = false;
                                                }
                                                buffer2.a0(framingSource.l);
                                                if (z5) {
                                                    http2Stream2.notifyAll();
                                                }
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                } else {
                                    throw new EOFException();
                                }
                            } else {
                                byte[] bArr3 = Util.a;
                                http2Stream.b.w(j3);
                                break;
                            }
                        }
                        if (z) {
                            n.i(Util.b, true);
                        }
                    }
                }
                this.j.skip(i4);
                return;
            }
            k8.j("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
            return;
        }
        k8.j("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
    }

    public final List n(int i, int i2, int i3, int i4) {
        ContinuationSource continuationSource = this.k;
        continuationSource.n = i;
        continuationSource.k = i;
        continuationSource.o = i2;
        continuationSource.l = i3;
        continuationSource.m = i4;
        Hpack.Reader reader = this.l;
        RealBufferedSource realBufferedSource = reader.c;
        ArrayList arrayList = reader.b;
        while (!realBufferedSource.J()) {
            byte readByte = realBufferedSource.readByte();
            byte[] bArr = Util.a;
            int i5 = readByte & 255;
            if (i5 != 128) {
                if ((readByte & 128) == 128) {
                    int e = reader.e(i5, 127);
                    int i6 = e - 1;
                    if (i6 >= 0) {
                        Header[] headerArr = Hpack.a;
                        if (i6 <= headerArr.length - 1) {
                            arrayList.add(headerArr[i6]);
                        }
                    }
                    int length = reader.e + 1 + (i6 - Hpack.a.length);
                    if (length >= 0) {
                        Header[] headerArr2 = reader.d;
                        if (length < headerArr2.length) {
                            Header header = headerArr2[length];
                            header.getClass();
                            arrayList.add(header);
                        }
                    }
                    k8.j(q.g(e, "Header index too large "));
                    return null;
                }
                if (i5 == 64) {
                    Header[] headerArr3 = Hpack.a;
                    ByteString d = reader.d();
                    Hpack.a(d);
                    reader.c(new Header(d, reader.d()));
                } else if ((readByte & 64) == 64) {
                    reader.c(new Header(reader.b(reader.e(i5, 63) - 1), reader.d()));
                } else if ((readByte & 32) == 32) {
                    int e2 = reader.e(i5, 31);
                    reader.a = e2;
                    if (e2 >= 0 && e2 <= 4096) {
                        int i7 = reader.g;
                        if (e2 < i7) {
                            if (e2 == 0) {
                                ArraysKt.m(0, r6.length, null, reader.d);
                                reader.e = reader.d.length - 1;
                                reader.f = 0;
                                reader.g = 0;
                            } else {
                                reader.a(i7 - e2);
                            }
                        }
                    } else {
                        throw new IOException("Invalid dynamic table size update " + reader.a);
                    }
                } else if (i5 != 16 && i5 != 0) {
                    arrayList.add(new Header(reader.b(reader.e(i5, 15) - 1), reader.d()));
                } else {
                    Header[] headerArr4 = Hpack.a;
                    ByteString d2 = reader.d();
                    Hpack.a(d2);
                    arrayList.add(new Header(d2, reader.d()));
                }
            } else {
                k8.j("index == 0");
                return null;
            }
        }
        List X = CollectionsKt.X(arrayList);
        arrayList.clear();
        return X;
    }

    public final void q(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, final int i3) {
        boolean z;
        int i4;
        if (i3 != 0) {
            boolean z2 = false;
            if ((i2 & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i2 & 8) != 0) {
                byte readByte = this.j.readByte();
                byte[] bArr = Util.a;
                i4 = readByte & 255;
            } else {
                i4 = 0;
            }
            if ((i2 & 32) != 0) {
                BufferedSource bufferedSource = this.j;
                bufferedSource.readInt();
                bufferedSource.readByte();
                byte[] bArr2 = Util.a;
                i -= 5;
            }
            final List n = n(Companion.a(i, i2, i4), i4, i2, i3);
            final Http2Connection http2Connection = Http2Connection.this;
            Settings settings = Http2Connection.I;
            if (i3 != 0 && (i3 & 1) == 0) {
                z2 = true;
            }
            if (z2) {
                TaskQueue taskQueue = http2Connection.r;
                final String str = http2Connection.l + '[' + i3 + "] onHeaders";
                final boolean z3 = z;
                taskQueue.c(new Task(str, http2Connection, i3, n, z3) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1
                    public final /* synthetic */ Http2Connection e;
                    public final /* synthetic */ int f;

                    @Override // okhttp3.internal.concurrent.Task
                    public final long a() {
                        ((PushObserver$Companion$PushObserverCancel) this.e.t).getClass();
                        try {
                            this.e.F.A(this.f, ErrorCode.CANCEL);
                            synchronized (this.e) {
                                this.e.H.remove(Integer.valueOf(this.f));
                            }
                            return -1L;
                        } catch (IOException unused) {
                            return -1L;
                        }
                    }
                }, 0L);
                return;
            }
            synchronized (http2Connection) {
                Http2Stream n2 = http2Connection.n(i3);
                if (n2 == null) {
                    if (http2Connection.o) {
                        return;
                    }
                    if (i3 <= http2Connection.m) {
                        return;
                    }
                    if (i3 % 2 == http2Connection.n % 2) {
                        return;
                    }
                    final Http2Stream http2Stream = new Http2Stream(i3, http2Connection, false, z, Util.r(n));
                    http2Connection.m = i3;
                    http2Connection.k.put(Integer.valueOf(i3), http2Stream);
                    TaskQueue e = http2Connection.p.e();
                    final String str2 = http2Connection.l + '[' + i3 + "] onStream";
                    e.c(new Task(str2) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda$2$$inlined$execute$default$1
                        @Override // okhttp3.internal.concurrent.Task
                        public final long a() {
                            try {
                                http2Connection.j.b(http2Stream);
                                return -1L;
                            } catch (IOException e2) {
                                Platform platform = Platform.a;
                                Platform platform2 = Platform.a;
                                String str3 = "Http2Connection.Listener failure for " + http2Connection.l;
                                platform2.getClass();
                                Platform.i(str3, 4, e2);
                                try {
                                    http2Stream.c(ErrorCode.PROTOCOL_ERROR, e2);
                                    return -1L;
                                } catch (IOException unused) {
                                    return -1L;
                                }
                            }
                        }
                    }, 0L);
                    return;
                }
                n2.i(Util.r(n), z);
                return;
            }
        }
        k8.j("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
    }

    public final void v(Http2Connection.ReaderRunnable readerRunnable, int i, int i2, int i3) {
        int i4;
        if (i3 != 0) {
            if ((i2 & 8) != 0) {
                byte readByte = this.j.readByte();
                byte[] bArr = Util.a;
                i4 = readByte & 255;
            } else {
                i4 = 0;
            }
            final int readInt = this.j.readInt() & Integer.MAX_VALUE;
            final List n = n(Companion.a(i - 4, i2, i4), i4, i2, i3);
            final Http2Connection http2Connection = Http2Connection.this;
            synchronized (http2Connection) {
                if (http2Connection.H.contains(Integer.valueOf(readInt))) {
                    http2Connection.E(readInt, ErrorCode.PROTOCOL_ERROR);
                    return;
                }
                http2Connection.H.add(Integer.valueOf(readInt));
                TaskQueue taskQueue = http2Connection.r;
                final String str = http2Connection.l + '[' + readInt + "] onRequest";
                taskQueue.c(new Task(str, http2Connection, readInt, n) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$default$1
                    public final /* synthetic */ Http2Connection e;
                    public final /* synthetic */ int f;

                    @Override // okhttp3.internal.concurrent.Task
                    public final long a() {
                        ((PushObserver$Companion$PushObserverCancel) this.e.t).getClass();
                        try {
                            this.e.F.A(this.f, ErrorCode.CANCEL);
                            synchronized (this.e) {
                                this.e.H.remove(Integer.valueOf(this.f));
                            }
                            return -1L;
                        } catch (IOException unused) {
                            return -1L;
                        }
                    }
                }, 0L);
                return;
            }
        }
        k8.j("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ContinuationSource implements Source {
        public final BufferedSource j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;

        public ContinuationSource(BufferedSource bufferedSource) {
            bufferedSource.getClass();
            this.j = bufferedSource;
        }

        @Override // okio.Source
        public final long J0(long j, Buffer buffer) {
            int i;
            int readInt;
            buffer.getClass();
            do {
                int i2 = this.n;
                BufferedSource bufferedSource = this.j;
                if (i2 == 0) {
                    bufferedSource.skip(this.o);
                    this.o = 0;
                    if ((this.l & 4) == 0) {
                        i = this.m;
                        int p = Util.p(bufferedSource);
                        this.n = p;
                        this.k = p;
                        int readByte = bufferedSource.readByte() & 255;
                        this.l = bufferedSource.readByte() & 255;
                        Logger logger = Http2Reader.m;
                        if (logger.isLoggable(Level.FINE)) {
                            ByteString byteString = Http2.a;
                            logger.fine(Http2.a(true, this.m, this.k, readByte, this.l));
                        }
                        readInt = bufferedSource.readInt() & Integer.MAX_VALUE;
                        this.m = readInt;
                        if (readByte != 9) {
                            throw new IOException(readByte + " != TYPE_CONTINUATION");
                        }
                    }
                } else {
                    long J0 = bufferedSource.J0(Math.min(j, i2), buffer);
                    if (J0 != -1) {
                        this.n -= (int) J0;
                        return J0;
                    }
                }
                return -1L;
            } while (readInt == i);
            k8.j("TYPE_CONTINUATION streamId changed");
            return 0L;
        }

        @Override // okio.Source
        public final Timeout i() {
            return this.j.i();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }
}
