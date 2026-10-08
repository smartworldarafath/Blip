package androidx.media3.exoplayer.source;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.source.SampleQueue;
import androidx.media3.exoplayer.upstream.Allocation;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SampleDataQueue {
    public final Allocator a;
    public final int b;
    public final ParsableByteArray c;
    public AllocationNode d;
    public AllocationNode e;
    public AllocationNode f;
    public long g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AllocationNode implements Allocator.AllocationNode {
        public long a;
        public long b;
        public Allocation c;
        public AllocationNode d;

        public AllocationNode(int i, long j) {
            boolean z;
            if (this.c == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            this.a = j;
            this.b = j + i;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public final Allocation a() {
            Allocation allocation = this.c;
            allocation.getClass();
            return allocation;
        }

        @Override // androidx.media3.exoplayer.upstream.Allocator.AllocationNode
        public final Allocator.AllocationNode next() {
            AllocationNode allocationNode = this.d;
            if (allocationNode != null && allocationNode.c != null) {
                return allocationNode;
            }
            return null;
        }
    }

    public SampleDataQueue(Allocator allocator) {
        this.a = allocator;
        int e = allocator.e();
        this.b = e;
        this.c = new ParsableByteArray(32);
        AllocationNode allocationNode = new AllocationNode(e, 0L);
        this.d = allocationNode;
        this.e = allocationNode;
        this.f = allocationNode;
    }

    public static AllocationNode c(AllocationNode allocationNode, long j, ByteBuffer byteBuffer, int i) {
        while (j >= allocationNode.b) {
            allocationNode = allocationNode.d;
        }
        while (i > 0) {
            int min = Math.min(i, (int) (allocationNode.b - j));
            Allocation allocation = allocationNode.c;
            byteBuffer.put(allocation.a, ((int) (j - allocationNode.a)) + allocation.b, min);
            i -= min;
            j += min;
            if (j == allocationNode.b) {
                allocationNode = allocationNode.d;
            }
        }
        return allocationNode;
    }

    public static AllocationNode d(AllocationNode allocationNode, long j, byte[] bArr, int i) {
        while (j >= allocationNode.b) {
            allocationNode = allocationNode.d;
        }
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (allocationNode.b - j));
            Allocation allocation = allocationNode.c;
            System.arraycopy(allocation.a, ((int) (j - allocationNode.a)) + allocation.b, bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == allocationNode.b) {
                allocationNode = allocationNode.d;
            }
        }
        return allocationNode;
    }

    public static AllocationNode e(AllocationNode allocationNode, DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        AllocationNode allocationNode2;
        boolean z;
        if (decoderInputBuffer.e(1073741824)) {
            long j = sampleExtrasHolder.b;
            int i = 1;
            parsableByteArray.J(1);
            AllocationNode d = d(allocationNode, j, parsableByteArray.a, 1);
            long j2 = j + 1;
            byte b = parsableByteArray.a[0];
            if ((b & 128) != 0) {
                z = true;
            } else {
                z = false;
            }
            int i2 = b & Byte.MAX_VALUE;
            CryptoInfo cryptoInfo = decoderInputBuffer.l;
            byte[] bArr = cryptoInfo.a;
            if (bArr == null) {
                cryptoInfo.a = new byte[16];
            } else {
                Arrays.fill(bArr, (byte) 0);
            }
            allocationNode2 = d(d, j2, cryptoInfo.a, i2);
            long j3 = j2 + i2;
            if (z) {
                parsableByteArray.J(2);
                allocationNode2 = d(allocationNode2, j3, parsableByteArray.a, 2);
                j3 += 2;
                i = parsableByteArray.G();
            }
            int i3 = i;
            int[] iArr = cryptoInfo.d;
            if (iArr == null || iArr.length < i3) {
                iArr = new int[i3];
            }
            int[] iArr2 = iArr;
            int[] iArr3 = cryptoInfo.e;
            if (iArr3 == null || iArr3.length < i3) {
                iArr3 = new int[i3];
            }
            int[] iArr4 = iArr3;
            if (z) {
                int i4 = i3 * 6;
                parsableByteArray.J(i4);
                allocationNode2 = d(allocationNode2, j3, parsableByteArray.a, i4);
                j3 += i4;
                parsableByteArray.M(0);
                for (int i5 = 0; i5 < i3; i5++) {
                    iArr2[i5] = parsableByteArray.G();
                    iArr4[i5] = parsableByteArray.D();
                }
            } else {
                iArr2[0] = 0;
                iArr4[0] = sampleExtrasHolder.a - ((int) (j3 - sampleExtrasHolder.b));
            }
            TrackOutput.CryptoData cryptoData = sampleExtrasHolder.c;
            String str = Util.a;
            cryptoInfo.a(i3, iArr2, iArr4, cryptoData.b, cryptoInfo.a, cryptoData.a, cryptoData.c, cryptoData.d);
            long j4 = sampleExtrasHolder.b;
            int i6 = (int) (j3 - j4);
            sampleExtrasHolder.b = j4 + i6;
            sampleExtrasHolder.a -= i6;
        } else {
            allocationNode2 = allocationNode;
        }
        if (decoderInputBuffer.e(268435456)) {
            parsableByteArray.J(4);
            AllocationNode d2 = d(allocationNode2, sampleExtrasHolder.b, parsableByteArray.a, 4);
            int D = parsableByteArray.D();
            sampleExtrasHolder.b += 4;
            sampleExtrasHolder.a -= 4;
            decoderInputBuffer.h(D);
            AllocationNode c = c(d2, sampleExtrasHolder.b, decoderInputBuffer.m, D);
            sampleExtrasHolder.b += D;
            int i7 = sampleExtrasHolder.a - D;
            sampleExtrasHolder.a = i7;
            ByteBuffer byteBuffer = decoderInputBuffer.o;
            if (byteBuffer != null && byteBuffer.capacity() >= i7) {
                decoderInputBuffer.o.clear();
            } else {
                decoderInputBuffer.o = ByteBuffer.allocate(i7);
            }
            return c(c, sampleExtrasHolder.b, decoderInputBuffer.o, sampleExtrasHolder.a);
        }
        decoderInputBuffer.h(sampleExtrasHolder.a);
        return c(allocationNode2, sampleExtrasHolder.b, decoderInputBuffer.m, sampleExtrasHolder.a);
    }

    public final void a(long j) {
        AllocationNode allocationNode;
        if (j != -1) {
            while (true) {
                allocationNode = this.d;
                if (j < allocationNode.b) {
                    break;
                }
                this.a.c(allocationNode.c);
                AllocationNode allocationNode2 = this.d;
                allocationNode2.c = null;
                AllocationNode allocationNode3 = allocationNode2.d;
                allocationNode2.d = null;
                this.d = allocationNode3;
            }
            if (this.e.a < allocationNode.a) {
                this.e = allocationNode;
            }
        }
    }

    public final int b(int i) {
        AllocationNode allocationNode = this.f;
        if (allocationNode.c == null) {
            Allocation b = this.a.b();
            AllocationNode allocationNode2 = new AllocationNode(this.b, this.f.b);
            allocationNode.c = b;
            allocationNode.d = allocationNode2;
        }
        return Math.min(i, (int) (this.f.b - this.g));
    }
}
