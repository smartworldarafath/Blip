package androidx.media3.exoplayer.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.util.ReleasableExecutor;
import com.google.common.base.Preconditions;
import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Loader {
    public static final LoadErrorAction d = new LoadErrorAction(2, -9223372036854775807L);
    public static final LoadErrorAction e = new LoadErrorAction(3, -9223372036854775807L);
    public final ReleasableExecutor a;
    public LoadTask b;
    public IOException c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Callback<T extends Loadable> {
        LoadErrorAction c(Loadable loadable, long j, long j2, IOException iOException, int i);

        void l(Loadable loadable, long j, long j2, int i);

        void r(Loadable loadable, long j, long j2);

        void v(Loadable loadable, long j, long j2, boolean z);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LoadErrorAction {
        public final int a;
        public final long b;

        public LoadErrorAction(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @SuppressLint({"HandlerLeak"})
    /* loaded from: classes.dex */
    public final class LoadTask<T extends Loadable> extends Handler implements Runnable {
        public final int j;
        public final Loadable k;
        public final long l;
        public Callback m;
        public IOException n;
        public int o;
        public Thread p;
        public boolean q;
        public volatile boolean r;

        public LoadTask(Looper looper, Loadable loadable, Callback callback, int i, long j) {
            super(looper);
            this.k = loadable;
            this.m = callback;
            this.j = i;
            this.l = j;
        }

        public final void a(boolean z) {
            this.r = z;
            this.n = null;
            if (hasMessages(1)) {
                this.q = true;
                removeMessages(1);
                if (!z) {
                    sendEmptyMessage(2);
                }
            } else {
                synchronized (this) {
                    try {
                        this.q = true;
                        this.k.b();
                        Thread thread = this.p;
                        if (thread != null) {
                            thread.interrupt();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z) {
                Loader.this.b = null;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                Callback callback = this.m;
                callback.getClass();
                callback.v(this.k, elapsedRealtime, elapsedRealtime - this.l, true);
                this.m = null;
            }
        }

        public final void b() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.l;
            Callback callback = this.m;
            callback.getClass();
            callback.l(this.k, elapsedRealtime, j, this.o);
            this.n = null;
            Loader loader = Loader.this;
            ReleasableExecutor releasableExecutor = loader.a;
            LoadTask loadTask = loader.b;
            loadTask.getClass();
            releasableExecutor.execute(loadTask);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            if (!this.r) {
                int i = message.what;
                if (i == 1) {
                    b();
                    return;
                }
                if (i != 4) {
                    Loader.this.b = null;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    long j = elapsedRealtime - this.l;
                    Callback callback = this.m;
                    callback.getClass();
                    if (this.q) {
                        callback.v(this.k, elapsedRealtime, j, false);
                        return;
                    }
                    int i2 = message.what;
                    if (i2 != 2) {
                        if (i2 == 3) {
                            IOException iOException = (IOException) message.obj;
                            this.n = iOException;
                            int i3 = this.o + 1;
                            this.o = i3;
                            LoadErrorAction c = callback.c(this.k, elapsedRealtime, j, iOException, i3);
                            int i4 = c.a;
                            if (i4 == 3) {
                                Loader.this.c = this.n;
                                return;
                            }
                            if (i4 != 2) {
                                if (i4 == 1) {
                                    this.o = 1;
                                }
                                long j2 = c.b;
                                if (j2 == -9223372036854775807L) {
                                    j2 = Math.min((this.o - 1) * 1000, 5000);
                                }
                                Loader loader = Loader.this;
                                if (loader.b == null) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                Preconditions.n(z);
                                loader.b = this;
                                if (j2 > 0) {
                                    sendEmptyMessageDelayed(1, j2);
                                    return;
                                } else {
                                    b();
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    try {
                        callback.r(this.k, elapsedRealtime, j);
                        return;
                    } catch (RuntimeException e) {
                        Log.d("LoadTask", "Unexpected exception handling load completed", e);
                        Loader.this.c = new UnexpectedLoaderException(e);
                        return;
                    }
                }
                throw ((Error) message.obj);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            try {
                synchronized (this) {
                    z = this.q;
                    this.p = Thread.currentThread();
                }
                if (!z) {
                    Trace.beginSection("load:".concat(this.k.getClass().getSimpleName()));
                    try {
                        this.k.a();
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.p = null;
                    Thread.interrupted();
                }
                if (!this.r) {
                    sendEmptyMessage(2);
                }
            } catch (IOException e) {
                if (!this.r) {
                    obtainMessage(3, e).sendToTarget();
                }
            } catch (Exception e2) {
                if (!this.r) {
                    Log.d("LoadTask", "Unexpected exception loading stream", e2);
                    obtainMessage(3, new UnexpectedLoaderException(e2)).sendToTarget();
                }
            } catch (OutOfMemoryError e3) {
                if (!this.r) {
                    Log.d("LoadTask", "OutOfMemory error loading stream", e3);
                    obtainMessage(3, new UnexpectedLoaderException(e3)).sendToTarget();
                }
            } catch (Error e4) {
                if (!this.r) {
                    Log.d("LoadTask", "Unexpected error loading stream", e4);
                    obtainMessage(4, e4).sendToTarget();
                }
                throw e4;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Loadable {
        void a();

        void b();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ReleaseCallback {
        void a();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReleaseTask implements Runnable {
        public final ReleaseCallback j;

        public ReleaseTask(ReleaseCallback releaseCallback) {
            this.j = releaseCallback;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.j.a();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UnexpectedLoaderException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public UnexpectedLoaderException(Throwable th) {
            super(r0.toString(), th);
            String str;
            StringBuilder sb = new StringBuilder("Unexpected ");
            sb.append(th.getClass().getSimpleName());
            if (th.getMessage() != null) {
                str = ": " + th.getMessage();
            } else {
                str = "";
            }
            sb.append(str);
        }
    }

    public Loader(ReleasableExecutor releasableExecutor) {
        this.a = releasableExecutor;
    }

    public final void a() {
        LoadTask loadTask = this.b;
        loadTask.getClass();
        loadTask.a(false);
    }

    public final void b(int i) {
        IOException iOException = this.c;
        if (iOException == null) {
            LoadTask loadTask = this.b;
            if (loadTask != null) {
                if (i == Integer.MIN_VALUE) {
                    i = loadTask.j;
                }
                IOException iOException2 = loadTask.n;
                if (iOException2 != null && loadTask.o > i) {
                    throw iOException2;
                }
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void c(ReleaseCallback releaseCallback) {
        LoadTask loadTask = this.b;
        if (loadTask != null) {
            loadTask.a(true);
        }
        ReleasableExecutor releasableExecutor = this.a;
        if (releaseCallback != null) {
            releasableExecutor.execute(new ReleaseTask(releaseCallback));
        }
        releasableExecutor.a();
    }

    public final void d(Loadable loadable, Callback callback, int i) {
        boolean z;
        Looper myLooper = Looper.myLooper();
        myLooper.getClass();
        this.c = null;
        LoadTask loadTask = new LoadTask(myLooper, loadable, callback, i, SystemClock.elapsedRealtime());
        if (this.b == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        this.b = loadTask;
        loadTask.b();
    }
}
