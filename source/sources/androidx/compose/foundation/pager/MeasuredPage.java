package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MeasuredPage implements PageInfo {
    public final int a;
    public final List b;
    public final long c;
    public final Object d;
    public final Alignment.Vertical e;
    public final LayoutDirection f;
    public final boolean g;
    public final int h;
    public final int[] i;
    public int j;
    public int k;

    public MeasuredPage(int i, int i2, List list, long j, Object obj, Alignment.Vertical vertical, LayoutDirection layoutDirection) {
        int i3;
        Orientation orientation = Orientation.j;
        this.a = i;
        this.b = list;
        this.c = j;
        this.d = obj;
        this.e = vertical;
        this.f = layoutDirection;
        Orientation orientation2 = Orientation.j;
        this.g = false;
        int size = list.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            Placeable placeable = (Placeable) list.get(i5);
            if (!this.g) {
                i3 = placeable.k;
            } else {
                i3 = placeable.j;
            }
            i4 = Math.max(i4, i3);
        }
        this.h = i4;
        this.i = new int[this.b.size() * 2];
        this.k = Integer.MIN_VALUE;
    }

    public final void a(int i) {
        this.j += i;
        int[] iArr = this.i;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            boolean z = this.g;
            if ((z && i2 % 2 == 1) || (!z && i2 % 2 == 0)) {
                iArr[i2] = iArr[i2] + i;
            }
        }
    }

    public final void b(int i, int i2, int i3) {
        int i4;
        int i5;
        this.j = i;
        boolean z = this.g;
        if (z) {
            i4 = i3;
        } else {
            i4 = i2;
        }
        this.k = i4;
        List list = this.b;
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            Placeable placeable = (Placeable) list.get(i6);
            int i7 = i6 * 2;
            int[] iArr = this.i;
            if (z) {
                iArr[i7] = Alignment.Companion.n.a(placeable.j, i2, this.f);
                iArr[i7 + 1] = i;
                i5 = placeable.k;
            } else {
                iArr[i7] = i;
                int i8 = i7 + 1;
                Alignment.Vertical vertical = this.e;
                if (vertical != null) {
                    iArr[i8] = ((BiasAlignment.Vertical) vertical).a(placeable.k, i3);
                    i5 = placeable.j;
                } else {
                    throw q.C("null verticalAlignment");
                }
            }
            i += i5;
        }
    }
}
