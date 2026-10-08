package androidx.compose.foundation.lazy.grid;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridMeasuredLine {
    public final int a;
    public final LazyGridMeasuredItem[] b;
    public final LazyGridSlots c;
    public final List d;
    public final int e;
    public final int f;
    public final int g;

    public LazyGridMeasuredLine(int i, LazyGridMeasuredItem[] lazyGridMeasuredItemArr, LazyGridSlots lazyGridSlots, List list, int i2) {
        this.a = i;
        this.b = lazyGridMeasuredItemArr;
        this.c = lazyGridSlots;
        this.d = list;
        this.e = i2;
        int i3 = 0;
        for (LazyGridMeasuredItem lazyGridMeasuredItem : lazyGridMeasuredItemArr) {
            i3 = Math.max(i3, lazyGridMeasuredItem.n);
        }
        this.f = i3;
        int i4 = i3 + this.e;
        this.g = i4 >= 0 ? i4 : 0;
    }

    public final LazyGridMeasuredItem[] a(int i, int i2, int i3) {
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr = this.b;
        int length = lazyGridMeasuredItemArr.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            LazyGridMeasuredItem lazyGridMeasuredItem = lazyGridMeasuredItemArr[i4];
            int i7 = i5 + 1;
            int i8 = (int) ((GridItemSpan) this.d.get(i5)).a;
            lazyGridMeasuredItem.l(i, this.c.b[i6], i2, i3, this.a, i6);
            i6 += i8;
            i4++;
            i5 = i7;
        }
        return lazyGridMeasuredItemArr;
    }
}
