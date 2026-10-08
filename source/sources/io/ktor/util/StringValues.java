package io.ktor.util;

import defpackage.d;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface StringValues {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final /* synthetic */ int a = 0;

        static {
            Map map;
            map = EmptyMap.j;
            new StringValuesImpl(false, map);
        }
    }

    static {
        int i = Companion.a;
    }

    Set a();

    boolean b();

    default void c(d dVar) {
        for (Map.Entry entry : a()) {
            dVar.n((String) entry.getKey(), (List) entry.getValue());
        }
    }

    boolean isEmpty();
}
