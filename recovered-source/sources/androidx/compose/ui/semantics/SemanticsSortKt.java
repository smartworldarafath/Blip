package androidx.compose.ui.semantics;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.c;
import defpackage.cf;
import defpackage.v1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsSortKt {
    public static final Comparator[] a;
    public static final cf b;

    static {
        Comparator comparator;
        Comparator[] comparatorArr = new Comparator[2];
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                comparator = RtlBoundsComparator.j;
            } else {
                comparator = LtrBoundsComparator.j;
            }
            final SemanticsSortKt$special$$inlined$thenBy$1 semanticsSortKt$special$$inlined$thenBy$1 = new SemanticsSortKt$special$$inlined$thenBy$1(comparator);
            comparatorArr[i] = new Comparator() { // from class: androidx.compose.ui.semantics.SemanticsSortKt$special$$inlined$thenBy$2
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compare = SemanticsSortKt$special$$inlined$thenBy$1.this.compare(obj, obj2);
                    if (compare != 0) {
                        return compare;
                    }
                    return Integer.valueOf(((SemanticsNode) obj).f).compareTo(Integer.valueOf(((SemanticsNode) obj2).f));
                }
            };
        }
        a = comparatorArr;
        b = new cf(15, (byte) 0);
    }

    public static final void a(SemanticsNode semanticsNode, ArrayList arrayList, c cVar, c cVar2, MutableIntObjectMap mutableIntObjectMap) {
        SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
        Object e = semanticsConfiguration.j.e(SemanticsProperties.n);
        if (e == null) {
            e = Boolean.FALSE;
        }
        boolean booleanValue = ((Boolean) e).booleanValue();
        if ((booleanValue || ((Boolean) cVar2.b(semanticsNode)).booleanValue()) && ((Boolean) cVar.b(semanticsNode)).booleanValue()) {
            arrayList.add(semanticsNode);
        }
        if (booleanValue) {
            mutableIntObjectMap.i(semanticsNode.f, b(semanticsNode, cVar, cVar2, SemanticsNode.j(7, semanticsNode)));
            return;
        }
        List j = SemanticsNode.j(7, semanticsNode);
        int size = j.size();
        for (int i = 0; i < size; i++) {
            a((SemanticsNode) j.get(i), arrayList, cVar, cVar2, mutableIntObjectMap);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ed A[LOOP:1: B:11:0x0046->B:29:0x00ed, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f5 A[EDGE_INSN: B:30:0x00f5->B:31:0x00f5 BREAK  A[LOOP:1: B:11:0x0046->B:29:0x00ed], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final ArrayList b(SemanticsNode semanticsNode, c cVar, c cVar2, List list) {
        char c;
        int i;
        int i2;
        int i3;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap();
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            a((SemanticsNode) list.get(i4), arrayList, cVar, cVar2, mutableIntObjectMap2);
        }
        int i5 = 1;
        if (semanticsNode.c.I == LayoutDirection.k) {
            c = 1;
        } else {
            c = 0;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size() / 2);
        int size2 = arrayList.size() - 1;
        if (size2 >= 0) {
            int i6 = 0;
            while (true) {
                SemanticsNode semanticsNode2 = (SemanticsNode) arrayList.get(i6);
                if (i6 != 0) {
                    float f = semanticsNode2.h().b;
                    float f2 = semanticsNode2.h().d;
                    if (f >= f2) {
                        i2 = i5;
                    } else {
                        i2 = 0;
                    }
                    int size3 = arrayList2.size() - i5;
                    if (size3 >= 0) {
                        int i7 = 0;
                        while (true) {
                            Rect rect = (Rect) ((Pair) arrayList2.get(i7)).j;
                            float f3 = rect.b;
                            i = i5;
                            float f4 = rect.d;
                            if (f3 >= f4) {
                                i3 = i;
                            } else {
                                i3 = 0;
                            }
                            if (i2 == 0 && i3 == 0 && Math.max(f, f3) < Math.min(f2, f4)) {
                                arrayList2.set(i7, new Pair(new Rect(Math.max(rect.a, 0.0f), Math.max(rect.b, f), Math.min(rect.c, Float.POSITIVE_INFINITY), Math.min(f4, f2)), ((Pair) arrayList2.get(i7)).k));
                                ((List) ((Pair) arrayList2.get(i7)).k).add(semanticsNode2);
                                break;
                            }
                            if (i7 == size3) {
                                break;
                            }
                            i7++;
                            i5 = i;
                        }
                        arrayList2.add(new Pair(semanticsNode2.h(), CollectionsKt.E(semanticsNode2)));
                        if (i6 != size2) {
                            break;
                        }
                        i6++;
                        i5 = i;
                    }
                }
                i = i5;
                arrayList2.add(new Pair(semanticsNode2.h(), CollectionsKt.E(semanticsNode2)));
                if (i6 != size2) {
                }
            }
        }
        CollectionsKt.P(arrayList2, TopBottomBoundsComparator.j);
        ArrayList arrayList3 = new ArrayList();
        Comparator comparator = a[c ^ 1];
        int size4 = arrayList2.size();
        for (int i8 = 0; i8 < size4; i8++) {
            Pair pair = (Pair) arrayList2.get(i8);
            CollectionsKt.P((List) pair.k, comparator);
            arrayList3.addAll((Collection) pair.k);
        }
        CollectionsKt.P(arrayList3, new v1(7));
        int i9 = 0;
        while (i9 <= arrayList3.size() - 1) {
            List list2 = (List) mutableIntObjectMap2.b(((SemanticsNode) arrayList3.get(i9)).f);
            if (list2 != null) {
                if (!((Boolean) cVar2.b(arrayList3.get(i9))).booleanValue()) {
                    arrayList3.remove(i9);
                } else {
                    i9++;
                }
                arrayList3.addAll(i9, list2);
                i9 += list2.size();
            } else {
                i9++;
            }
        }
        return arrayList3;
    }
}
