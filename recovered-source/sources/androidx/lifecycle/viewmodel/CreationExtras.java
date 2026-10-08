package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CreationExtras {
    public final LinkedHashMap a = new LinkedHashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Empty extends CreationExtras {
        public static final Empty b = new CreationExtras();

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        public final Object a(Key key) {
            return null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Key<T> {
    }

    public abstract Object a(Key key);

    public final boolean equals(Object obj) {
        if (obj instanceof CreationExtras) {
            if (Intrinsics.a(this.a, ((CreationExtras) obj).a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CreationExtras(extras=" + this.a + ")";
    }
}
