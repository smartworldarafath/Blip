package androidx.media3.decoder;

import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.DecoderOutputBuffer;
import com.google.common.base.Preconditions;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SimpleDecoder<I extends DecoderInputBuffer, O extends DecoderOutputBuffer, E extends DecoderException> implements Decoder<I, O, E> {
    public final Thread a;
    public final DecoderInputBuffer[] e;
    public final DecoderOutputBuffer[] f;
    public int g;
    public int h;
    public DecoderInputBuffer i;
    public DecoderException j;
    public boolean k;
    public boolean l;
    public final Object b = new Object();
    public long m = -9223372036854775807L;
    public final ArrayDeque c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();

    public SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, DecoderOutputBuffer[] decoderOutputBufferArr) {
        this.e = decoderInputBufferArr;
        this.g = decoderInputBufferArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = g();
        }
        this.f = decoderOutputBufferArr;
        this.h = decoderOutputBufferArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.f[i2] = h();
        }
        Thread thread = new Thread() { // from class: androidx.media3.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                do {
                    try {
                    } catch (InterruptedException e) {
                        throw new IllegalStateException(e);
                    }
                } while (SimpleDecoder.this.k());
            }
        };
        this.a = thread;
        thread.start();
    }

    @Override // androidx.media3.decoder.Decoder
    public final void a() {
        synchronized (this.b) {
            this.l = true;
            this.b.notify();
        }
        try {
            this.a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void b(long j) {
        boolean z;
        synchronized (this.b) {
            try {
                if (this.g != this.e.length && !this.k) {
                    z = false;
                    Preconditions.n(z);
                    this.m = j;
                }
                z = true;
                Preconditions.n(z);
                this.m = j;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final Object e() {
        boolean z;
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.b) {
            try {
                DecoderException decoderException = this.j;
                if (decoderException == null) {
                    if (this.i == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.n(z);
                    int i = this.g;
                    if (i == 0) {
                        decoderInputBuffer = null;
                    } else {
                        DecoderInputBuffer[] decoderInputBufferArr = this.e;
                        int i2 = i - 1;
                        this.g = i2;
                        decoderInputBuffer = decoderInputBufferArr[i2];
                    }
                    this.i = decoderInputBuffer;
                } else {
                    throw decoderException;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return decoderInputBuffer;
    }

    @Override // androidx.media3.decoder.Decoder
    public final void flush() {
        synchronized (this.b) {
            try {
                this.k = true;
                DecoderInputBuffer decoderInputBuffer = this.i;
                if (decoderInputBuffer != null) {
                    decoderInputBuffer.f();
                    DecoderInputBuffer[] decoderInputBufferArr = this.e;
                    int i = this.g;
                    this.g = i + 1;
                    decoderInputBufferArr[i] = decoderInputBuffer;
                    this.i = null;
                }
                while (!this.c.isEmpty()) {
                    DecoderInputBuffer decoderInputBuffer2 = (DecoderInputBuffer) this.c.removeFirst();
                    decoderInputBuffer2.f();
                    DecoderInputBuffer[] decoderInputBufferArr2 = this.e;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    decoderInputBufferArr2[i2] = decoderInputBuffer2;
                }
                while (!this.d.isEmpty()) {
                    ((DecoderOutputBuffer) this.d.removeFirst()).g();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract DecoderInputBuffer g();

    public abstract DecoderOutputBuffer h();

    public abstract DecoderException i(Throwable th);

    public abstract DecoderException j(DecoderInputBuffer decoderInputBuffer, DecoderOutputBuffer decoderOutputBuffer, boolean z);

    public final boolean k() {
        boolean z;
        DecoderException i;
        boolean z2;
        synchronized (this.b) {
            while (!this.l) {
                try {
                    if (!this.c.isEmpty() && this.h > 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        break;
                    }
                    this.b.wait();
                } finally {
                }
            }
            if (this.l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.c.removeFirst();
            DecoderOutputBuffer[] decoderOutputBufferArr = this.f;
            int i2 = this.h - 1;
            this.h = i2;
            DecoderOutputBuffer decoderOutputBuffer = decoderOutputBufferArr[i2];
            boolean z3 = this.k;
            this.k = false;
            if (decoderInputBuffer.e(4)) {
                decoderOutputBuffer.j = 4 | decoderOutputBuffer.j;
            } else {
                decoderOutputBuffer.k = decoderInputBuffer.n;
                if (decoderInputBuffer.e(134217728)) {
                    decoderOutputBuffer.j = 134217728 | decoderOutputBuffer.j;
                }
                long j = decoderInputBuffer.n;
                synchronized (this.b) {
                    long j2 = this.m;
                    if (j2 != -9223372036854775807L && j < j2) {
                        z = false;
                    }
                    z = true;
                }
                if (!z) {
                    decoderOutputBuffer.l = true;
                }
                try {
                    i = j(decoderInputBuffer, decoderOutputBuffer, z3);
                } catch (OutOfMemoryError e) {
                    i = i(e);
                } catch (RuntimeException e2) {
                    i = i(e2);
                }
                if (i != null) {
                    synchronized (this.b) {
                        this.j = i;
                    }
                    return false;
                }
            }
            synchronized (this.b) {
                try {
                    if (this.k) {
                        decoderOutputBuffer.g();
                    } else if (decoderOutputBuffer.l) {
                        decoderOutputBuffer.g();
                    } else {
                        this.d.addLast(decoderOutputBuffer);
                    }
                    decoderInputBuffer.f();
                    DecoderInputBuffer[] decoderInputBufferArr = this.e;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    decoderInputBufferArr[i3] = decoderInputBuffer;
                } finally {
                }
            }
            return true;
        }
    }

    @Override // androidx.media3.decoder.Decoder
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public final DecoderOutputBuffer d() {
        synchronized (this.b) {
            try {
                DecoderException decoderException = this.j;
                if (decoderException == null) {
                    if (this.d.isEmpty()) {
                        return null;
                    }
                    return (DecoderOutputBuffer) this.d.removeFirst();
                }
                throw decoderException;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final void f(DecoderInputBuffer decoderInputBuffer) {
        boolean z;
        synchronized (this.b) {
            try {
                DecoderException decoderException = this.j;
                if (decoderException == null) {
                    if (decoderInputBuffer == this.i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.e(z);
                    this.c.addLast(decoderInputBuffer);
                    if (!this.c.isEmpty() && this.h > 0) {
                        this.b.notify();
                    }
                    this.i = null;
                } else {
                    throw decoderException;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(DecoderOutputBuffer decoderOutputBuffer) {
        synchronized (this.b) {
            decoderOutputBuffer.f();
            DecoderOutputBuffer[] decoderOutputBufferArr = this.f;
            int i = this.h;
            this.h = i + 1;
            decoderOutputBufferArr[i] = decoderOutputBuffer;
            if (!this.c.isEmpty() && this.h > 0) {
                this.b.notify();
            }
        }
    }
}
