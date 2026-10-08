package io.sentry.cache.tape;

import defpackage.u2;
import io.sentry.cache.tape.ObjectQueue;
import io.sentry.cache.tape.QueueFile;
import io.sentry.d;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FileObjectQueue<T> extends ObjectQueue<T> {
    public final QueueFile j;
    public final DirectByteArrayOutputStream k = new ByteArrayOutputStream();
    public final ObjectQueue.Converter l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DirectByteArrayOutputStream extends ByteArrayOutputStream {
        public final byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class QueueFileIterator implements Iterator<T> {
        public final Iterator j;

        public QueueFileIterator(Iterator it) {
            this.j = it;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return ((QueueFile.ElementIterator) this.j).hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            return FileObjectQueue.this.l.b((byte[]) ((QueueFile.ElementIterator) this.j).next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            ((QueueFile.ElementIterator) this.j).remove();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.cache.tape.FileObjectQueue$DirectByteArrayOutputStream, java.io.ByteArrayOutputStream] */
    public FileObjectQueue(QueueFile queueFile, ObjectQueue.Converter converter) {
        this.j = queueFile;
        this.l = converter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006d, code lost:
    
        if (r8 >= r4) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        r8 = r8 + r6;
        r6 = r6 << 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
    
        if (r8 < r4) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0077, code lost:
    
        r3.j.setLength(r6);
        r3.j.getChannel().force(true);
        r4 = r3.g0((r3.o.a + r26) + r4.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009b, code lost:
    
        if (r4 > r3.n.a) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009d, code lost:
    
        r8 = r3.j.getChannel();
        r8.position(r3.l);
        r21 = r4 - r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b6, code lost:
    
        if (r8.transferTo(32, r21, r8) != r21) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c0, code lost:
    
        throw new java.lang.AssertionError("Copied insufficient number of bytes!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c3, code lost:
    
        r9 = r3.o.a;
        r4 = r3.n.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00cd, code lost:
    
        if (r9 >= r4) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00cf, code lost:
    
        r9 = (r3.l + r9) - r16;
        r4 = r6;
        r3.o0(r4, r3.m, r4, r9);
        r3.o = new io.sentry.cache.tape.QueueFile.Element(r3.o.b, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f6, code lost:
    
        r3.l = r4;
        r6 = r16;
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fe, code lost:
    
        if (r4 <= 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0100, code lost:
    
        r8 = (int) java.lang.Math.min(r4, 4096L);
        r3.a0(r8, r6, io.sentry.cache.tape.QueueFile.t);
        r8 = r8;
        r4 = r4 - r8;
        r6 = r6 + r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00eb, code lost:
    
        r4 = r6;
        r3.o0(r4, r3.m, r4, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c1, code lost:
    
        r21 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0113, code lost:
    
        if (r3.m != 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0115, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0118, code lost:
    
        if (r12 == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x011a, code lost:
    
        r9 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x012c, code lost:
    
        r13 = new io.sentry.cache.tape.QueueFile.Element(r1, r9);
        io.sentry.cache.tape.QueueFile.v0(r0, 0, r1);
        r3.a0(4, r9, r0);
        r3.a0(r1, r9 + r26, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x013d, code lost:
    
        if (r12 == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x013f, code lost:
    
        r7 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0146, code lost:
    
        r3.o0(r3.l, r3.m + 1, r7, r9);
        r3.o = r13;
        r3.m++;
        r3.q++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x015b, code lost:
    
        if (r12 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x015d, code lost:
    
        r3.n = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0141, code lost:
    
        r7 = r3.n.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011d, code lost:
    
        r9 = r3.g0((r3.o.a + r26) + r4.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0117, code lost:
    
        r12 = false;
     */
    @Override // io.sentry.cache.tape.ObjectQueue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A(Object obj) {
        long j;
        long j2;
        long j3;
        DirectByteArrayOutputStream directByteArrayOutputStream = this.k;
        directByteArrayOutputStream.reset();
        this.l.a(obj, directByteArrayOutputStream);
        byte[] a = directByteArrayOutputStream.a();
        int size = directByteArrayOutputStream.size();
        QueueFile queueFile = this.j;
        queueFile.getClass();
        byte[] bArr = queueFile.p;
        if (a != null) {
            if (size >= 0 && size <= a.length) {
                if (!queueFile.s) {
                    int i = queueFile.r;
                    if (i != -1 && queueFile.m == i) {
                        queueFile.S(1);
                    }
                    long j4 = size + 4;
                    long j5 = queueFile.l;
                    if (queueFile.m == 0) {
                        j = 4;
                        j3 = 32;
                        j2 = 32;
                    } else {
                        QueueFile.Element element = queueFile.o;
                        long j6 = element.a;
                        j = 4;
                        long j7 = queueFile.n.a;
                        int i2 = element.b;
                        if (j6 >= j7) {
                            j3 = (j6 - j7) + 4 + i2 + 32;
                            j2 = 32;
                        } else {
                            j2 = 32;
                            j3 = (((j6 + 4) + i2) + j5) - j7;
                        }
                    }
                    long j8 = j5 - j3;
                } else {
                    u2.l("closed");
                }
            } else {
                throw new IndexOutOfBoundsException();
            }
        } else {
            d.f("data == null");
        }
    }

    @Override // io.sentry.cache.tape.ObjectQueue
    public final void R(int i) {
        this.j.S(i);
    }

    @Override // io.sentry.cache.tape.ObjectQueue
    public final void clear() {
        this.j.clear();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        QueueFile queueFile = this.j;
        queueFile.getClass();
        return new QueueFileIterator(new QueueFile.ElementIterator());
    }

    @Override // io.sentry.cache.tape.ObjectQueue
    public final int size() {
        return this.j.m;
    }

    public final String toString() {
        return "FileObjectQueue{queueFile=" + this.j + '}';
    }
}
