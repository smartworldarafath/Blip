package androidx.compose.ui.semantics;

import androidx.compose.ui.unit.IntRect;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsNodeWithAdjustedBounds {
    public final SemanticsNode a;
    public final IntRect b;

    public SemanticsNodeWithAdjustedBounds(SemanticsNode semanticsNode, IntRect intRect) {
        this.a = semanticsNode;
        this.b = intRect;
    }
}
