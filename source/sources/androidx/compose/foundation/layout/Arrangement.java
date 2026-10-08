package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.jb;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Arrangement {
    public static final Arrangement$Start$1 a = new Object();
    public static final Arrangement$Top$1 b = new Object();
    public static final Arrangement$Center$1 c = new Object();
    public static final Arrangement$SpaceBetween$1 d = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Absolute {
        public static final Arrangement$Absolute$Left$1 a = new Object();
        public static final Arrangement$Absolute$Right$1 b = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Horizontal {
        default float a() {
            return 0.0f;
        }

        void c(Density density, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SpacedAligned implements Horizontal, Vertical {
        public final float a;
        public final boolean b;
        public final SpacingAlignmentCalculator c;
        public final float d;

        public SpacedAligned(float f, boolean z, SpacingAlignmentCalculator spacingAlignmentCalculator) {
            this.a = f;
            this.b = z;
            this.c = spacingAlignmentCalculator;
            this.d = f;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal, androidx.compose.foundation.layout.Arrangement.Vertical
        public final float a() {
            return this.d;
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Vertical
        public final void b(int i, MeasureScope measureScope, int[] iArr, int[] iArr2) {
            c(measureScope, i, iArr, LayoutDirection.j, iArr2);
        }

        @Override // androidx.compose.foundation.layout.Arrangement.Horizontal
        public final void c(Density density, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
            boolean z;
            int i2;
            if (iArr.length != 0) {
                int y0 = density.y0(this.a);
                if (this.b && layoutDirection == LayoutDirection.k) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    int length = iArr.length;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    while (i3 < length) {
                        int max = Math.max(0, i - iArr[i3]);
                        iArr2[i5] = max;
                        i4 = Math.min(y0, max);
                        i = iArr2[i5] - i4;
                        i3++;
                        i5++;
                    }
                    i2 = i + i4;
                } else {
                    int length2 = iArr.length;
                    int i6 = 0;
                    int i7 = 0;
                    int i8 = 0;
                    int i9 = 0;
                    while (i6 < length2) {
                        int i10 = iArr[i6];
                        int min = Math.min(i7, i - i10);
                        iArr2[i9] = min;
                        int min2 = Math.min(y0, (i - min) - i10);
                        int i11 = iArr2[i9] + i10 + min2;
                        i6++;
                        i8 = min2;
                        i7 = i11;
                        i9++;
                    }
                    i2 = i - (i7 - i8);
                }
                SpacingAlignmentCalculator spacingAlignmentCalculator = this.c;
                if (spacingAlignmentCalculator != null && i2 > 0) {
                    int c = spacingAlignmentCalculator.c(i2, layoutDirection);
                    if (z) {
                        c -= i2;
                    }
                    if (c != 0) {
                        int length3 = iArr2.length;
                        for (int i12 = 0; i12 < length3; i12++) {
                            iArr2[i12] = iArr2[i12] + c;
                        }
                    }
                }
            }
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof SpacedAligned) {
                    SpacedAligned spacedAligned = (SpacedAligned) obj;
                    if (!Dp.b(this.a, spacedAligned.a) || this.b != spacedAligned.b || !Intrinsics.a(this.c, spacedAligned.c)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode;
            int b = jb.b(Float.hashCode(this.a) * 31, 31, this.b);
            SpacingAlignmentCalculator spacingAlignmentCalculator = this.c;
            if (spacingAlignmentCalculator == null) {
                hashCode = 0;
            } else {
                hashCode = spacingAlignmentCalculator.hashCode();
            }
            return b + hashCode;
        }

        public final String toString() {
            String str;
            if (this.b) {
                str = "";
            } else {
                str = "Absolute";
            }
            return str + "Arrangement#spacedAligned(" + Dp.c(this.a) + ", " + this.c + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SpacingAlignmentCalculator {
        int c(int i, LayoutDirection layoutDirection);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Vertical {
        default float a() {
            return 0.0f;
        }

        void b(int i, MeasureScope measureScope, int[] iArr, int[] iArr2);
    }

    public static void a(int i, int[] iArr, int[] iArr2, boolean z) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        float f = (i - i3) / 2.0f;
        if (!z) {
            int length = iArr.length;
            int i5 = 0;
            while (i2 < length) {
                int i6 = iArr[i2];
                iArr2[i5] = Math.round(f);
                f += i6;
                i2++;
                i5++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                int i7 = iArr[length2];
                iArr2[length2] = Math.round(f);
                f += i7;
            } else {
                return;
            }
        }
    }

    public static void b(int[] iArr, int[] iArr2, boolean z) {
        int i = 0;
        if (!z) {
            int length = iArr.length;
            int i2 = 0;
            int i3 = 0;
            while (i < length) {
                int i4 = iArr[i];
                iArr2[i2] = i3;
                i3 += i4;
                i++;
                i2++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                int i5 = iArr[length2];
                iArr2[length2] = i;
                i += i5;
            } else {
                return;
            }
        }
    }

    public static void c(int i, int[] iArr, int[] iArr2, boolean z) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += i4;
        }
        int i5 = i - i3;
        if (!z) {
            int length = iArr.length;
            int i6 = 0;
            while (i2 < length) {
                int i7 = iArr[i2];
                iArr2[i6] = i5;
                i5 += i7;
                i2++;
                i6++;
            }
            return;
        }
        int length2 = iArr.length;
        while (true) {
            length2--;
            if (-1 < length2) {
                int i8 = iArr[length2];
                iArr2[length2] = i5;
                i5 += i8;
            } else {
                return;
            }
        }
    }

    public static void d(int i, int[] iArr, int[] iArr2, boolean z) {
        float f;
        if (iArr.length != 0) {
            int i2 = 0;
            int i3 = 0;
            for (int i4 : iArr) {
                i3 += i4;
            }
            float max = (i - i3) / Math.max(iArr.length - 1, 1);
            if (z && iArr.length == 1) {
                f = max;
            } else {
                f = 0.0f;
            }
            if (!z) {
                int length = iArr.length;
                int i5 = 0;
                while (i2 < length) {
                    int i6 = iArr[i2];
                    iArr2[i5] = Math.round(f);
                    f += i6 + max;
                    i2++;
                    i5++;
                }
                return;
            }
            for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                int i7 = iArr[length2];
                iArr2[length2] = Math.round(f);
                f += i7 + max;
            }
        }
    }

    public static SpacedAligned e(float f) {
        return new SpacedAligned(f, true, new u2(2));
    }
}
