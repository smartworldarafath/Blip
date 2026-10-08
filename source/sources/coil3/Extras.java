package coil3;

import coil3.util.Collections_jvmCommonKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Extras {
    public static final Extras b = new Builder().a();
    public final Map a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key<T> {
        public final Object a;

        public Key(Object obj) {
            this.a = obj;
        }
    }

    public Extras(Map map) {
        this.a = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Extras) && Intrinsics.a(this.a, ((Extras) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Extras(data=" + this.a + ")";
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final LinkedHashMap a;

        public Builder(Extras extras) {
            Map map = extras.a;
            map.getClass();
            this.a = new LinkedHashMap(map);
        }

        public final Extras a() {
            return new Extras(Collections_jvmCommonKt.b(this.a));
        }

        public final void b(Key key, Object obj) {
            LinkedHashMap linkedHashMap = this.a;
            if (obj != null) {
                linkedHashMap.put(key, obj);
            } else {
                linkedHashMap.remove(key);
            }
        }

        public Builder(LinkedHashMap linkedHashMap) {
            this.a = new LinkedHashMap(linkedHashMap);
        }

        public Builder() {
            this.a = new LinkedHashMap();
        }
    }
}
