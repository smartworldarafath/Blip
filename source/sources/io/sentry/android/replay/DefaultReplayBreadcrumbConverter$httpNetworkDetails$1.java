package io.sentry.android.replay;

import io.sentry.Breadcrumb;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultReplayBreadcrumbConverter$httpNetworkDetails$1 extends LinkedHashMap<Breadcrumb, Object> {
    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (!(obj instanceof Breadcrumb)) {
            return false;
        }
        return super.containsKey((Breadcrumb) obj);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        return false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof Breadcrumb) || super.get((Breadcrumb) obj) == null) {
            return null;
        }
        io.sentry.d.i();
        return null;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        if (!(obj instanceof Breadcrumb)) {
            return obj2;
        }
        Breadcrumb breadcrumb = (Breadcrumb) obj;
        if (obj2 == null) {
            if (super.getOrDefault(breadcrumb, null) == null) {
                return null;
            }
            io.sentry.d.i();
            return null;
        }
        io.sentry.d.i();
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (!(obj instanceof Breadcrumb) || super.remove((Breadcrumb) obj) == null) {
            return null;
        }
        io.sentry.d.i();
        return null;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry<Breadcrumb, Object> entry) {
        if (super.size() > 32) {
            return true;
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        return false;
    }
}
