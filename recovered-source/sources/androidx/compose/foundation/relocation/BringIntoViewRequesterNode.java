package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BringIntoViewRequesterNode extends Modifier.Node {
    public BringIntoViewRequester x;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        BringIntoViewRequester bringIntoViewRequester = this.x;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).a.j(this);
        }
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).a.b(this);
        }
        this.x = bringIntoViewRequester;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        BringIntoViewRequester bringIntoViewRequester = this.x;
        if (bringIntoViewRequester instanceof BringIntoViewRequesterImpl) {
            ((BringIntoViewRequesterImpl) bringIntoViewRequester).a.j(this);
        }
    }
}
