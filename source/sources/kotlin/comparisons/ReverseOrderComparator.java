package kotlin.comparisons;

import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ReverseOrderComparator implements Comparator<Comparable<? super Object>> {
    public static final ReverseOrderComparator j = new Object();

    @Override // java.util.Comparator
    public final int compare(Comparable<? super Object> comparable, Comparable<? super Object> comparable2) {
        Comparable<? super Object> comparable3 = comparable;
        Comparable<? super Object> comparable4 = comparable2;
        comparable3.getClass();
        comparable4.getClass();
        return comparable4.compareTo(comparable3);
    }

    @Override // java.util.Comparator
    public final Comparator<Comparable<? super Object>> reversed() {
        return NaturalOrderComparator.j;
    }
}
