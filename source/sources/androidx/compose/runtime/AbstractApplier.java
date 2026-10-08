package androidx.compose.runtime;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.UiApplier;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractApplier<T> implements Applier<T> {
    public final Object a;
    public final ArrayList b = new ArrayList();
    public Object c;

    public AbstractApplier(LayoutNode layoutNode) {
        this.a = layoutNode;
        this.c = layoutNode;
    }

    @Override // androidx.compose.runtime.Applier
    public final Object a() {
        return this.c;
    }

    @Override // androidx.compose.runtime.Applier
    public final void c(Object obj) {
        this.b.add(this.c);
        this.c = obj;
    }

    @Override // androidx.compose.runtime.Applier
    public final void g() {
        this.c = this.b.remove(r0.size() - 1);
    }

    public final void k() {
        this.b.clear();
        this.c = this.a;
        ((LayoutNode) ((UiApplier) this).a).T();
    }
}
