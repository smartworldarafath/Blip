package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.MutableIntList;
import defpackage.fe;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PrioritySet {
    public static final void a(MutableIntList mutableIntList, int i) {
        if (mutableIntList.b != 0 && (mutableIntList.a(0) == i || mutableIntList.a(mutableIntList.b - 1) == i)) {
            return;
        }
        int i2 = mutableIntList.b;
        mutableIntList.b(i);
        while (i2 > 0) {
            int i3 = ((i2 + 1) >>> 1) - 1;
            int a = mutableIntList.a(i3);
            if (i <= a) {
                break;
            }
            mutableIntList.e(i2, a);
            i2 = i3;
        }
        mutableIntList.e(i2, i);
    }

    public static final int b(MutableIntList mutableIntList) {
        int a;
        int i = mutableIntList.b;
        int a2 = mutableIntList.a(0);
        while (mutableIntList.b != 0 && mutableIntList.a(0) == a2) {
            int i2 = mutableIntList.b;
            if (i2 != 0) {
                mutableIntList.e(0, mutableIntList.a[i2 - 1]);
                mutableIntList.d(mutableIntList.b - 1);
                int i3 = mutableIntList.b;
                int i4 = i3 >>> 1;
                int i5 = 0;
                while (i5 < i4) {
                    int a3 = mutableIntList.a(i5);
                    int i6 = (i5 + 1) * 2;
                    int i7 = i6 - 1;
                    int a4 = mutableIntList.a(i7);
                    if (i6 < i3 && (a = mutableIntList.a(i6)) > a4) {
                        if (a > a3) {
                            mutableIntList.e(i5, a);
                            mutableIntList.e(i6, a3);
                            i5 = i6;
                        }
                    } else if (a4 > a3) {
                        mutableIntList.e(i5, a4);
                        mutableIntList.e(i7, a3);
                        i5 = i7;
                    }
                }
            } else {
                fe.o("IntList is empty.");
                return 0;
            }
        }
        return a2;
    }
}
