package kotlin.collections;

import androidx.compose.foundation.lazy.grid.d;
import defpackage.fe;
import defpackage.jb;
import defpackage.q7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.collections.builders.ListBuilder;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableIterable;
import kotlin.ranges.CharRange;

/* loaded from: classes.dex */
public abstract class CollectionsKt extends CollectionsKt___CollectionsKt {
    public static Object A(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static List B(Object obj) {
        List singletonList = Collections.singletonList(obj);
        singletonList.getClass();
        return singletonList;
    }

    public static List C(Object... objArr) {
        if (objArr.length > 0) {
            List asList = Arrays.asList(objArr);
            asList.getClass();
            return asList;
        }
        return EmptyList.j;
    }

    public static Comparable D(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static ArrayList E(Object... objArr) {
        if (objArr.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static ArrayList F(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection2 = (Collection) iterable;
            ArrayList arrayList = new ArrayList(collection2.size() + collection.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        g(arrayList2, iterable);
        return arrayList2;
    }

    public static ArrayList G(Collection collection, Object obj) {
        collection.getClass();
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ArrayList H(CharRange charRange, CharRange charRange2) {
        if (charRange instanceof Collection) {
            return F((Collection) charRange, charRange2);
        }
        ArrayList arrayList = new ArrayList();
        g(arrayList, charRange);
        g(arrayList, charRange2);
        return arrayList;
    }

    public static void I(Iterable iterable, q7 q7Var) {
        iterable.getClass();
        CollectionsKt__MutableCollectionsKt.c(iterable, q7Var);
    }

    public static void J(List list, Function1 function1) {
        int size;
        list.getClass();
        function1.getClass();
        if (!(list instanceof RandomAccess)) {
            if ((list instanceof KMappedMarker) && !(list instanceof KMutableIterable)) {
                TypeIntrinsics.e(list, "kotlin.collections.MutableIterable");
                throw null;
            }
            CollectionsKt__MutableCollectionsKt.c(list, function1);
            return;
        }
        int size2 = list.size() - 1;
        int i = 0;
        if (size2 >= 0) {
            int i2 = 0;
            while (true) {
                Object obj = list.get(i);
                if (!((Boolean) function1.b(obj)).booleanValue()) {
                    if (i2 != i) {
                        list.set(i2, obj);
                    }
                    i2++;
                }
                if (i == size2) {
                    break;
                } else {
                    i++;
                }
            }
            i = i2;
        }
        if (i >= list.size() || i > (size = list.size() - 1)) {
            return;
        }
        while (true) {
            list.remove(size);
            if (size != i) {
                size--;
            } else {
                return;
            }
        }
    }

    public static Object K(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            return arrayList.remove(0);
        }
        fe.o("List is empty.");
        return null;
    }

    public static Object L(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(list.size() - 1);
        }
        fe.o("List is empty.");
        return null;
    }

    public static Object M(java.util.AbstractList abstractList) {
        abstractList.getClass();
        if (abstractList.isEmpty()) {
            return null;
        }
        return abstractList.remove(abstractList.size() - 1);
    }

    public static List N(Iterable iterable) {
        iterable.getClass();
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return X(iterable);
        }
        List f = CollectionsKt___CollectionsKt.f(iterable);
        Collections.reverse(f);
        return f;
    }

    public static void O(List list) {
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static void P(List list, Comparator comparator) {
        list.getClass();
        comparator.getClass();
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }

    public static List Q(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return X(iterable);
            }
            Object[] array = collection.toArray(new Comparable[0]);
            Comparable[] comparableArr = (Comparable[]) array;
            comparableArr.getClass();
            if (comparableArr.length > 1) {
                Arrays.sort(comparableArr);
            }
            array.getClass();
            List asList = Arrays.asList(array);
            asList.getClass();
            return asList;
        }
        List f = CollectionsKt___CollectionsKt.f(iterable);
        O(f);
        return f;
    }

    public static List R(Iterable iterable, Comparator comparator) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return X(iterable);
            }
            Object[] array = collection.toArray(new Object[0]);
            array.getClass();
            if (array.length > 1) {
                Arrays.sort(array, comparator);
            }
            List asList = Arrays.asList(array);
            asList.getClass();
            return asList;
        }
        List f = CollectionsKt___CollectionsKt.f(iterable);
        P(f, comparator);
        return f;
    }

    public static List S(Iterable iterable, int i) {
        iterable.getClass();
        if (i >= 0) {
            if (i == 0) {
                return EmptyList.j;
            }
            if (iterable instanceof Collection) {
                if (i >= ((Collection) iterable).size()) {
                    return X(iterable);
                }
                if (i == 1) {
                    return B(r(iterable));
                }
            }
            ArrayList arrayList = new ArrayList(i);
            Iterator it = iterable.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                arrayList.add(it.next());
                i2++;
                if (i2 == i) {
                    break;
                }
            }
            return CollectionsKt__CollectionsKt.a(arrayList);
        }
        fe.l(jb.d("Requested element count ", i, " is less than zero."));
        return null;
    }

    public static void T() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static float[] U(List list) {
        list.getClass();
        float[] fArr = new float[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = ((Number) it.next()).floatValue();
            i++;
        }
        return fArr;
    }

    public static HashSet V(ArrayList arrayList) {
        arrayList.getClass();
        HashSet hashSet = new HashSet(MapsKt.d(m(arrayList, 12)));
        CollectionsKt___CollectionsKt.e(arrayList, hashSet);
        return hashSet;
    }

    public static int[] W(List list) {
        list.getClass();
        int[] iArr = new int[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Number) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static List X(Iterable iterable) {
        Object next;
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return new ArrayList(collection);
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                return B(next);
            }
            return EmptyList.j;
        }
        return CollectionsKt__CollectionsKt.a(CollectionsKt___CollectionsKt.f(iterable));
    }

    public static ArrayList Y(Collection collection) {
        collection.getClass();
        return new ArrayList(collection);
    }

    public static LinkedHashSet Z(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        CollectionsKt___CollectionsKt.e(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Set a0(Iterable iterable) {
        Object next;
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.d(collection.size()));
                    CollectionsKt___CollectionsKt.e(iterable, linkedHashSet);
                    return linkedHashSet;
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                return SetsKt.e(next);
            }
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            CollectionsKt___CollectionsKt.e(iterable, linkedHashSet2);
            int size2 = linkedHashSet2.size();
            if (size2 != 0) {
                if (size2 != 1) {
                    return linkedHashSet2;
                }
                return SetsKt.e(linkedHashSet2.iterator().next());
            }
        }
        return EmptySet.j;
    }

    public static void g(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static ArrayList h(Object... objArr) {
        if (objArr.length == 0) {
            return new ArrayList();
        }
        return new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static List i(List list) {
        list.getClass();
        return new ReversedListReadOnly(list);
    }

    public static int j(ArrayList arrayList, d dVar) {
        int size = arrayList.size();
        arrayList.getClass();
        CollectionsKt__CollectionsKt.b(arrayList.size(), size);
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int intValue = ((Number) dVar.b(arrayList.get(i3))).intValue();
            if (intValue < 0) {
                i2 = i3 + 1;
            } else if (intValue > 0) {
                i = i3 - 1;
            } else {
                return i3;
            }
        }
        return -(i2 + 1);
    }

    public static int k(ArrayList arrayList, Comparable comparable) {
        int size = arrayList.size();
        arrayList.getClass();
        CollectionsKt__CollectionsKt.b(arrayList.size(), size);
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int b = ComparisonsKt.b((Comparable) arrayList.get(i3), comparable);
            if (b < 0) {
                i2 = i3 + 1;
            } else if (b > 0) {
                i = i3 - 1;
            } else {
                return i3;
            }
        }
        return -(i2 + 1);
    }

    public static ListBuilder l(ListBuilder listBuilder) {
        listBuilder.g();
        listBuilder.l = true;
        if (listBuilder.k > 0) {
            return listBuilder;
        }
        return ListBuilder.m;
    }

    public static int m(Iterable iterable, int i) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return i;
    }

    public static boolean n(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        if (v(iterable, obj) >= 0) {
            return true;
        }
        return false;
    }

    public static ListBuilder o() {
        return new ListBuilder(10);
    }

    public static List p(List list) {
        int size = list.size() - 1;
        if (size <= 0) {
            return EmptyList.j;
        }
        if (size == 1) {
            return B(z(list));
        }
        ArrayList arrayList = new ArrayList(size);
        if (list instanceof RandomAccess) {
            int size2 = list.size();
            for (int i = 1; i < size2; i++) {
                arrayList.add(list.get(i));
            }
        } else {
            ListIterator listIterator = list.listIterator(1);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static List q(List list) {
        list.getClass();
        int size = list.size() - 1;
        if (size < 0) {
            size = 0;
        }
        return S(list, size);
    }

    public static Object r(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return s((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        fe.o("Collection is empty.");
        return null;
    }

    public static Object s(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(0);
        }
        fe.o("List is empty.");
        return null;
    }

    public static Object t(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static int u(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static int v(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i = 0;
        for (Object obj2 : iterable) {
            if (i >= 0) {
                if (Intrinsics.a(obj, obj2)) {
                    return i;
                }
                i++;
            } else {
                T();
                throw null;
            }
        }
        return -1;
    }

    public static LinkedHashSet w(Iterable iterable, Iterable iterable2) {
        Collection X;
        iterable.getClass();
        iterable2.getClass();
        if (iterable2 instanceof Collection) {
            X = (Collection) iterable2;
        } else {
            X = X(iterable2);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (X.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static /* synthetic */ void x(List list, StringBuilder sb, String str, Function1 function1, int i) {
        if ((i & 64) != 0) {
            function1 = null;
        }
        CollectionsKt___CollectionsKt.d(list, sb, str, "", "", "...", function1);
    }

    public static String y(Iterable iterable, CharSequence charSequence, String str, String str2, Function1 function1, int i) {
        String str3;
        String str4;
        if ((i & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence2 = charSequence;
        if ((i & 2) != 0) {
            str3 = "";
        } else {
            str3 = str;
        }
        if ((i & 4) != 0) {
            str4 = "";
        } else {
            str4 = str2;
        }
        if ((i & 32) != 0) {
            function1 = null;
        }
        iterable.getClass();
        charSequence2.getClass();
        str3.getClass();
        StringBuilder sb = new StringBuilder();
        CollectionsKt___CollectionsKt.d(iterable, sb, charSequence2, str3, str4, "...", function1);
        return sb.toString();
    }

    public static Object z(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(list.size() - 1);
        }
        fe.o("List is empty.");
        return null;
    }
}
