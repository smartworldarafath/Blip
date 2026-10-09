package okio;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileHandle implements Closeable {
    public boolean j;
    public int k;
    public final ReentrantLock l = new ReentrantLock();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FileHandleSource implements Source {
        public final FileHandle j;
        public long k;
        public boolean l;

        public FileHandleSource(FileHandle fileHandle, long j) {
            this.j = fileHandle;
            this.k = j;
        }

        @Override // okio.Source
        public final long J0(long j, Buffer buffer) {
            long j2;
            long j3;
            buffer.getClass();
            if (!this.l) {
                long j4 = this.k;
                if (j >= 0) {
                    long j5 = j + j4;
                    long j6 = j4;
                    while (true) {
                        if (j6 < j5) {
                            Segment S = buffer.S(1);
                            j2 = -1;
                            int a = this.j.a(j6, S.a, S.c, (int) Math.min(j5 - j6, 8192 - r13));
                            if (a == -1) {
                                if (S.b == S.c) {
                                    buffer.j = S.a();
                                    SegmentPool.a(S);
                                }
                                if (j4 == j6) {
                                    j3 = -1;
                                }
                            } else {
                                S.c += a;
                                long j7 = a;
                                j6 += j7;
                                buffer.k += j7;
                            }
                        } else {
                            j2 = -1;
                            break;
                        }
                    }
                    j3 = j6 - j4;
                    if (j3 != j2) {
                        this.k += j3;
                    }
                    return j3;
                }
                fe.l(q.h(j, "byteCount < 0: "));
                return 0L;
            }
            u2.l("closed");
            return 0L;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            FileHandle fileHandle = this.j;
            if (this.l) {
                return;
            }
            this.l = true;
            ReentrantLock reentrantLock = fileHandle.l;
            reentrantLock.lock();
            try {
                int i = fileHandle.k - 1;
                fileHandle.k = i;
                if (i == 0) {
                    if (fileHandle.j) {
                        reentrantLock.unlock();
                        JvmFileHandle jvmFileHandle = (JvmFileHandle) fileHandle;
                        synchronized (jvmFileHandle) {
                            jvmFileHandle.m.close();
                        }
                    }
                }
            } finally {
                reentrantLock.unlock();
            }
        }

        @Override // okio.Source
        public final Timeout i() {
            return Timeout.d;
        }
    }

    public abstract int a(long j, byte[] bArr, int i, int i2);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.l;
        reentrantLock.lock();
        try {
            if (this.j) {
                return;
            }
            this.j = true;
            if (this.k != 0) {
                return;
            }
            reentrantLock.unlock();
            JvmFileHandle jvmFileHandle = (JvmFileHandle) this;
            synchronized (jvmFileHandle) {
                jvmFileHandle.m.close();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Source h(long j) {
        ReentrantLock reentrantLock = this.l;
        reentrantLock.lock();
        try {
            if (!this.j) {
                this.k++;
                reentrantLock.unlock();
                return new FileHandleSource(this, j);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long size() {
        long length;
        ReentrantLock reentrantLock = this.l;
        reentrantLock.lock();
        try {
            if (!this.j) {
                reentrantLock.unlock();
                JvmFileHandle jvmFileHandle = (JvmFileHandle) this;
                synchronized (jvmFileHandle) {
                    length = jvmFileHandle.m.length();
                }
                return length;
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
