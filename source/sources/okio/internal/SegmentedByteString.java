package okio.internal;

import okio.C0013SegmentedByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* renamed from: okio.internal.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class SegmentedByteString {
    public static final int a(C0013SegmentedByteString c0013SegmentedByteString, int i) {
        int i2;
        int[] iArr = c0013SegmentedByteString.o;
        int i3 = i + 1;
        int length = c0013SegmentedByteString.n.length;
        iArr.getClass();
        int i4 = length - 1;
        int i5 = 0;
        while (true) {
            if (i5 <= i4) {
                i2 = (i5 + i4) >>> 1;
                int i6 = iArr[i2];
                if (i6 < i3) {
                    i5 = i2 + 1;
                } else {
                    if (i6 <= i3) {
                        break;
                    }
                    i4 = i2 - 1;
                }
            } else {
                i2 = (-i5) - 1;
                break;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        return ~i2;
    }
}
