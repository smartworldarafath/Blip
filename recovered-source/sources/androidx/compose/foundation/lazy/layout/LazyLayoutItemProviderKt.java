package androidx.compose.foundation.lazy.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutItemProviderKt {
    public static final int a(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        int d;
        if (obj != null && lazyLayoutItemProvider.a() != 0 && ((i >= lazyLayoutItemProvider.a() || !obj.equals(lazyLayoutItemProvider.b(i))) && (d = lazyLayoutItemProvider.d(obj)) != -1)) {
            return d;
        }
        return i;
    }
}
