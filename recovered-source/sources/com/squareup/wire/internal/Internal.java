package com.squareup.wire.internal;

import defpackage.fe;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.text.StringsKt;

/* loaded from: classes.dex */
public abstract class Internal {
    public static final List a(String str, List list) {
        list.getClass();
        if (list != EmptyList.j && !(list instanceof ImmutableList)) {
            ImmutableList immutableList = new ImmutableList(list);
            list = null;
            if (!immutableList.contains(null)) {
                return immutableList;
            }
            fe.l(str.concat(".contains(null)"));
        }
        return list;
    }

    public static final Map b(String str, Map map) {
        Map map2;
        map.getClass();
        if (map.isEmpty()) {
            map2 = EmptyMap.j;
            return map2;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        Set keySet = linkedHashMap.keySet();
        keySet.getClass();
        if (!keySet.contains(null)) {
            Collection values = linkedHashMap.values();
            values.getClass();
            if (!values.contains(null)) {
                Map unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
                unmodifiableMap.getClass();
                return unmodifiableMap;
            }
            fe.l(str.concat(".containsValue(null)"));
            return null;
        }
        fe.l(str.concat(".containsKey(null)"));
        return null;
    }

    public static final String c(String str) {
        str.getClass();
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (StringsKt.j(",[]{}\\", charAt)) {
                sb.append('\\');
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static final String d(List list) {
        list.getClass();
        return CollectionsKt.y(list, null, "[", "]", Internal__InternalKt$sanitize$2.r, 25);
    }
}
