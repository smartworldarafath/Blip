package androidx.compose.ui.semantics;

import android.graphics.Region;
import androidx.compose.ui.unit.IntRect;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SemanticRegionImpl implements SemanticsRegion {
    public final Region a = new Region();

    public final void a(IntRect intRect) {
        this.a.set(intRect.a, intRect.b, intRect.c, intRect.d);
    }
}
