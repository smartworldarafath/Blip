package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WeakCache<T> {
    public final MutableVector a = new MutableVector(new Reference[16]);
    public final ReferenceQueue b = new ReferenceQueue();
}
