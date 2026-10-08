package androidx.collection;

import defpackage.u2;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableIntList extends IntList {
    public MutableIntList(int i) {
        int[] iArr;
        if (i == 0) {
            iArr = IntSetKt.a;
        } else {
            iArr = new int[i];
        }
        this.a = iArr;
    }

    public final void b(int i) {
        c(this.b + 1);
        int[] iArr = this.a;
        int i2 = this.b;
        iArr[i2] = i;
        this.b = i2 + 1;
    }

    public final void c(int i) {
        int[] iArr = this.a;
        if (iArr.length < i) {
            this.a = Arrays.copyOf(iArr, Math.max(i, (iArr.length * 3) / 2));
        }
    }

    public final void d(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.b)) {
            int[] iArr = this.a;
            int i3 = iArr[i];
            if (i != i2 - 1) {
                ArraysKt.f(i, i + 1, i2, iArr, iArr);
            }
            this.b--;
            return;
        }
        u2.o("Index must be between 0 and size");
    }

    public final void e(int i, int i2) {
        if (i >= 0 && i < this.b) {
            int[] iArr = this.a;
            int i3 = iArr[i];
            iArr[i] = i2;
            return;
        }
        u2.o("Index must be between 0 and size");
    }

    public /* synthetic */ MutableIntList() {
        this(16);
    }
}
