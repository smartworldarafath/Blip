package androidx.media3.exoplayer.source;

import android.util.LongSparseArray;
import androidx.media3.common.Format;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.source.ProgressiveMediaPeriod;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MergingMetadataSampleStream implements SampleStream {
    public final SampleStream a;
    public final SampleStream b;
    public final FormatHolder c = new Object();
    public final DecoderInputBuffer d = new DecoderInputBuffer(1);
    public final LongSparseArray e = new LongSparseArray();
    public final int f;
    public byte[] g;
    public long h;
    public boolean i;
    public boolean j;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.exoplayer.FormatHolder, java.lang.Object] */
    public MergingMetadataSampleStream(SampleStream sampleStream, SampleStream sampleStream2, Format format) {
        int i;
        this.a = sampleStream;
        this.b = sampleStream2;
        int i2 = format.r;
        if (i2 != -1) {
            i = i2 + 2;
        } else {
            i = 18;
        }
        this.f = i;
        this.h = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final boolean a() {
        return ((ProgressiveMediaPeriod.SampleStreamImpl) this.a).a();
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int b() {
        return ((ProgressiveMediaPeriod.SampleStreamImpl) this.a).b();
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final void c() {
        ((ProgressiveMediaPeriod.SampleStreamImpl) this.a).c();
        if (!this.i) {
            ((ProgressiveMediaPeriod.SampleStreamImpl) this.b).c();
        }
    }

    @Override // androidx.media3.exoplayer.source.SampleStream
    public final int d(long j) {
        return ((ProgressiveMediaPeriod.SampleStreamImpl) this.a).d(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00fc A[SYNTHETIC] */
    @Override // androidx.media3.exoplayer.source.SampleStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int e(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        int size;
        byte[] bArr;
        byte[] bArr2;
        boolean z;
        int i2;
        int i3;
        int e = ((ProgressiveMediaPeriod.SampleStreamImpl) this.a).e(formatHolder, decoderInputBuffer, i);
        if (e == -4) {
            int i4 = 4;
            if (!decoderInputBuffer.e(4) && (i & 4) == 0) {
                boolean z2 = true;
                if ((i & 1) == 0 && !this.i) {
                    long j = decoderInputBuffer.n;
                    boolean z3 = this.j;
                    byte[] bArr3 = null;
                    LongSparseArray longSparseArray = this.e;
                    if (!z3) {
                        while (true) {
                            DecoderInputBuffer decoderInputBuffer2 = this.d;
                            decoderInputBuffer2.f();
                            ProgressiveMediaPeriod.SampleStreamImpl sampleStreamImpl = (ProgressiveMediaPeriod.SampleStreamImpl) this.b;
                            FormatHolder formatHolder2 = this.c;
                            int e2 = sampleStreamImpl.e(formatHolder2, decoderInputBuffer2, 0);
                            if (e2 == -3) {
                                break;
                            }
                            if (e2 != -5) {
                                if (decoderInputBuffer2.e(i4)) {
                                    this.j = z2;
                                    break;
                                }
                                long j2 = decoderInputBuffer2.n;
                                long j3 = this.h;
                                if (j3 != -9223372036854775807L && j2 < j3) {
                                    this.i = z2;
                                    longSparseArray.clear();
                                    this.g = bArr3;
                                }
                                this.h = j2;
                                ByteBuffer byteBuffer = decoderInputBuffer2.m;
                                if (!this.i && byteBuffer != null) {
                                    decoderInputBuffer2.i();
                                    Format format = formatHolder2.b;
                                    if (format != null) {
                                        List list = format.s;
                                        i2 = 0;
                                        for (int i5 = 0; i5 < list.size(); i5++) {
                                            i2 += ((byte[]) list.get(i5)).length;
                                        }
                                    } else {
                                        i2 = 0;
                                    }
                                    byte[] bArr4 = new byte[byteBuffer.remaining() + i2];
                                    if (format != null) {
                                        List list2 = format.s;
                                        int i6 = 0;
                                        i3 = 0;
                                        while (i6 < list2.size()) {
                                            byte[] bArr5 = (byte[]) list2.get(i6);
                                            System.arraycopy(bArr5, 0, bArr4, i3, bArr5.length);
                                            i3 += bArr5.length;
                                            i6++;
                                            z2 = z2;
                                        }
                                    } else {
                                        i3 = 0;
                                    }
                                    z = z2;
                                    byteBuffer.get(bArr4, i3, byteBuffer.remaining());
                                    longSparseArray.put(j2, bArr4);
                                    while (longSparseArray.size() > this.f) {
                                        longSparseArray.removeAt(0);
                                    }
                                } else {
                                    z = z2;
                                }
                                if (j2 > j) {
                                    break;
                                }
                                z2 = z;
                                i4 = 4;
                                bArr3 = null;
                            }
                        }
                        long j4 = decoderInputBuffer.n;
                        size = longSparseArray.size() - 1;
                        while (true) {
                            if (size < 0) {
                                if (longSparseArray.keyAt(size) <= j4) {
                                    bArr = (byte[]) longSparseArray.valueAt(size);
                                    break;
                                }
                                size--;
                            } else {
                                bArr = null;
                                break;
                            }
                        }
                        if (bArr != null) {
                            this.g = bArr;
                        }
                        bArr2 = this.g;
                        if (bArr2 != null) {
                            int length = bArr2.length;
                            ByteBuffer byteBuffer2 = decoderInputBuffer.o;
                            if (byteBuffer2 != null && byteBuffer2.capacity() >= length) {
                                decoderInputBuffer.o.clear();
                            } else {
                                decoderInputBuffer.o = ByteBuffer.allocate(length);
                            }
                            decoderInputBuffer.o.put(bArr2);
                            decoderInputBuffer.j = 268435456 | decoderInputBuffer.j;
                            return e;
                        }
                    }
                    long j42 = decoderInputBuffer.n;
                    size = longSparseArray.size() - 1;
                    while (true) {
                        if (size < 0) {
                        }
                        size--;
                    }
                    if (bArr != null) {
                    }
                    bArr2 = this.g;
                    if (bArr2 != null) {
                    }
                }
            }
        }
        return e;
    }
}
