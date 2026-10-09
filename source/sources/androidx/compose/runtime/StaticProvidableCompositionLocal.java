package androidx.compose.runtime;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StaticProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ProvidedValue b(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = false;
        }
        return new ProvidedValue(this, obj, z, null, null, false);
    }
}
