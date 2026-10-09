package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.ComposerKt;
import defpackage.f7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GapAnchorKt {
    public static final GapAnchor a(Anchor anchor) {
        GapAnchor gapAnchor;
        if (anchor instanceof GapAnchor) {
            gapAnchor = (GapAnchor) anchor;
        } else {
            gapAnchor = null;
        }
        if (gapAnchor != null) {
            return gapAnchor;
        }
        ComposerKt.b("Inconsistent composition");
        f7.h();
        return null;
    }
}
