package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridMeasuredLineProvider {
    public final LazyGridSlots a;
    public final int b;
    public final int c;
    public final LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 d;
    public final LazyGridSpanLayoutProvider e;

    public LazyGridMeasuredLineProvider(LazyGridSlots lazyGridSlots, int i, int i2, LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider) {
        this.a = lazyGridSlots;
        this.b = i;
        this.c = i2;
        this.d = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
        this.e = lazyGridSpanLayoutProvider;
    }

    public final long a(int i, int i2) {
        int i3;
        LazyGridSlots lazyGridSlots = this.a;
        int[] iArr = lazyGridSlots.a;
        if (i2 == 1) {
            i3 = iArr[i];
        } else {
            int i4 = (i2 + i) - 1;
            int[] iArr2 = lazyGridSlots.b;
            i3 = (iArr2[i4] + iArr[i4]) - iArr2[i];
        }
        if (i3 < 0) {
            i3 = 0;
        }
        if (i3 < 0) {
            InlineClassHelperKt.a("width must be >= 0");
        }
        return ConstraintsKt.h(i3, i3, 0, Integer.MAX_VALUE);
    }

    public final LazyGridMeasuredLine b(int i) {
        int i2;
        LazyGridSpanLayoutProvider.LineConfiguration b = this.e.b(i);
        int i3 = b.a;
        int size = b.b.size();
        int i4 = 0;
        if (size != 0 && i3 + size != this.b) {
            i2 = this.c;
        } else {
            i2 = 0;
        }
        LazyGridMeasuredItem[] lazyGridMeasuredItemArr = new LazyGridMeasuredItem[size];
        int i5 = 0;
        while (true) {
            List list = b.b;
            if (i4 < size) {
                int i6 = (int) ((GridItemSpan) list.get(i4)).a;
                int i7 = i2;
                LazyGridMeasuredItem c = this.d.c(i3 + i4, a(i5, i6), i5, i6, i7);
                i5 += i6;
                lazyGridMeasuredItemArr[i4] = c;
                i4++;
                i2 = i7;
            } else {
                return new LazyGridMeasuredLine(i, lazyGridMeasuredItemArr, ((LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1) this).f, list, i2);
            }
        }
    }
}
