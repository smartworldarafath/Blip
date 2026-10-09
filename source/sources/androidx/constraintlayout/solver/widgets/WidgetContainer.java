package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WidgetContainer extends ConstraintWidget {
    public ArrayList d0;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public void q() {
        this.d0.clear();
        super.q();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final void r(Cache cache) {
        super.r(cache);
        int size = this.d0.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.d0.get(i)).r(cache);
        }
    }

    public abstract void y();
}
