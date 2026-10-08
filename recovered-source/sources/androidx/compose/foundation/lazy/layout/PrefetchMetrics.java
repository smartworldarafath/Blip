package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PrefetchMetrics {
    public final MutableScatterMap a;
    public Object b;
    public Averages c;

    public PrefetchMetrics() {
        long[] jArr = ScatterMapKt.a;
        this.a = new MutableScatterMap();
    }
}
