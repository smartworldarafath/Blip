package androidx.compose.ui.spatial;

import androidx.compose.ui.internal.InlineClassHelperKt;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RectList {
    public long[] a;
    public long[] b;
    public int c;

    /* JADX WARN: Multi-variable type inference failed */
    public final int a(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, boolean z2, boolean z3) {
        Object[] objArr;
        int i8 = i & 33554431;
        long[] jArr = this.a;
        int i9 = this.c;
        int i10 = i9 + 3;
        this.c = i10;
        int length = jArr.length;
        if (length <= i10) {
            int max = Math.max(length * 2, i10);
            this.a = Arrays.copyOf(jArr, max);
            this.b = Arrays.copyOf(this.b, max);
        }
        long[] jArr2 = this.a;
        jArr2[i9] = (i2 << 32) | (i3 & 4294967295L);
        jArr2[i9 + 1] = (i4 << 32) | (i5 & 4294967295L);
        boolean z4 = false;
        int i11 = i6 & 33554431;
        jArr2[i9 + 2] = ((z3 ? 1L : 0L) << 63) | ((z2 ? 1L : 0L) << 62) | ((z ? 1L : 0L) << 61) | 1152921504606846976L | (Math.min(0, 1023) << 50) | (i11 << 25) | (i & 33554431);
        if (i6 == -1) {
            return i9;
        }
        if (i7 != -4) {
            objArr = true;
        } else {
            objArr = false;
        }
        if (objArr == false) {
            InlineClassHelperKt.b("Inserted child " + i8 + " without valid parent index");
        }
        int i12 = i7 + 2;
        long j = jArr2[i12];
        if ((33554431 & ((int) j)) == i11) {
            z4 = true;
        }
        if (!z4) {
            InlineClassHelperKt.b("Inserted child " + i8 + " without valid parent index or parent " + i11 + " not found");
        }
        int i13 = RectListKt.b;
        jArr2[i12] = ((-1151795604700004353L) & j) | (Math.min((i9 - i7) / 3, 1023) << 50);
        return i9;
    }

    public final void b(int i, int i2, int i3, long j) {
        int i4;
        long j2;
        char c;
        int i5;
        char c2 = '2';
        if ((((int) (j >> 50)) & 1023) > 0) {
            int i6 = RectListKt.b;
            long j3 = -1125899873288193L;
            int i7 = 33554431;
            char c3 = 25;
            long[] jArr = this.a;
            long[] jArr2 = this.b;
            int i8 = this.c;
            jArr2[0] = (j & (-1125899873288193L)) | ((i & 33554431) << 25);
            int i9 = 1;
            while (i9 > 0) {
                i9--;
                long j4 = jArr2[i9];
                int i10 = ((int) j4) & i7;
                int i11 = ((int) (j4 >> c3)) & i7;
                int i12 = ((int) (j4 >> c2)) & 1023;
                if (i12 == 1023) {
                    i4 = i8;
                } else {
                    i4 = (i12 * 3) + i11;
                }
                if (i11 >= 0) {
                    while (i11 < i8 - 2 && i11 <= i4) {
                        int i13 = i11 + 2;
                        long j5 = jArr[i13];
                        char c4 = c2;
                        int i14 = i7;
                        if ((((int) (j5 >> c3)) & i14) == i10) {
                            long j6 = jArr[i11];
                            int i15 = i11 + 1;
                            j2 = j3;
                            long j7 = jArr[i15];
                            c = c3;
                            i5 = i4;
                            jArr[i11] = ((((int) j6) + i3) & 4294967295L) | ((((int) (j6 >> 32)) + i2) << 32);
                            jArr[i15] = ((((int) j7) + i3) & 4294967295L) | ((((int) (j7 >> 32)) + i2) << 32);
                            jArr[i13] = (((j5 >> 63) & 1) << 60) | j5;
                            if ((((int) (j5 >> c4)) & 1023) > 0) {
                                int i16 = RectListKt.b;
                                jArr2[i9] = (j5 & j2) | (((i11 + 3) & i14) << c);
                                i9++;
                            }
                        } else {
                            j2 = j3;
                            c = c3;
                            i5 = i4;
                        }
                        i11 += 3;
                        i4 = i5;
                        c3 = c;
                        i7 = i14;
                        c2 = c4;
                        j3 = j2;
                    }
                    c3 = c3;
                    i7 = i7;
                    c2 = c2;
                    j3 = j3;
                } else {
                    return;
                }
            }
        }
    }
}
