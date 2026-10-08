package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface LazyLayoutItemProvider {
    int a();

    Object b(int i);

    default Object c(int i) {
        return null;
    }

    int d(Object obj);

    void e(int i, Object obj, Composer composer, int i2);
}
