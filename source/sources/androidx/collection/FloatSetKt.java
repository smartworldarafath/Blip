package androidx.collection;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FloatSetKt {
    public static final float[] a;

    static {
        int i;
        long[] jArr = ScatterMapKt.a;
        int d = ScatterMapKt.d(0);
        if (d > 0) {
            i = Math.max(7, ScatterMapKt.c(d));
        } else {
            i = 0;
        }
        if (i != 0) {
            int i2 = ((i + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i2];
            Arrays.fill(jArr2, 0, i2, -9187201950435737472L);
            jArr = jArr2;
        }
        int i3 = i >> 3;
        long j = 255 << ((i & 7) << 3);
        jArr[i3] = (jArr[i3] & (~j)) | j;
        float[] fArr = new float[i];
        a = new float[0];
    }
}
