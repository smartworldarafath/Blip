package io.sentry.cache.tape;

import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class QueueFile implements Closeable, Iterable<byte[]> {
    public static final byte[] t = new byte[4096];
    public RandomAccessFile j;
    public final File k;
    public long l;
    public int m;
    public Element n;
    public Element o;
    public final byte[] p = new byte[32];
    public int q = 0;
    public final int r;
    public boolean s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final File a;
        public int b = -1;

        public Builder(File file) {
            this.a = file;
        }

        public final QueueFile a() {
            File file = this.a;
            RandomAccessFile A = QueueFile.A(file);
            try {
                return new QueueFile(file, A, this.b);
            } catch (Throwable th) {
                A.close();
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Element {
        public static final Element c = new Element(0, 0);
        public final long a;
        public final int b;

        public Element(int i, long j) {
            this.a = j;
            this.b = i;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Element.class.getSimpleName());
            sb.append("[position=");
            sb.append(this.a);
            sb.append(", length=");
            return jb.i(sb, this.b, "]");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ElementIterator implements Iterator<byte[]> {
        public int j = 0;
        public long k;
        public int l;

        public ElementIterator() {
            this.k = QueueFile.this.n.a;
            this.l = QueueFile.this.q;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            QueueFile queueFile = QueueFile.this;
            if (!queueFile.s) {
                if (queueFile.q == this.l) {
                    if (this.j == queueFile.m) {
                        return false;
                    }
                    return true;
                }
                u2.d();
                return false;
            }
            u2.l("closed");
            return false;
        }

        @Override // java.util.Iterator
        public final byte[] next() {
            byte[] bArr = QueueFile.t;
            QueueFile queueFile = QueueFile.this;
            if (!queueFile.s) {
                if (queueFile.q == this.l) {
                    int i = queueFile.m;
                    if (i != 0) {
                        if (this.j < i) {
                            try {
                                Element E = queueFile.E(this.k);
                                int i2 = E.b;
                                long j = E.a;
                                byte[] bArr2 = new byte[i2];
                                long j2 = j + 4;
                                long g0 = queueFile.g0(j2);
                                this.k = g0;
                                if (!queueFile.Z(i2, g0, bArr2)) {
                                    this.j = queueFile.m;
                                    return bArr;
                                }
                                this.k = queueFile.g0(j2 + i2);
                                this.j++;
                                return bArr2;
                            } catch (IOException e) {
                                throw e;
                            } catch (OutOfMemoryError unused) {
                                queueFile.X();
                                this.j = queueFile.m;
                                return bArr;
                            }
                        }
                        k8.o();
                        return null;
                    }
                    k8.o();
                    return null;
                }
                u2.d();
                return null;
            }
            u2.l("closed");
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            QueueFile queueFile = QueueFile.this;
            if (queueFile.q == this.l) {
                if (queueFile.m != 0) {
                    if (this.j == 1) {
                        queueFile.S(1);
                        this.l = queueFile.q;
                        this.j--;
                        return;
                    }
                    fe.t("Removal is only permitted from the head.");
                    return;
                }
                k8.o();
                return;
            }
            u2.d();
        }
    }

    public QueueFile(File file, RandomAccessFile randomAccessFile, int i) {
        this.k = file;
        this.j = randomAccessFile;
        this.r = i;
        O();
    }

    public static RandomAccessFile A(File file) {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                randomAccessFile.writeInt(-2147483647);
                randomAccessFile.writeLong(4096L);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    k8.j("Rename failed!");
                    return null;
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        return new RandomAccessFile(file, "rwd");
    }

    public static int P(int i, byte[] bArr) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    public static long R(int i, byte[] bArr) {
        return ((bArr[i] & 255) << 56) + ((bArr[i + 1] & 255) << 48) + ((bArr[i + 2] & 255) << 40) + ((bArr[i + 3] & 255) << 32) + ((bArr[i + 4] & 255) << 24) + ((bArr[i + 5] & 255) << 16) + ((bArr[i + 6] & 255) << 8) + (bArr[i + 7] & 255);
    }

    public static void v0(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public static void x0(int i, long j, byte[] bArr) {
        bArr[i] = (byte) (j >> 56);
        bArr[i + 1] = (byte) (j >> 48);
        bArr[i + 2] = (byte) (j >> 40);
        bArr[i + 3] = (byte) (j >> 32);
        bArr[i + 4] = (byte) (j >> 24);
        bArr[i + 5] = (byte) (j >> 16);
        bArr[i + 6] = (byte) (j >> 8);
        bArr[i + 7] = (byte) j;
    }

    public final Element E(long j) {
        if (j != 0) {
            byte[] bArr = this.p;
            if (Z(4, j, bArr)) {
                return new Element(P(0, bArr), j);
            }
        }
        return Element.c;
    }

    public final void O() {
        this.j.seek(0L);
        RandomAccessFile randomAccessFile = this.j;
        byte[] bArr = this.p;
        randomAccessFile.readFully(bArr);
        this.l = R(4, bArr);
        this.m = P(12, bArr);
        long R = R(16, bArr);
        long R2 = R(24, bArr);
        long j = this.l;
        long length = this.j.length();
        long j2 = this.l;
        if (j <= length) {
            if (j2 > 32) {
                this.n = E(R);
                this.o = E(R2);
                return;
            } else {
                k8.j(q.k(new StringBuilder("File is corrupt; length stored in header ("), this.l, ") is invalid."));
                return;
            }
        }
        k8.l("File is truncated. Expected length: ", j2, ", Actual length: ", this.j.length());
    }

    public final void S(int i) {
        if (i >= 0) {
            if (i != 0) {
                int i2 = this.m;
                if (i == i2) {
                    clear();
                    return;
                }
                if (i2 != 0) {
                    if (i <= i2) {
                        Element element = this.n;
                        long j = element.a;
                        int i3 = element.b;
                        long j2 = j;
                        long j3 = 0;
                        for (int i4 = 0; i4 < i; i4++) {
                            j3 += i3 + 4;
                            j2 = g0(j2 + 4 + i3);
                            byte[] bArr = this.p;
                            if (Z(4, j2, bArr)) {
                                i3 = P(0, bArr);
                            } else {
                                return;
                            }
                        }
                        o0(this.l, this.m - i, j2, this.o.a);
                        this.m -= i;
                        this.q++;
                        this.n = new Element(i3, j2);
                        while (j3 > 0) {
                            int min = (int) Math.min(j3, 4096L);
                            a0(min, j, t);
                            long j4 = min;
                            j3 -= j4;
                            j += j4;
                        }
                        return;
                    }
                    u2.g(jb.i(jb.j("Cannot remove more elements (", i, ") than present in queue ("), this.m, ")."));
                    return;
                }
                k8.o();
                return;
            }
            return;
        }
        u2.g(jb.d("Cannot remove negative (", i, ") number of elements."));
    }

    public final void X() {
        this.j.close();
        File file = this.k;
        file.delete();
        this.j = A(file);
        O();
    }

    public final boolean Z(int i, long j, byte[] bArr) {
        try {
            long g0 = g0(j);
            long j2 = i + g0;
            long j3 = this.l;
            RandomAccessFile randomAccessFile = this.j;
            if (j2 <= j3) {
                randomAccessFile.seek(g0);
                this.j.readFully(bArr, 0, i);
                return true;
            }
            int i2 = (int) (j3 - g0);
            randomAccessFile.seek(g0);
            this.j.readFully(bArr, 0, i2);
            this.j.seek(32L);
            this.j.readFully(bArr, i2, i - i2);
            return true;
        } catch (EOFException unused) {
            X();
            return false;
        } catch (IOException e) {
            throw e;
        } catch (Throwable unused2) {
            X();
            return false;
        }
    }

    public final void a0(int i, long j, byte[] bArr) {
        long g0 = g0(j);
        long j2 = i + g0;
        long j3 = this.l;
        RandomAccessFile randomAccessFile = this.j;
        if (j2 <= j3) {
            randomAccessFile.seek(g0);
            this.j.write(bArr, 0, i);
            return;
        }
        int i2 = (int) (j3 - g0);
        randomAccessFile.seek(g0);
        this.j.write(bArr, 0, i2);
        this.j.seek(32L);
        this.j.write(bArr, i2, i - i2);
    }

    public final void clear() {
        if (!this.s) {
            o0(4096L, 0, 0L, 0L);
            this.j.seek(32L);
            this.j.write(t, 0, 4064);
            this.m = 0;
            Element element = Element.c;
            this.n = element;
            this.o = element;
            if (this.l > 4096) {
                this.j.setLength(4096L);
                this.j.getChannel().force(true);
            }
            this.l = 4096L;
            this.q++;
            return;
        }
        u2.l("closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.s = true;
        this.j.close();
    }

    public final long g0(long j) {
        long j2 = this.l;
        if (j < j2) {
            return j;
        }
        return (j + 32) - j2;
    }

    @Override // java.lang.Iterable
    public final Iterator<byte[]> iterator() {
        return new ElementIterator();
    }

    public final void o0(long j, int i, long j2, long j3) {
        this.j.seek(0L);
        byte[] bArr = this.p;
        v0(bArr, 0, -2147483647);
        x0(4, j, bArr);
        v0(bArr, 12, i);
        x0(16, j2, bArr);
        x0(24, j3, bArr);
        this.j.write(bArr, 0, 32);
    }

    public final String toString() {
        return "QueueFile{file=" + this.k + ", zero=true, length=" + this.l + ", size=" + this.m + ", first=" + this.n + ", last=" + this.o + '}';
    }
}
