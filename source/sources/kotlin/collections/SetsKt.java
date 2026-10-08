package kotlin.collections;

import androidx.navigation.NavBackStackEntry;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public abstract class SetsKt extends SetsKt___SetsKt {
    public static SetBuilder a(SetBuilder setBuilder) {
        MapBuilder mapBuilder = setBuilder.j;
        mapBuilder.b();
        if (mapBuilder.r > 0) {
            return setBuilder;
        }
        return SetBuilder.k;
    }

    public static LinkedHashSet b(Set set, Object obj) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.d(set.size()));
        boolean z = false;
        for (Object obj2 : set) {
            boolean z2 = true;
            if (!z && Intrinsics.a(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(obj2);
            }
        }
        return linkedHashSet;
    }

    public static LinkedHashSet c(Set set, NavBackStackEntry navBackStackEntry) {
        set.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.d(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(navBackStackEntry);
        return linkedHashSet;
    }

    public static LinkedHashSet d(Set set, Iterable iterable) {
        Integer num;
        int size;
        set.getClass();
        if (iterable instanceof Collection) {
            num = Integer.valueOf(((Collection) iterable).size());
        } else {
            num = null;
        }
        if (num != null) {
            size = set.size() + num.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt.d(size));
        linkedHashSet.addAll(set);
        CollectionsKt.g(linkedHashSet, iterable);
        return linkedHashSet;
    }

    public static Set e(Object obj) {
        Set singleton = Collections.singleton(obj);
        singleton.getClass();
        return singleton;
    }
}
