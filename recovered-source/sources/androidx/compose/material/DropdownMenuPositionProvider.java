package androidx.compose.material;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import java.util.Iterator;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DropdownMenuPositionProvider implements PopupPositionProvider {
    public final long a;
    public final Density b;
    public final Function2 c;

    public DropdownMenuPositionProvider(long j, Density density, Function2 function2) {
        this.a = j;
        this.b = density;
        this.c = function2;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        int i;
        Sequence g;
        Object obj;
        Object obj2;
        Density density = this.b;
        int y0 = density.y0(48.0f);
        long j3 = this.a;
        int y02 = density.y0(Float.intBitsToFloat((int) (j3 >> 32)));
        LayoutDirection layoutDirection2 = LayoutDirection.j;
        if (layoutDirection == layoutDirection2) {
            i = 1;
        } else {
            i = -1;
        }
        int i2 = y02 * i;
        int y03 = density.y0(Float.intBitsToFloat((int) (j3 & 4294967295L)));
        int i3 = intRect.a;
        int i4 = intRect.c;
        int i5 = i3 + i2;
        int i6 = (int) (j2 >> 32);
        int i7 = (i4 - i6) + i2;
        int i8 = (int) (j >> 32);
        int i9 = i8 - i6;
        if (layoutDirection == layoutDirection2) {
            Integer valueOf = Integer.valueOf(i5);
            Integer valueOf2 = Integer.valueOf(i7);
            if (intRect.a < 0) {
                i9 = 0;
            }
            g = SequencesKt.g(valueOf, valueOf2, Integer.valueOf(i9));
        } else {
            Integer valueOf3 = Integer.valueOf(i7);
            Integer valueOf4 = Integer.valueOf(i5);
            if (i4 <= i8) {
                i9 = 0;
            }
            g = SequencesKt.g(valueOf3, valueOf4, Integer.valueOf(i9));
        }
        Iterator it = g.iterator();
        while (true) {
            obj = null;
            if (it.hasNext()) {
                obj2 = it.next();
                int intValue = ((Number) obj2).intValue();
                if (intValue >= 0 && intValue + i6 <= i8) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        Integer num = (Integer) obj2;
        if (num != null) {
            i7 = num.intValue();
        }
        int max = Math.max(intRect.d + y03, y0);
        int i10 = intRect.b;
        int i11 = (int) (j2 & 4294967295L);
        int i12 = (i10 - i11) + y03;
        int i13 = (i10 - (i11 / 2)) + y03;
        int i14 = (int) (j & 4294967295L);
        Iterator it2 = SequencesKt.g(Integer.valueOf(max), Integer.valueOf(i12), Integer.valueOf(i13), Integer.valueOf((i14 - i11) - y0)).iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            int intValue2 = ((Number) next).intValue();
            if (intValue2 >= y0 && intValue2 + i11 <= i14 - y0) {
                obj = next;
                break;
            }
        }
        Integer num2 = (Integer) obj;
        if (num2 != null) {
            i12 = num2.intValue();
        }
        this.c.n(intRect, new IntRect(i7, i12, i6 + i7, i11 + i12));
        return (i7 << 32) | (i12 & 4294967295L);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DropdownMenuPositionProvider)) {
            return false;
        }
        DropdownMenuPositionProvider dropdownMenuPositionProvider = (DropdownMenuPositionProvider) obj;
        if (this.a == dropdownMenuPositionProvider.a && Intrinsics.a(this.b, dropdownMenuPositionProvider.b) && Intrinsics.a(this.c, dropdownMenuPositionProvider.c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31);
    }

    public final String toString() {
        return "DropdownMenuPositionProvider(contentOffset=" + DpOffset.a(this.a) + ", density=" + this.b + ", onPositionCalculated=" + this.c + ")";
    }
}
