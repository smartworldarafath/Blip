package androidx.navigation.compose.internal;

import androidx.compose.runtime.saveable.SaveableStateHolder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WeakReference<T> {
    public final java.lang.ref.WeakReference a;

    public WeakReference(SaveableStateHolder saveableStateHolder) {
        this.a = new java.lang.ref.WeakReference(saveableStateHolder);
    }
}
