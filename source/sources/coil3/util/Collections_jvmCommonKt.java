package coil3.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Collections_jvmCommonKt {
    public static final List a(List list) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                return Collections.unmodifiableList(new ArrayList(list));
            }
            return Collections.singletonList(CollectionsKt.s(list));
        }
        return EmptyList.j;
    }

    public static final Map b(Map map) {
        int size = map.size();
        if (size != 0) {
            if (size != 1) {
                return Collections.unmodifiableMap(new LinkedHashMap(map));
            }
            Map.Entry entry = (Map.Entry) CollectionsKt.r(map.entrySet());
            return Collections.singletonMap(entry.getKey(), entry.getValue());
        }
        return MapsKt.b();
    }
}
