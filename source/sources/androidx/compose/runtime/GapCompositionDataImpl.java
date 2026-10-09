package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GapCompositionDataImpl implements CompositionData {
    public final Composition j;

    public GapCompositionDataImpl(Composition composition) {
        this.j = composition;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GapCompositionDataImpl) {
            if (this.j.equals(((GapCompositionDataImpl) obj).j)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.j.hashCode() * 31;
    }
}
