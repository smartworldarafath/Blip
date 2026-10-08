package androidx.compose.ui.platform;

import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollObservationScope implements OwnerScope {
    public final int j;
    public final List k;
    public Float l = null;
    public Float m = null;
    public ScrollAxisRange n = null;
    public ScrollAxisRange o = null;

    public ScrollObservationScope(int i, ArrayList arrayList) {
        this.j = i;
        this.k = arrayList;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        return this.k.contains(this);
    }
}
