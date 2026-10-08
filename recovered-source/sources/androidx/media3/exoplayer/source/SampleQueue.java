package androidx.media3.exoplayer.source;

import android.util.SparseArray;
import androidx.media3.common.DataReader;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.source.SampleDataQueue;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.f7;
import java.io.EOFException;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SampleQueue implements TrackOutput {
    public Format C;
    public boolean E;
    public final SampleDataQueue a;
    public final DrmSessionManager d;
    public final DrmSessionEventListener.EventDispatcher e;
    public UpstreamFormatChangedListener f;
    public Format g;
    public DrmSession h;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean z;
    public final SampleExtrasHolder b = new Object();
    public int i = 1000;
    public long[] j = new long[1000];
    public long[] k = new long[1000];
    public long[] n = new long[1000];
    public int[] m = new int[1000];
    public int[] l = new int[1000];
    public TrackOutput.CryptoData[] o = new TrackOutput.CryptoData[1000];
    public final SpannedData c = new SpannedData(new Object());
    public long t = Long.MIN_VALUE;
    public long v = Long.MIN_VALUE;
    public long w = Long.MIN_VALUE;
    public boolean B = true;
    public boolean A = true;
    public boolean D = true;
    public long u = Long.MIN_VALUE;
    public int x = -1;
    public int y = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SampleExtrasHolder {
        public int a;
        public long b;
        public TrackOutput.CryptoData c;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SharedSampleMetadata {
        public final Format a;
        public final DrmSessionManager.DrmSessionReference b;

        public SharedSampleMetadata(Format format, DrmSessionManager.DrmSessionReference drmSessionReference) {
            this.a = format;
            this.b = drmSessionReference;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface UpstreamFormatChangedListener {
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.exoplayer.source.SampleQueue$SampleExtrasHolder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.media3.exoplayer.source.d, java.lang.Object] */
    public SampleQueue(Allocator allocator, DrmSessionManager drmSessionManager, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.d = drmSessionManager;
        this.e = eventDispatcher;
        this.a = new SampleDataQueue(allocator);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final int a(DataReader dataReader, int i, boolean z) {
        SampleDataQueue sampleDataQueue = this.a;
        int b = sampleDataQueue.b(i);
        SampleDataQueue.AllocationNode allocationNode = sampleDataQueue.f;
        Allocation allocation = allocationNode.c;
        int read = dataReader.read(allocation.a, ((int) (sampleDataQueue.g - allocationNode.a)) + allocation.b, b);
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        long j = sampleDataQueue.g + read;
        sampleDataQueue.g = j;
        SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.f;
        if (j == allocationNode2.b) {
            sampleDataQueue.f = allocationNode2.d;
        }
        return read;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void b(ParsableByteArray parsableByteArray, int i, int i2) {
        while (true) {
            SampleDataQueue sampleDataQueue = this.a;
            if (i > 0) {
                int b = sampleDataQueue.b(i);
                SampleDataQueue.AllocationNode allocationNode = sampleDataQueue.f;
                Allocation allocation = allocationNode.c;
                parsableByteArray.k(allocation.a, ((int) (sampleDataQueue.g - allocationNode.a)) + allocation.b, b);
                i -= b;
                long j = sampleDataQueue.g + b;
                sampleDataQueue.g = j;
                SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.f;
                if (j == allocationNode2.b) {
                    sampleDataQueue.f = allocationNode2.d;
                }
            } else {
                sampleDataQueue.getClass();
                return;
            }
        }
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void e(Format format) {
        boolean z;
        boolean z2;
        String str;
        boolean z3;
        synchronized (this) {
            z = false;
            try {
                this.B = false;
                if (!Objects.equals(format, this.C)) {
                    if (this.c.b.size() == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        SparseArray sparseArray = this.c.b;
                        if (((SharedSampleMetadata) sparseArray.valueAt(sparseArray.size() - 1)).a.equals(format)) {
                            SparseArray sparseArray2 = this.c.b;
                            this.C = ((SharedSampleMetadata) sparseArray2.valueAt(sparseArray2.size() - 1)).a;
                            boolean z4 = this.D;
                            Format format2 = this.C;
                            str = format2.p;
                            String str2 = format2.l;
                            if (MimeTypes.g(str) != 1 && MimeTypes.a(str, str2)) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            this.D = z4 & z3;
                            this.E = false;
                            z = true;
                        }
                    }
                    this.C = format;
                    boolean z42 = this.D;
                    Format format22 = this.C;
                    str = format22.p;
                    String str22 = format22.l;
                    if (MimeTypes.g(str) != 1) {
                    }
                    z3 = false;
                    this.D = z42 & z3;
                    this.E = false;
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.f;
        if (upstreamFormatChangedListener != null && z) {
            ProgressiveMediaPeriod progressiveMediaPeriod = (ProgressiveMediaPeriod) upstreamFormatChangedListener;
            progressiveMediaPeriod.z.post(progressiveMediaPeriod.x);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x010e, code lost:
    
        if (((androidx.media3.exoplayer.source.SampleQueue.SharedSampleMetadata) r0.valueAt(r0.size() - 1)).a.equals(r16.C) == false) goto L74;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.media3.extractor.TrackOutput
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
        boolean z;
        int i4;
        boolean z2;
        boolean z3;
        boolean z4;
        int i5;
        boolean z5;
        f7 f7Var;
        boolean z6;
        boolean z7;
        boolean z8;
        int i6 = i & 1;
        if (i6 != 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.A) {
            if (z) {
                this.A = false;
            } else {
                return;
            }
        }
        if (this.D) {
            if (j < this.t) {
                return;
            }
            if (i6 == 0) {
                if (!this.E) {
                    Log.f("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.C);
                    this.E = true;
                }
                i4 = i | 1;
                long j2 = (this.a.g - i2) - i3;
                synchronized (this) {
                    try {
                        int i7 = this.p;
                        if (i7 > 0) {
                            if (this.k[k(i7 - 1)] + this.l[r9] <= j2) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            Preconditions.e(z8);
                        }
                        int i8 = 536870912 & i4;
                        if (i8 != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.z = z2;
                        this.w = Math.max(this.w, j);
                        int i9 = this.q;
                        int i10 = this.p;
                        int i11 = i9 + i10;
                        long j3 = this.u;
                        if (j3 != Long.MIN_VALUE && this.x == -1) {
                            if (j < j3) {
                                this.y = -1;
                            } else {
                                if (this.y == -1) {
                                    this.y = i11;
                                }
                                int i12 = this.y;
                                int i13 = (i11 - i12) + 1;
                                if ((i4 & 1) != 0) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (i8 != 0) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                Format format = this.C;
                                if (format == null || (i5 = format.r) == -1) {
                                    i5 = 16;
                                }
                                if (i13 >= i5 + 1 || z3 || z4) {
                                    this.x = i12;
                                    this.y = -1;
                                }
                            }
                        }
                        int k = k(i10);
                        this.n[k] = j;
                        this.k[k] = j2;
                        this.l[k] = i2;
                        this.m[k] = i4;
                        this.o[k] = cryptoData;
                        this.j[k] = 0;
                        if (this.c.b.size() == 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (!z5) {
                            SparseArray sparseArray = this.c.b;
                        }
                        Format format2 = this.C;
                        format2.getClass();
                        if (this.d != null) {
                            f7Var = DrmSessionManager.DrmSessionReference.c;
                        } else {
                            f7Var = DrmSessionManager.DrmSessionReference.c;
                        }
                        SpannedData spannedData = this.c;
                        int i14 = this.q + this.p;
                        SharedSampleMetadata sharedSampleMetadata = new SharedSampleMetadata(format2, f7Var);
                        SparseArray sparseArray2 = spannedData.b;
                        if (spannedData.a == -1) {
                            if (sparseArray2.size() == 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            Preconditions.n(z7);
                            spannedData.a = 0;
                        }
                        if (sparseArray2.size() > 0) {
                            int keyAt = sparseArray2.keyAt(sparseArray2.size() - 1);
                            if (i14 >= keyAt) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            Preconditions.e(z6);
                            if (keyAt == i14) {
                                spannedData.c.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
                            }
                        }
                        sparseArray2.append(i14, sharedSampleMetadata);
                        int i15 = this.p + 1;
                        this.p = i15;
                        int i16 = this.i;
                        if (i15 == i16) {
                            int i17 = i16 + 1000;
                            long[] jArr = new long[i17];
                            long[] jArr2 = new long[i17];
                            long[] jArr3 = new long[i17];
                            int[] iArr = new int[i17];
                            int[] iArr2 = new int[i17];
                            TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i17];
                            int i18 = this.r;
                            int i19 = i16 - i18;
                            System.arraycopy(this.k, i18, jArr2, 0, i19);
                            System.arraycopy(this.n, this.r, jArr3, 0, i19);
                            System.arraycopy(this.m, this.r, iArr, 0, i19);
                            System.arraycopy(this.l, this.r, iArr2, 0, i19);
                            System.arraycopy(this.o, this.r, cryptoDataArr, 0, i19);
                            System.arraycopy(this.j, this.r, jArr, 0, i19);
                            int i20 = this.r;
                            System.arraycopy(this.k, 0, jArr2, i19, i20);
                            System.arraycopy(this.n, 0, jArr3, i19, i20);
                            System.arraycopy(this.m, 0, iArr, i19, i20);
                            System.arraycopy(this.l, 0, iArr2, i19, i20);
                            System.arraycopy(this.o, 0, cryptoDataArr, i19, i20);
                            System.arraycopy(this.j, 0, jArr, i19, i20);
                            this.k = jArr2;
                            this.n = jArr3;
                            this.m = iArr;
                            this.l = iArr2;
                            this.o = cryptoDataArr;
                            this.j = jArr;
                            this.r = 0;
                            this.i = i17;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
        }
        i4 = i;
        long j22 = (this.a.g - i2) - i3;
        synchronized (this) {
        }
    }

    public final long h(int i) {
        long j = this.v;
        int i2 = 0;
        long j2 = Long.MIN_VALUE;
        if (i != 0) {
            int k = k(i - 1);
            for (int i3 = 0; i3 < i; i3++) {
                j2 = Math.max(j2, this.n[k]);
                if ((this.m[k] & 1) != 0) {
                    break;
                }
                k--;
                if (k == -1) {
                    k = this.i - 1;
                }
            }
        }
        this.v = Math.max(j, j2);
        this.p -= i;
        int i4 = this.q + i;
        this.q = i4;
        int i5 = this.r + i;
        this.r = i5;
        int i6 = this.i;
        if (i5 >= i6) {
            this.r = i5 - i6;
        }
        int i7 = this.s - i;
        this.s = i7;
        if (i7 < 0) {
            this.s = 0;
        }
        SpannedData spannedData = this.c;
        SparseArray sparseArray = spannedData.b;
        while (i2 < sparseArray.size() - 1) {
            int i8 = i2 + 1;
            if (i4 < sparseArray.keyAt(i8)) {
                break;
            }
            spannedData.c.accept(sparseArray.valueAt(i2));
            sparseArray.removeAt(i2);
            int i9 = spannedData.a;
            if (i9 > 0) {
                spannedData.a = i9 - 1;
            }
            i2 = i8;
        }
        if (this.p == 0) {
            int i10 = this.r;
            if (i10 == 0) {
                i10 = this.i;
            }
            return this.k[i10 - 1] + this.l[r10];
        }
        return this.k[this.r];
    }

    public final void i() {
        long h;
        SampleDataQueue sampleDataQueue = this.a;
        synchronized (this) {
            int i = this.p;
            if (i == 0) {
                h = -1;
            } else {
                h = h(i);
            }
        }
        sampleDataQueue.a(h);
    }

    public final int j(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.n[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.m[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.i) {
                i = 0;
            }
        }
        return i3;
    }

    public final int k(int i) {
        int i2 = this.r + i;
        int i3 = this.i;
        if (i2 < i3) {
            return i2;
        }
        return i2 - i3;
    }

    public final synchronized Format l() {
        Format format;
        if (this.B) {
            format = null;
        } else {
            format = this.C;
        }
        return format;
    }

    public final synchronized boolean m(boolean z) {
        boolean z2;
        Format format;
        boolean z3;
        int i;
        try {
            int i2 = this.q;
            int i3 = this.s;
            int i4 = i2 + i3;
            int i5 = this.x;
            boolean z4 = true;
            if (i5 != -1 && i4 >= i5) {
                return true;
            }
            if (i3 != this.p) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                if (i5 == -1 && (i = this.y) != -1 && i2 + i3 >= i) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!z3) {
                    if (((SharedSampleMetadata) this.c.a(i4)).a != this.g) {
                        return true;
                    }
                    return n(k(this.s));
                }
            }
            if (!z && !this.z && ((format = this.C) == null || format == this.g)) {
                z4 = false;
            }
            return z4;
        } finally {
        }
    }

    public final boolean n(int i) {
        DrmSession drmSession = this.h;
        if (drmSession != null && drmSession.getState() != 4) {
            if ((this.m[i] & 1073741824) != 0 || !this.h.c()) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final void o(Format format, FormatHolder formatHolder) {
        boolean z;
        DrmInitData drmInitData;
        Format format2;
        Format format3 = this.g;
        if (format3 == null) {
            z = true;
        } else {
            z = false;
        }
        if (format3 == null) {
            drmInitData = null;
        } else {
            drmInitData = format3.t;
        }
        this.g = format;
        DrmInitData drmInitData2 = format.t;
        DrmSessionManager drmSessionManager = this.d;
        if (drmSessionManager != null) {
            int b = drmSessionManager.b(format);
            Format.Builder a = format.a();
            a.S = b;
            format2 = new Format(a);
        } else {
            format2 = format;
        }
        formatHolder.b = format2;
        formatHolder.a = this.h;
        if (drmSessionManager != null) {
            if (z || !Objects.equals(drmInitData, drmInitData2)) {
                DrmSession drmSession = this.h;
                DrmSessionEventListener.EventDispatcher eventDispatcher = this.e;
                DrmSession a2 = drmSessionManager.a(eventDispatcher, format);
                this.h = a2;
                formatHolder.a = a2;
                if (drmSession != null) {
                    drmSession.d(eventDispatcher);
                }
            }
        }
    }

    public final void p(boolean z) {
        boolean z2;
        SampleDataQueue sampleDataQueue = this.a;
        Allocator allocator = sampleDataQueue.a;
        SampleDataQueue.AllocationNode allocationNode = sampleDataQueue.d;
        if (allocationNode.c != null) {
            allocator.a(allocationNode);
            allocationNode.c = null;
            allocationNode.d = null;
        }
        SampleDataQueue.AllocationNode allocationNode2 = sampleDataQueue.d;
        int i = sampleDataQueue.b;
        if (allocationNode2.c == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.n(z2);
        allocationNode2.a = 0L;
        allocationNode2.b = i;
        SampleDataQueue.AllocationNode allocationNode3 = sampleDataQueue.d;
        sampleDataQueue.e = allocationNode3;
        sampleDataQueue.f = allocationNode3;
        sampleDataQueue.g = 0L;
        allocator.d();
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.x = -1;
        this.y = -1;
        this.A = true;
        this.t = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = Long.MIN_VALUE;
        this.z = false;
        SpannedData spannedData = this.c;
        SparseArray sparseArray = spannedData.b;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            spannedData.c.accept(sparseArray.valueAt(i2));
        }
        spannedData.a = -1;
        sparseArray.clear();
        if (z) {
            this.C = null;
            this.B = true;
            this.D = true;
        }
    }

    public final synchronized boolean q(long j, boolean z) {
        Throwable th;
        SampleQueue sampleQueue;
        boolean z2;
        SampleQueue sampleQueue2;
        long j2;
        int j3;
        try {
            synchronized (this) {
                try {
                    try {
                        synchronized (this) {
                            try {
                                this.s = 0;
                                SampleDataQueue sampleDataQueue = this.a;
                                sampleDataQueue.e = sampleDataQueue.d;
                                try {
                                } catch (Throwable th2) {
                                    th = th2;
                                    sampleQueue = this;
                                    th = th;
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                sampleQueue = this;
                                while (true) {
                                    try {
                                        try {
                                            break;
                                        } catch (Throwable th4) {
                                            th = th4;
                                            th = th;
                                            throw th;
                                        }
                                    } catch (Throwable th5) {
                                        th = th5;
                                    }
                                }
                                throw th;
                            }
                        }
                        return false;
                    } catch (Throwable th6) {
                        th = th6;
                        sampleQueue = this;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }
            int k = k(0);
            long j4 = this.u;
            long j5 = this.w;
            if (j4 != Long.MIN_VALUE) {
                try {
                    j5 = Math.min(j5, j4);
                } catch (Throwable th8) {
                    th = th8;
                    sampleQueue = this;
                    throw th;
                }
            }
            int i = this.s;
            int i2 = this.p;
            if (i != i2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2 || j < this.n[k] || (j > j5 && !z)) {
                return false;
            }
            if (this.D) {
                j3 = i2 - i;
                int i3 = 0;
                while (true) {
                    if (i3 < j3) {
                        if (this.n[k] >= j) {
                            j3 = i3;
                            break;
                        }
                        k++;
                        if (k == this.i) {
                            k = 0;
                        }
                        i3++;
                    } else if (!z) {
                        j3 = -1;
                    }
                }
                sampleQueue2 = this;
                j2 = j;
            } else {
                sampleQueue2 = this;
                j2 = j;
                j3 = sampleQueue2.j(k, i2 - i, j2, true);
            }
            if (j3 == -1) {
                return false;
            }
            sampleQueue2.t = j2;
            sampleQueue2.s += j3;
            return true;
        } catch (Throwable th9) {
            th = th9;
            sampleQueue = this;
            th = th;
            throw th;
        }
    }
}
