package kotlinx.io;

import defpackage.q;
import defpackage.u2;
import java.io.EOFException;
import java.io.Flushable;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Buffer implements AutoCloseable, Flushable {
    public Segment j;
    public Segment k;
    public long l;

    public final void a() {
        int i;
        int i2;
        Segment segment = this.j;
        segment.getClass();
        Segment segment2 = segment.e;
        this.j = segment2;
        if (segment2 == null) {
            this.k = null;
        } else {
            segment2.f = null;
        }
        segment.e = null;
        Segment segment3 = SegmentPool.a;
        if (segment.f == null) {
            AtomicReferenceArray atomicReferenceArray = SegmentPool.f;
            int id = (int) ((SegmentPool.b - 1) & Thread.currentThread().getId());
            segment.b = 0;
            segment.d = true;
            while (true) {
                Segment segment4 = (Segment) atomicReferenceArray.get(id);
                if (segment4 != segment3) {
                    if (segment4 != null) {
                        i = segment4.c;
                    } else {
                        i = 0;
                    }
                    if (i >= 65536) {
                        if (SegmentPool.d > 0) {
                            segment.b = 0;
                            segment.d = true;
                            int id2 = (int) ((SegmentPool.c - 1) & Thread.currentThread().getId());
                            AtomicReferenceArray atomicReferenceArray2 = SegmentPool.g;
                            int i3 = 0;
                            while (true) {
                                Segment segment5 = (Segment) atomicReferenceArray2.get(id2);
                                if (segment5 != segment3) {
                                    if (segment5 != null) {
                                        i2 = segment5.c;
                                    } else {
                                        i2 = 0;
                                    }
                                    int i4 = i2 + 8192;
                                    if (i4 > SegmentPool.e) {
                                        int i5 = SegmentPool.c;
                                        if (i3 < i5) {
                                            i3++;
                                            id2 = (id2 + 1) & (i5 - 1);
                                        } else {
                                            return;
                                        }
                                    } else {
                                        segment.e = segment5;
                                        segment.c = i4;
                                        while (!atomicReferenceArray2.compareAndSet(id2, segment5, segment)) {
                                            if (atomicReferenceArray2.get(id2) != segment5) {
                                                break;
                                            }
                                        }
                                        return;
                                    }
                                }
                            }
                        } else {
                            return;
                        }
                    } else {
                        segment.e = segment4;
                        segment.c = i + 8192;
                        while (!atomicReferenceArray.compareAndSet(id, segment4, segment)) {
                            if (atomicReferenceArray.get(id) != segment4) {
                                break;
                            }
                        }
                        return;
                    }
                }
            }
        } else {
            u2.g("Failed requirement.");
        }
    }

    public final byte readByte() {
        Segment segment = this.j;
        if (segment != null) {
            int i = segment.c;
            int i2 = segment.b;
            int i3 = i - i2;
            if (i3 == 0) {
                a();
                return readByte();
            }
            byte[] bArr = segment.a;
            segment.b = i2 + 1;
            byte b = bArr[i2];
            this.l--;
            if (i3 == 1) {
                a();
            }
            return b;
        }
        throw new EOFException(q.k(new StringBuilder("Buffer doesn't contain required number of bytes (size: "), this.l, ", required: 1)"));
    }

    public final String toString() {
        int i;
        long j = this.l;
        if (j == 0) {
            return "Buffer(size=0)";
        }
        int min = (int) Math.min(64L, j);
        int i2 = min * 2;
        if (this.l > 64) {
            i = 1;
        } else {
            i = 0;
        }
        StringBuilder sb = new StringBuilder(i2 + i);
        int i3 = 0;
        for (Segment segment = this.j; segment != null; segment = segment.e) {
            int i4 = 0;
            while (i3 < min) {
                int i5 = segment.c;
                int i6 = segment.b;
                if (i4 < i5 - i6) {
                    int i7 = i4 + 1;
                    byte b = segment.a[i6 + i4];
                    i3++;
                    char[] cArr = _UtilKt.a;
                    sb.append(cArr[(b >> 4) & 15]);
                    sb.append(cArr[b & 15]);
                    i4 = i7;
                }
            }
        }
        if (this.l > 64) {
            sb.append((char) 8230);
        }
        return "Buffer(size=" + this.l + " hex=" + ((Object) sb) + ')';
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.Flushable
    public final void flush() {
    }
}
