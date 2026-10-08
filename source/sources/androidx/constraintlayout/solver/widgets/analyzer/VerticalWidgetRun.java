package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class VerticalWidgetRun extends WidgetRun {
    public final DependencyNode k;
    public BaselineDimensionDependency l;

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.k = dependencyNode;
        this.l = null;
        this.h.e = DependencyNode.Type.o;
        this.i.e = DependencyNode.Type.p;
        dependencyNode.e = DependencyNode.Type.q;
        this.f = 1;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public final void a(Dependency dependency) {
        float f;
        float f2;
        float f3;
        int i;
        if (this.j.ordinal() != 3) {
            DimensionDependency dimensionDependency = this.e;
            boolean z = dimensionDependency.c;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
            if (z && !dimensionDependency.j && this.d == dimensionBehaviour) {
                ConstraintWidget constraintWidget = this.b;
                int i2 = constraintWidget.k;
                if (i2 != 2) {
                    if (i2 == 3) {
                        DimensionDependency dimensionDependency2 = constraintWidget.d.e;
                        if (dimensionDependency2.j) {
                            int i3 = constraintWidget.N;
                            if (i3 != -1) {
                                if (i3 != 0) {
                                    if (i3 != 1) {
                                        i = 0;
                                        dimensionDependency.d(i);
                                    } else {
                                        f = dimensionDependency2.g;
                                        f2 = constraintWidget.M;
                                    }
                                } else {
                                    f3 = dimensionDependency2.g * constraintWidget.M;
                                    i = (int) (f3 + 0.5f);
                                    dimensionDependency.d(i);
                                }
                            } else {
                                f = dimensionDependency2.g;
                                f2 = constraintWidget.M;
                            }
                            f3 = f / f2;
                            i = (int) (f3 + 0.5f);
                            dimensionDependency.d(i);
                        }
                    }
                } else {
                    ConstraintWidget constraintWidget2 = constraintWidget.J;
                    if (constraintWidget2 != null) {
                        if (constraintWidget2.e.e.j) {
                            dimensionDependency.d((int) ((r1.g * constraintWidget.r) + 0.5f));
                        }
                    }
                }
            }
            DependencyNode dependencyNode = this.h;
            boolean z2 = dependencyNode.c;
            ArrayList arrayList = dependencyNode.l;
            if (z2) {
                DependencyNode dependencyNode2 = this.i;
                boolean z3 = dependencyNode2.c;
                ArrayList arrayList2 = dependencyNode2.l;
                if (z3) {
                    if (!dependencyNode.j || !dependencyNode2.j || !dimensionDependency.j) {
                        if (!dimensionDependency.j && this.d == dimensionBehaviour) {
                            ConstraintWidget constraintWidget3 = this.b;
                            if (constraintWidget3.j == 0 && !constraintWidget3.p()) {
                                DependencyNode dependencyNode3 = (DependencyNode) arrayList.get(0);
                                DependencyNode dependencyNode4 = (DependencyNode) arrayList2.get(0);
                                int i4 = dependencyNode3.g + dependencyNode.f;
                                int i5 = dependencyNode4.g + dependencyNode2.f;
                                dependencyNode.d(i4);
                                dependencyNode2.d(i5);
                                dimensionDependency.d(i5 - i4);
                                return;
                            }
                        }
                        if (!dimensionDependency.j && this.d == dimensionBehaviour && this.a == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                            DependencyNode dependencyNode5 = (DependencyNode) arrayList.get(0);
                            int i6 = (((DependencyNode) arrayList2.get(0)).g + dependencyNode2.f) - (dependencyNode5.g + dependencyNode.f);
                            int i7 = dimensionDependency.m;
                            if (i6 < i7) {
                                dimensionDependency.d(i6);
                            } else {
                                dimensionDependency.d(i7);
                            }
                        }
                        if (dimensionDependency.j && arrayList.size() > 0 && arrayList2.size() > 0) {
                            DependencyNode dependencyNode6 = (DependencyNode) arrayList.get(0);
                            DependencyNode dependencyNode7 = (DependencyNode) arrayList2.get(0);
                            int i8 = dependencyNode6.g;
                            int i9 = dependencyNode.f + i8;
                            int i10 = dependencyNode7.g;
                            int i11 = dependencyNode2.f + i10;
                            float f4 = this.b.U;
                            if (dependencyNode6 == dependencyNode7) {
                                f4 = 0.5f;
                            } else {
                                i8 = i9;
                                i10 = i11;
                            }
                            dependencyNode.d((int) ((((i10 - i8) - dimensionDependency.g) * f4) + i8 + 0.5f));
                            dependencyNode2.d(dependencyNode.g + dimensionDependency.g);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        ConstraintWidget constraintWidget4 = this.b;
        l(constraintWidget4.y, constraintWidget4.A, 1);
    }

    /* JADX WARN: Type inference failed for: r1v110, types: [androidx.constraintlayout.solver.widgets.analyzer.DimensionDependency, androidx.constraintlayout.solver.widgets.analyzer.BaselineDimensionDependency] */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void d() {
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5 = this.b;
        boolean z = constraintWidget5.a;
        DimensionDependency dimensionDependency = this.e;
        if (z) {
            dimensionDependency.d(constraintWidget5.g());
        }
        boolean z2 = dimensionDependency.j;
        ArrayList arrayList = dimensionDependency.k;
        ArrayList arrayList2 = dimensionDependency.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.m;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.j;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.l;
        DependencyNode dependencyNode = this.i;
        DependencyNode dependencyNode2 = this.h;
        if (!z2) {
            ConstraintWidget constraintWidget6 = this.b;
            this.d = constraintWidget6.I[1];
            if (constraintWidget6.w) {
                this.l = new DimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.d;
            if (dimensionBehaviour4 != dimensionBehaviour3) {
                if (dimensionBehaviour4 == dimensionBehaviour && (constraintWidget4 = this.b.J) != null) {
                    VerticalWidgetRun verticalWidgetRun = constraintWidget4.e;
                    if (constraintWidget4.I[1] == dimensionBehaviour2) {
                        int g = (constraintWidget4.g() - this.b.y.b()) - this.b.A.b();
                        WidgetRun.b(dependencyNode2, verticalWidgetRun.h, this.b.y.b());
                        WidgetRun.b(dependencyNode, verticalWidgetRun.i, -this.b.A.b());
                        dimensionDependency.d(g);
                        return;
                    }
                }
                if (dimensionBehaviour4 == dimensionBehaviour2) {
                    dimensionDependency.d(this.b.g());
                }
            }
        } else if (this.d == dimensionBehaviour && (constraintWidget2 = (constraintWidget = this.b).J) != null) {
            VerticalWidgetRun verticalWidgetRun2 = constraintWidget2.e;
            if (constraintWidget2.I[1] == dimensionBehaviour2) {
                WidgetRun.b(dependencyNode2, verticalWidgetRun2.h, constraintWidget.y.b());
                WidgetRun.b(dependencyNode, verticalWidgetRun2.i, -this.b.A.b());
                return;
            }
        }
        boolean z3 = dimensionDependency.j;
        DependencyNode dependencyNode3 = this.k;
        if (z3) {
            ConstraintWidget constraintWidget7 = this.b;
            if (constraintWidget7.a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.F;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.d;
                if (constraintAnchor2 != null && constraintAnchorArr[3].d != null) {
                    boolean p = constraintWidget7.p();
                    ConstraintWidget constraintWidget8 = this.b;
                    if (p) {
                        dependencyNode2.f = constraintWidget8.F[2].b();
                        dependencyNode.f = -this.b.F[3].b();
                    } else {
                        DependencyNode h = WidgetRun.h(constraintWidget8.F[2]);
                        if (h != null) {
                            WidgetRun.b(dependencyNode2, h, this.b.F[2].b());
                        }
                        DependencyNode h2 = WidgetRun.h(this.b.F[3]);
                        if (h2 != null) {
                            WidgetRun.b(dependencyNode, h2, -this.b.F[3].b());
                        }
                        dependencyNode2.b = true;
                        dependencyNode.b = true;
                    }
                    ConstraintWidget constraintWidget9 = this.b;
                    if (constraintWidget9.w) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget9.Q);
                        return;
                    }
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode h3 = WidgetRun.h(constraintAnchor);
                    if (h3 != null) {
                        WidgetRun.b(dependencyNode2, h3, this.b.F[2].b());
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        ConstraintWidget constraintWidget10 = this.b;
                        if (constraintWidget10.w) {
                            WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget10.Q);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                if (constraintAnchor3.d != null) {
                    DependencyNode h4 = WidgetRun.h(constraintAnchor3);
                    if (h4 != null) {
                        WidgetRun.b(dependencyNode, h4, -this.b.F[3].b());
                        WidgetRun.b(dependencyNode2, dependencyNode, -dimensionDependency.g);
                    }
                    ConstraintWidget constraintWidget11 = this.b;
                    if (constraintWidget11.w) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget11.Q);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                if (constraintAnchor4.d != null) {
                    DependencyNode h5 = WidgetRun.h(constraintAnchor4);
                    if (h5 != null) {
                        WidgetRun.b(dependencyNode3, h5, 0);
                        WidgetRun.b(dependencyNode2, dependencyNode3, -this.b.Q);
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        return;
                    }
                    return;
                }
                if (!(constraintWidget7 instanceof Helper) && constraintWidget7.J != null && constraintWidget7.e(ConstraintAnchor.Type.o).d == null) {
                    ConstraintWidget constraintWidget12 = this.b;
                    WidgetRun.b(dependencyNode2, constraintWidget12.J.e.h, constraintWidget12.l());
                    WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                    ConstraintWidget constraintWidget13 = this.b;
                    if (constraintWidget13.w) {
                        WidgetRun.b(dependencyNode3, dependencyNode2, constraintWidget13.Q);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (!z3 && this.d == dimensionBehaviour3) {
            ConstraintWidget constraintWidget14 = this.b;
            int i = constraintWidget14.k;
            if (i != 2) {
                if (i == 3 && !constraintWidget14.p()) {
                    ConstraintWidget constraintWidget15 = this.b;
                    if (constraintWidget15.j != 3) {
                        DimensionDependency dimensionDependency2 = constraintWidget15.d.e;
                        arrayList2.add(dimensionDependency2);
                        dimensionDependency2.k.add(dimensionDependency);
                        dimensionDependency.b = true;
                        arrayList.add(dependencyNode2);
                        arrayList.add(dependencyNode);
                    }
                }
            } else {
                ConstraintWidget constraintWidget16 = constraintWidget14.J;
                if (constraintWidget16 != null) {
                    DimensionDependency dimensionDependency3 = constraintWidget16.e.e;
                    arrayList2.add(dimensionDependency3);
                    dimensionDependency3.k.add(dimensionDependency);
                    dimensionDependency.b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            }
        } else {
            dimensionDependency.b(this);
        }
        ConstraintWidget constraintWidget17 = this.b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget17.F;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.d;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].d != null) {
            boolean p2 = constraintWidget17.p();
            ConstraintWidget constraintWidget18 = this.b;
            if (p2) {
                dependencyNode2.f = constraintWidget18.F[2].b();
                dependencyNode.f = -this.b.F[3].b();
            } else {
                DependencyNode h6 = WidgetRun.h(constraintWidget18.F[2]);
                DependencyNode h7 = WidgetRun.h(this.b.F[3]);
                h6.b(this);
                h7.b(this);
                this.j = WidgetRun.RunType.k;
            }
            if (this.b.w) {
                c(dependencyNode3, dependencyNode2, 1, this.l);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode h8 = WidgetRun.h(constraintAnchor5);
            if (h8 != null) {
                WidgetRun.b(dependencyNode2, h8, this.b.F[2].b());
                c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                if (this.b.w) {
                    c(dependencyNode3, dependencyNode2, 1, this.l);
                }
                if (this.d == dimensionBehaviour3) {
                    ConstraintWidget constraintWidget19 = this.b;
                    if (constraintWidget19.M > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun = constraintWidget19.d;
                        if (horizontalWidgetRun.d == dimensionBehaviour3) {
                            horizontalWidgetRun.e.k.add(dimensionDependency);
                            arrayList2.add(this.b.d.e);
                            dimensionDependency.a = this;
                        }
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.d != null) {
                DependencyNode h9 = WidgetRun.h(constraintAnchor7);
                if (h9 != null) {
                    WidgetRun.b(dependencyNode, h9, -this.b.F[3].b());
                    c(dependencyNode2, dependencyNode, -1, dimensionDependency);
                    if (this.b.w) {
                        c(dependencyNode3, dependencyNode2, 1, this.l);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.d != null) {
                    DependencyNode h10 = WidgetRun.h(constraintAnchor8);
                    if (h10 != null) {
                        WidgetRun.b(dependencyNode3, h10, 0);
                        c(dependencyNode2, dependencyNode3, -1, this.l);
                        c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                    }
                } else if (!(constraintWidget17 instanceof Helper) && (constraintWidget3 = constraintWidget17.J) != null) {
                    WidgetRun.b(dependencyNode2, constraintWidget3.e.h, constraintWidget17.l());
                    c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                    if (this.b.w) {
                        c(dependencyNode3, dependencyNode2, 1, this.l);
                    }
                    if (this.d == dimensionBehaviour3) {
                        ConstraintWidget constraintWidget20 = this.b;
                        if (constraintWidget20.M > 0.0f) {
                            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidget20.d;
                            if (horizontalWidgetRun2.d == dimensionBehaviour3) {
                                horizontalWidgetRun2.e.k.add(dimensionDependency);
                                arrayList2.add(this.b.d.e);
                                dimensionDependency.a = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            dimensionDependency.c = true;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void e() {
        DependencyNode dependencyNode = this.h;
        if (dependencyNode.j) {
            this.b.P = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean k() {
        if (this.d != ConstraintWidget.DimensionBehaviour.l || this.b.k == 0) {
            return true;
        }
        return false;
    }

    public final void m() {
        this.g = false;
        DependencyNode dependencyNode = this.h;
        dependencyNode.c();
        dependencyNode.j = false;
        DependencyNode dependencyNode2 = this.i;
        dependencyNode2.c();
        dependencyNode2.j = false;
        DependencyNode dependencyNode3 = this.k;
        dependencyNode3.c();
        dependencyNode3.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.X;
    }
}
