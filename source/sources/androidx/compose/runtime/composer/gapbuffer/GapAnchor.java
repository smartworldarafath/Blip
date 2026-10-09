package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Anchor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GapAnchor implements Anchor {
    public int a;

    public GapAnchor(int i) {
        this.a = i;
    }

    public final boolean a() {
        if (this.a != Integer.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public final String toString() {
        return super.toString() + "{ location = " + this.a + " }";
    }
}
