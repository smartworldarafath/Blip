package io.ktor.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StringValuesBuilderImpl {
    public final Map a;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object, io.ktor.util.CaseInsensitiveMap] */
    public StringValuesBuilderImpl() {
        ?? obj = new Object();
        obj.j = CaseInsensitiveMap.r;
        obj.k = CaseInsensitiveMap.s;
        obj.m = CaseInsensitiveMap.t;
        this.a = obj;
    }

    public final void a(Iterable iterable, String str) {
        str.getClass();
        iterable.getClass();
        Map map = this.a;
        Collection collection = (List) map.get(str);
        if (collection == null) {
            collection = new ArrayList();
            map.put(str, collection);
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ((String) it.next()).getClass();
        }
        CollectionsKt.g(collection, iterable);
    }
}
