package okhttp3.internal.connection;

import coil3.network.okhttp.internal.CallsKt$await$2$2;
import defpackage.fe;
import defpackage.u2;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealCall implements Call {
    public final OkHttpClient j;
    public final Request k;
    public final RealConnectionPool l;
    public final EventListener$Companion$NONE$1 m;
    public final RealCall$timeout$1 n;
    public final AtomicBoolean o;
    public Object p;
    public ExchangeFinder q;
    public RealConnection r;
    public Exchange s;
    public boolean t;
    public boolean u;
    public boolean v;
    public volatile boolean w;
    public volatile Exchange x;
    public volatile RealConnection y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AsyncCall implements Runnable {
        public final CallsKt$await$2$2 j;
        public volatile AtomicInteger k = new AtomicInteger(0);

        public AsyncCall(CallsKt$await$2$2 callsKt$await$2$2) {
            this.j = callsKt$await$2$2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OkHttpClient okHttpClient;
            String concat = "OkHttp ".concat(RealCall.this.k.a.f());
            RealCall realCall = RealCall.this;
            Thread currentThread = Thread.currentThread();
            String name = currentThread.getName();
            currentThread.setName(concat);
            try {
                realCall.n.h();
                boolean z = false;
                try {
                    try {
                    } catch (Throwable th) {
                        realCall.j.j.a(this);
                        throw th;
                    }
                } catch (IOException e) {
                    e = e;
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    this.j.a(realCall.f());
                    okHttpClient = realCall.j;
                } catch (IOException e2) {
                    e = e2;
                    z = true;
                    if (z) {
                        Platform platform = Platform.a;
                        Platform platform2 = Platform.a;
                        String concat2 = "Callback failure for ".concat(RealCall.a(realCall));
                        platform2.getClass();
                        Platform.i(concat2, 4, e);
                    } else {
                        this.j.a.g(new Result.Failure(e));
                    }
                    okHttpClient = realCall.j;
                    okHttpClient.j.a(this);
                } catch (Throwable th3) {
                    th = th3;
                    z = true;
                    realCall.d();
                    if (!z) {
                        IOException iOException = new IOException("canceled due to " + th);
                        ExceptionsKt.a(iOException, th);
                        this.j.a.g(new Result.Failure(iOException));
                    }
                    throw th;
                }
                okHttpClient.j.a(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CallReference extends WeakReference<RealCall> {
        public final Object a;

        public CallReference(RealCall realCall, Object obj) {
            super(realCall);
            this.a = obj;
        }
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [okio.Timeout, okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(OkHttpClient okHttpClient, Request request) {
        this.j = okHttpClient;
        this.k = request;
        this.l = okHttpClient.k.a;
        ((fe) okHttpClient.n).getClass();
        byte[] bArr = Util.a;
        this.m = EventListener.a;
        ?? r3 = new AsyncTimeout() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // okio.AsyncTimeout
            public final void j() {
                RealCall.this.d();
            }
        };
        r3.g(0L);
        this.n = r3;
        this.o = new AtomicBoolean();
        this.v = true;
    }

    public static final String a(RealCall realCall) {
        String str;
        StringBuilder sb = new StringBuilder();
        if (realCall.w) {
            str = "canceled ";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("call");
        sb.append(" to ");
        sb.append(realCall.k.a.f());
        return sb.toString();
    }

    public final void b(RealConnection realConnection) {
        byte[] bArr = Util.a;
        if (this.r == null) {
            this.r = realConnection;
            realConnection.p.add(new CallReference(this, this.p));
        } else {
            u2.l("Check failed.");
        }
    }

    public final IOException c(IOException iOException) {
        IOException interruptedIOException;
        Socket i;
        byte[] bArr = Util.a;
        RealConnection realConnection = this.r;
        if (realConnection != null) {
            synchronized (realConnection) {
                i = i();
            }
            if (this.r == null) {
                if (i != null) {
                    Util.c(i);
                }
                this.m.getClass();
            } else if (i != null) {
                u2.l("Check failed.");
                return null;
            }
        }
        if (!i()) {
            interruptedIOException = iOException;
        } else {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        }
        EventListener$Companion$NONE$1 eventListener$Companion$NONE$1 = this.m;
        if (iOException != null) {
            interruptedIOException.getClass();
            eventListener$Companion$NONE$1.getClass();
            return interruptedIOException;
        }
        eventListener$Companion$NONE$1.getClass();
        return interruptedIOException;
    }

    public final Object clone() {
        return new RealCall(this.j, this.k);
    }

    public final void d() {
        Socket socket;
        if (this.w) {
            return;
        }
        this.w = true;
        Exchange exchange = this.x;
        if (exchange != null) {
            exchange.d.cancel();
        }
        RealConnection realConnection = this.y;
        if (realConnection != null && (socket = realConnection.c) != null) {
            Util.c(socket);
        }
        this.m.getClass();
    }

    public final void e(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (!this.v) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (exchange = this.x) != null) {
            exchange.d.cancel();
            exchange.a.g(exchange, true, true, null);
        }
        this.s = null;
    }

    public final Response f() {
        ArrayList arrayList = new ArrayList();
        CollectionsKt.g(arrayList, this.j.l);
        arrayList.add(new RetryAndFollowUpInterceptor(this.j));
        arrayList.add(new BridgeInterceptor(this.j.s));
        arrayList.add(new Object());
        arrayList.add(ConnectInterceptor.a);
        CollectionsKt.g(arrayList, this.j.m);
        arrayList.add(new Object());
        Request request = this.k;
        OkHttpClient okHttpClient = this.j;
        try {
            try {
                Response b = new RealInterceptorChain(this, arrayList, 0, null, request, okHttpClient.E, okHttpClient.F, okHttpClient.G).b(request);
                if (!this.w) {
                    h(null);
                    return b;
                }
                Util.b(b);
                throw new IOException("Canceled");
            } catch (IOException e) {
                IOException h = h(e);
                h.getClass();
                throw h;
            }
        } catch (Throwable th) {
            if (0 == 0) {
                h(null);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:48:0x0011, B:10:0x0020, B:12:0x0024, B:13:0x0026, B:15:0x002a, B:19:0x0033, B:21:0x0037, B:7:0x001a), top: B:47:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0024 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:48:0x0011, B:10:0x0020, B:12:0x0024, B:13:0x0026, B:15:0x002a, B:19:0x0033, B:21:0x0037, B:7:0x001a), top: B:47:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final IOException g(Exchange exchange, boolean z, boolean z2, IOException iOException) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        exchange.getClass();
        if (exchange.equals(this.x)) {
            synchronized (this) {
                z3 = false;
                if (z) {
                    try {
                        if (!this.t) {
                        }
                        if (z) {
                            this.t = false;
                        }
                        if (z2) {
                            this.u = false;
                        }
                        z5 = this.t;
                        if (z5 && !this.u) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if (!z5 && !this.u) {
                            if (!this.v) {
                                z3 = true;
                            }
                        }
                        z4 = z3;
                        z3 = z6;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (!z2 || !this.u) {
                    z4 = false;
                }
                if (z) {
                }
                if (z2) {
                }
                z5 = this.t;
                if (z5) {
                }
                z6 = false;
                if (!z5) {
                    if (!this.v) {
                    }
                }
                z4 = z3;
                z3 = z6;
            }
            if (z3) {
                this.x = null;
                RealConnection realConnection = this.r;
                if (realConnection != null) {
                    synchronized (realConnection) {
                        realConnection.m++;
                    }
                }
            }
            if (z4) {
                return c(iOException);
            }
        }
        return iOException;
    }

    public final IOException h(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.v) {
                this.v = false;
                if (!this.t) {
                    if (!this.u) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            return c(iOException);
        }
        return iOException;
    }

    public final Socket i() {
        RealConnection realConnection = this.r;
        realConnection.getClass();
        byte[] bArr = Util.a;
        ArrayList arrayList = realConnection.p;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (Intrinsics.a(((Reference) it.next()).get(), this)) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            arrayList.remove(i);
            this.r = null;
            if (!arrayList.isEmpty()) {
                return null;
            }
            realConnection.q = System.nanoTime();
            RealConnectionPool realConnectionPool = this.l;
            ConcurrentLinkedQueue concurrentLinkedQueue = realConnectionPool.d;
            TaskQueue taskQueue = realConnectionPool.b;
            byte[] bArr2 = Util.a;
            if (!realConnection.j) {
                taskQueue.c(realConnectionPool.c, 0L);
                return null;
            }
            realConnection.j = true;
            concurrentLinkedQueue.remove(realConnection);
            if (concurrentLinkedQueue.isEmpty()) {
                taskQueue.a();
            }
            Socket socket = realConnection.d;
            socket.getClass();
            return socket;
        }
        u2.l("Check failed.");
        return null;
    }
}
