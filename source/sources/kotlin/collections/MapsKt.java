package kotlin.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Pair;

/* loaded from: classes.dex */
public abstract class MapsKt extends MapsKt___MapsKt {
    public static /* bridge */ /* synthetic */ Map b() {
        return EmptyMap.j;
    }

    public static Object c(Object obj, Map map) {
        map.getClass();
        Object obj2 = map.get(obj);
        if (obj2 == null && !map.containsKey(obj)) {
            throw new NoSuchElementException("Key " + obj + " is missing in the map.");
        }
        return obj2;
    }

    public static int d(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map e(Pair pair) {
        pair.getClass();
        Map singletonMap = Collections.singletonMap(pair.j, pair.k);
        singletonMap.getClass();
        return singletonMap;
    }

    public static Map f(Pair... pairArr) {
        if (pairArr.length > 0) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(d(pairArr.length));
            MapsKt__MapsKt.a(linkedHashMap, pairArr);
            return linkedHashMap;
        }
        return EmptyMap.j;
    }

    public static LinkedHashMap g(Pair... pairArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(d(pairArr.length));
        MapsKt__MapsKt.a(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static Map h(ArrayList arrayList) {
        int size = arrayList.size();
        if (size != 0) {
            if (size != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(d(arrayList.size()));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Pair pair = (Pair) it.next();
                    linkedHashMap.put(pair.j, pair.k);
                }
                return linkedHashMap;
            }
            return e((Pair) arrayList.get(0));
        }
        return EmptyMap.j;
    }

    public static Map i(Map map) {
        map.getClass();
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return new LinkedHashMap(map);
            }
            Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
            Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
            singletonMap.getClass();
            return singletonMap;
        }
        return EmptyMap.j;
    }
}
