package androidx.compose.runtime;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntStack {
    public int[] a = new int[10];
    public int b;

    public final int a(int i) {
        int i2 = this.b - 1;
        if (i2 >= 0) {
            return this.a[i2];
        }
        return i;
    }

    public final int b() {
        int[] iArr = this.a;
        int i = this.b - 1;
        this.b = i;
        return iArr[i];
    }

    public final void c(int i) {
        int[] iArr = this.a;
        if (this.b >= iArr.length) {
            iArr = Arrays.copyOf(iArr, iArr.length * 2);
            this.a = iArr;
        }
        int i2 = this.b;
        this.b = i2 + 1;
        iArr[i2] = i;
    }
}
