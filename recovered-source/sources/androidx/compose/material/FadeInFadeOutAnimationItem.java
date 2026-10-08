package androidx.compose.material;

import androidx.compose.runtime.internal.ComposableLambdaImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FadeInFadeOutAnimationItem<T> {
    public final ComposableLambdaImpl a;

    public FadeInFadeOutAnimationItem(ComposableLambdaImpl composableLambdaImpl) {
        this.a = composableLambdaImpl;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof FadeInFadeOutAnimationItem) && this.a == ((FadeInFadeOutAnimationItem) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "FadeInFadeOutAnimationItem(key=null, transition=" + this.a + ")";
    }
}
