package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridSpanLayoutProvider {
    public final LazyGridIntervalContent a;
    public final ArrayList b;
    public int c;
    public int d;
    public int e;
    public int f;
    public final ArrayList g;
    public List h;
    public int i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Bucket {
        public final int a;
        public final int b;

        public Bucket(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LazyGridItemSpanScopeImpl implements LazyGridItemSpanScope {
        public static final LazyGridItemSpanScopeImpl a = new Object();
        public static int b;

        @Override // androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope
        public final int a() {
            return b;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LineConfiguration {
        public final int a;
        public final List b;

        public LineConfiguration(int i, List list) {
            this.a = i;
            this.b = list;
        }
    }

    public LazyGridSpanLayoutProvider(LazyGridIntervalContent lazyGridIntervalContent) {
        this.a = lazyGridIntervalContent;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Bucket(0, 0));
        this.b = arrayList;
        this.f = -1;
        this.g = new ArrayList();
        this.h = EmptyList.j;
    }

    public final int a() {
        return ((int) Math.sqrt((d() * 1.0d) / this.i)) + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        if (r9 < r7) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final LineConfiguration b(int i) {
        int i2;
        int i3;
        int i4;
        List list;
        boolean z = true;
        if (!this.a.c) {
            int i5 = this.i;
            int i6 = i * i5;
            int d = d() - i6;
            if (i5 > d) {
                i5 = d;
            }
            if (i5 < 0) {
                i5 = 0;
            }
            if (i5 == this.h.size()) {
                list = this.h;
            } else {
                ArrayList arrayList = new ArrayList(i5);
                for (int i7 = 0; i7 < i5; i7++) {
                    arrayList.add(new GridItemSpan(LazyGridSpanKt.a(1)));
                }
                this.h = arrayList;
                list = arrayList;
            }
            return new LineConfiguration(i6, list);
        }
        int a = i / a();
        ArrayList arrayList2 = this.b;
        int min = Math.min(a, arrayList2.size() - 1);
        int a2 = a() * min;
        int i8 = ((Bucket) arrayList2.get(min)).a;
        int i9 = ((Bucket) arrayList2.get(min)).b;
        int i10 = this.c;
        ArrayList arrayList3 = this.g;
        if (a2 <= i10 && i10 <= i) {
            i8 = this.d;
            i9 = this.e;
            a2 = i10;
        } else if (min == this.f && (i2 = i - a2) < arrayList3.size()) {
            i8 = ((Number) arrayList3.get(i2)).intValue();
            a2 = i;
            i9 = 0;
        }
        if (a2 % a() == 0) {
            int a3 = a();
            int i11 = i - a2;
            if (2 <= i11) {
            }
        }
        z = false;
        if (z) {
            this.f = min;
            arrayList3.clear();
        }
        if (a2 > i) {
            InlineClassHelperKt.c("currentLine (" + a2 + ") > lineIndex (" + i + ")");
        }
        while (a2 < i && i8 < d()) {
            if (z) {
                arrayList3.add(Integer.valueOf(i8));
            }
            int i12 = 0;
            while (i12 < this.i && i8 < d()) {
                if (i9 == 0) {
                    i4 = i9;
                    i9 = e(i8);
                } else {
                    i4 = 0;
                }
                i12 += i9;
                if (i12 > this.i) {
                    break;
                }
                i8++;
                i9 = i4;
            }
            a2++;
            if (a2 % a() == 0 && i8 < d()) {
                if (arrayList2.size() != a2 / a()) {
                    InlineClassHelperKt.c("invalid starting point");
                }
                arrayList2.add(new Bucket(i8, i9));
            }
        }
        this.c = i;
        this.d = i8;
        this.e = i9;
        ArrayList arrayList4 = new ArrayList();
        int i13 = 0;
        int i14 = i8;
        while (i13 < this.i && i14 < d()) {
            if (i9 == 0) {
                int i15 = i9;
                i9 = e(i14);
                i3 = i15;
            } else {
                i3 = 0;
            }
            i13 += i9;
            if (i13 > this.i) {
                break;
            }
            i14++;
            arrayList4.add(new GridItemSpan(LazyGridSpanKt.a(i9)));
            i9 = i3;
        }
        return new LineConfiguration(i8, arrayList4);
    }

    public final int c(int i) {
        if (d() <= 0) {
            return 0;
        }
        if (i >= d()) {
            InlineClassHelperKt.a("ItemIndex > total count");
        }
        if (!this.a.c) {
            return i / this.i;
        }
        d dVar = new d(i);
        ArrayList arrayList = this.b;
        int j = CollectionsKt.j(arrayList, dVar);
        if (j < 0) {
            j = (-j) - 2;
        }
        int a = a() * j;
        int i2 = ((Bucket) arrayList.get(j)).a;
        if (i2 > i) {
            InlineClassHelperKt.a("currentItemIndex > itemIndex");
        }
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i2 >= i) {
                break;
            }
            int i5 = i2 + 1;
            int e = e(i2);
            i3 += e;
            int i6 = this.i;
            if (i3 >= i6) {
                if (i3 == i6) {
                    a++;
                    i3 = 0;
                } else {
                    a++;
                    i3 = e;
                }
            }
            if (a % a() == 0 && a / a() >= arrayList.size()) {
                if (i3 <= 0) {
                    i4 = 0;
                }
                arrayList.add(new Bucket(i5 - i4, 0));
            }
            i2 = i5;
        }
        if (e(i) + i3 > this.i) {
            return a + 1;
        }
        return a;
    }

    public final int d() {
        return this.a.b.b;
    }

    public final int e(int i) {
        LazyGridItemSpanScopeImpl.b = this.i;
        IntervalList$Interval b = this.a.b.b(i);
        int i2 = i - b.a;
        return (int) ((GridItemSpan) ((LazyGridInterval) b.c).b.n(LazyGridItemSpanScopeImpl.a, Integer.valueOf(i2))).a;
    }
}
