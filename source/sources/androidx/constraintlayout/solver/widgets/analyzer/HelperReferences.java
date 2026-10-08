package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.Barrier;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class HelperReferences extends WidgetRun {
    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        Barrier barrier = (Barrier) this.b;
        int i = barrier.f0;
        DependencyNode dependencyNode = this.h;
        Iterator it = dependencyNode.l.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((DependencyNode) it.next()).g;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i != 0 && i != 2) {
            dependencyNode.d(i2 + barrier.h0);
        } else {
            dependencyNode.d(i3 + barrier.h0);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget instanceof Barrier) {
            DependencyNode dependencyNode = this.h;
            dependencyNode.b = true;
            ArrayList arrayList = dependencyNode.l;
            Barrier barrier = (Barrier) constraintWidget;
            int i = barrier.f0;
            boolean z = barrier.g0;
            int i2 = 0;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            dependencyNode.e = DependencyNode.Type.p;
                            while (i2 < barrier.e0) {
                                ConstraintWidget constraintWidget2 = barrier.d0[i2];
                                if (z || constraintWidget2.W != 8) {
                                    DependencyNode dependencyNode2 = constraintWidget2.e.i;
                                    dependencyNode2.k.add(dependencyNode);
                                    arrayList.add(dependencyNode2);
                                }
                                i2++;
                            }
                            m(this.b.e.h);
                            m(this.b.e.i);
                            return;
                        }
                        return;
                    }
                    dependencyNode.e = DependencyNode.Type.o;
                    while (i2 < barrier.e0) {
                        ConstraintWidget constraintWidget3 = barrier.d0[i2];
                        if (z || constraintWidget3.W != 8) {
                            DependencyNode dependencyNode3 = constraintWidget3.e.h;
                            dependencyNode3.k.add(dependencyNode);
                            arrayList.add(dependencyNode3);
                        }
                        i2++;
                    }
                    m(this.b.e.h);
                    m(this.b.e.i);
                    return;
                }
                dependencyNode.e = DependencyNode.Type.n;
                while (i2 < barrier.e0) {
                    ConstraintWidget constraintWidget4 = barrier.d0[i2];
                    if (z || constraintWidget4.W != 8) {
                        DependencyNode dependencyNode4 = constraintWidget4.d.i;
                        dependencyNode4.k.add(dependencyNode);
                        arrayList.add(dependencyNode4);
                    }
                    i2++;
                }
                m(this.b.d.h);
                m(this.b.d.i);
                return;
            }
            dependencyNode.e = DependencyNode.Type.m;
            while (i2 < barrier.e0) {
                ConstraintWidget constraintWidget5 = barrier.d0[i2];
                if (z || constraintWidget5.W != 8) {
                    DependencyNode dependencyNode5 = constraintWidget5.d.h;
                    dependencyNode5.k.add(dependencyNode);
                    arrayList.add(dependencyNode5);
                }
                i2++;
            }
            m(this.b.d.h);
            m(this.b.d.i);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void e() {
        ConstraintWidget constraintWidget = this.b;
        if (constraintWidget instanceof Barrier) {
            int i = ((Barrier) constraintWidget).f0;
            DependencyNode dependencyNode = this.h;
            if (i != 0 && i != 1) {
                constraintWidget.P = dependencyNode.g;
            } else {
                constraintWidget.O = dependencyNode.g;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void f() {
        this.c = null;
        this.h.c();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean k() {
        return false;
    }

    public final void m(DependencyNode dependencyNode) {
        DependencyNode dependencyNode2 = this.h;
        dependencyNode2.k.add(dependencyNode);
        dependencyNode.l.add(dependencyNode2);
    }
}
