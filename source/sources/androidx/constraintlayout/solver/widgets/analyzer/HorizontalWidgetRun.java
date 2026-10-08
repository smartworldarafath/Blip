package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetRun;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class HorizontalWidgetRun extends WidgetRun {
    public static final int[] k = new int[2];

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.h.e = DependencyNode.Type.m;
        this.i.e = DependencyNode.Type.n;
        this.f = 0;
    }

    public static void m(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 == 1) {
                    iArr[0] = i6;
                    iArr[1] = (int) ((i6 * f) + 0.5f);
                    return;
                }
                return;
            }
            iArr[0] = (int) ((i7 * f) + 0.5f);
            iArr[1] = i7;
            return;
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:154:0x023f, code lost:
    
        if (r6 != 1) goto L125;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a6  */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Dependency dependency) {
        float f;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        float f2;
        float f3;
        float f4;
        int i;
        if (this.j.ordinal() != 3) {
            DimensionDependency dimensionDependency = this.e;
            boolean z6 = dimensionDependency.j;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
            DependencyNode dependencyNode = this.h;
            DependencyNode dependencyNode2 = this.i;
            if (!z6 && this.d == dimensionBehaviour) {
                ConstraintWidget constraintWidget = this.b;
                int i2 = constraintWidget.j;
                VerticalWidgetRun verticalWidgetRun = constraintWidget.e;
                if (i2 != 2) {
                    if (i2 == 3) {
                        int i3 = constraintWidget.k;
                        if (i3 != 0 && i3 != 3) {
                            int i4 = constraintWidget.N;
                            if (i4 != -1) {
                                if (i4 != 0) {
                                    if (i4 != 1) {
                                        i = 0;
                                        dimensionDependency.d(i);
                                    } else {
                                        f2 = verticalWidgetRun.e.g;
                                        f3 = constraintWidget.M;
                                    }
                                } else {
                                    f4 = verticalWidgetRun.e.g / constraintWidget.M;
                                    i = (int) (f4 + 0.5f);
                                    dimensionDependency.d(i);
                                }
                            } else {
                                f2 = verticalWidgetRun.e.g;
                                f3 = constraintWidget.M;
                            }
                            f4 = f2 * f3;
                            i = (int) (f4 + 0.5f);
                            dimensionDependency.d(i);
                        } else {
                            DependencyNode dependencyNode3 = verticalWidgetRun.h;
                            DependencyNode dependencyNode4 = verticalWidgetRun.i;
                            if (constraintWidget.x.d != null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (constraintWidget.y.d != null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (constraintWidget.z.d != null) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (constraintWidget.A.d != null) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            f = 0.5f;
                            int i5 = constraintWidget.N;
                            if (z2 && z3 && z4 && z5) {
                                float f5 = constraintWidget.M;
                                boolean z7 = dependencyNode3.j;
                                ArrayList arrayList = dependencyNode3.l;
                                int[] iArr = k;
                                if (z7 && dependencyNode4.j) {
                                    if (dependencyNode.c && dependencyNode2.c) {
                                        m(iArr, ((DependencyNode) dependencyNode.l.get(0)).g + dependencyNode.f, ((DependencyNode) dependencyNode2.l.get(0)).g - dependencyNode2.f, dependencyNode3.g + dependencyNode3.f, dependencyNode4.g - dependencyNode4.f, f5, i5);
                                        dimensionDependency.d(iArr[0]);
                                        this.b.e.e.d(iArr[1]);
                                        return;
                                    }
                                    return;
                                }
                                if (dependencyNode.j && dependencyNode2.j) {
                                    if (dependencyNode3.c && dependencyNode4.c) {
                                        m(iArr, dependencyNode.g + dependencyNode.f, dependencyNode2.g - dependencyNode2.f, ((DependencyNode) arrayList.get(0)).g + dependencyNode3.f, ((DependencyNode) dependencyNode4.l.get(0)).g - dependencyNode4.f, f5, i5);
                                        dimensionDependency.d(iArr[0]);
                                        this.b.e.e.d(iArr[1]);
                                    } else {
                                        return;
                                    }
                                }
                                if (dependencyNode.c && dependencyNode2.c && dependencyNode3.c && dependencyNode4.c) {
                                    m(iArr, ((DependencyNode) dependencyNode.l.get(0)).g + dependencyNode.f, ((DependencyNode) dependencyNode2.l.get(0)).g - dependencyNode2.f, ((DependencyNode) arrayList.get(0)).g + dependencyNode3.f, ((DependencyNode) dependencyNode4.l.get(0)).g - dependencyNode4.f, f5, i5);
                                    dimensionDependency.d(iArr[0]);
                                    this.b.e.e.d(iArr[1]);
                                } else {
                                    return;
                                }
                            } else if (z2 && z4) {
                                if (dependencyNode.c && dependencyNode2.c) {
                                    float f6 = constraintWidget.M;
                                    int i6 = ((DependencyNode) dependencyNode.l.get(0)).g + dependencyNode.f;
                                    int i7 = ((DependencyNode) dependencyNode2.l.get(0)).g - dependencyNode2.f;
                                    if (i5 != -1 && i5 != 0) {
                                        if (i5 == 1) {
                                            int g = g(i7 - i6, 0);
                                            int i8 = (int) ((g / f6) + 0.5f);
                                            int g2 = g(i8, 1);
                                            if (i8 != g2) {
                                                g = (int) ((g2 * f6) + 0.5f);
                                            }
                                            dimensionDependency.d(g);
                                            this.b.e.e.d(g2);
                                        }
                                    } else {
                                        int g3 = g(i7 - i6, 0);
                                        int i9 = (int) ((g3 * f6) + 0.5f);
                                        int g4 = g(i9, 1);
                                        if (i9 != g4) {
                                            g3 = (int) ((g4 / f6) + 0.5f);
                                        }
                                        dimensionDependency.d(g3);
                                        this.b.e.e.d(g4);
                                    }
                                } else {
                                    return;
                                }
                            } else if (z3 && z5) {
                                if (dependencyNode3.c && dependencyNode4.c) {
                                    float f7 = constraintWidget.M;
                                    int i10 = ((DependencyNode) dependencyNode3.l.get(0)).g + dependencyNode3.f;
                                    int i11 = ((DependencyNode) dependencyNode4.l.get(0)).g - dependencyNode4.f;
                                    if (i5 != -1) {
                                        if (i5 == 0) {
                                            int g5 = g(i11 - i10, 1);
                                            int i12 = (int) ((g5 * f7) + 0.5f);
                                            int g6 = g(i12, 0);
                                            if (i12 != g6) {
                                                g5 = (int) ((g6 / f7) + 0.5f);
                                            }
                                            dimensionDependency.d(g6);
                                            this.b.e.e.d(g5);
                                        }
                                    }
                                    int g7 = g(i11 - i10, 1);
                                    int i13 = (int) ((g7 / f7) + 0.5f);
                                    int g8 = g(i13, 0);
                                    if (i13 != g8) {
                                        g7 = (int) ((g8 * f7) + 0.5f);
                                    }
                                    dimensionDependency.d(g8);
                                    this.b.e.e.d(g7);
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                } else {
                    f = 0.5f;
                    ConstraintWidget constraintWidget2 = constraintWidget.J;
                    if (constraintWidget2 != null) {
                        if (constraintWidget2.d.e.j) {
                            dimensionDependency.d((int) ((r3.g * constraintWidget.o) + 0.5f));
                        }
                    }
                }
                z = dependencyNode.c;
                ArrayList arrayList2 = dependencyNode.l;
                if (!z) {
                    boolean z8 = dependencyNode2.c;
                    ArrayList arrayList3 = dependencyNode2.l;
                    if (z8) {
                        if (!dependencyNode.j || !dependencyNode2.j || !dimensionDependency.j) {
                            if (!dimensionDependency.j && this.d == dimensionBehaviour) {
                                ConstraintWidget constraintWidget3 = this.b;
                                if (constraintWidget3.j == 0 && !constraintWidget3.o()) {
                                    DependencyNode dependencyNode5 = (DependencyNode) arrayList2.get(0);
                                    DependencyNode dependencyNode6 = (DependencyNode) arrayList3.get(0);
                                    int i14 = dependencyNode5.g + dependencyNode.f;
                                    int i15 = dependencyNode6.g + dependencyNode2.f;
                                    dependencyNode.d(i14);
                                    dependencyNode2.d(i15);
                                    dimensionDependency.d(i15 - i14);
                                    return;
                                }
                            }
                            if (!dimensionDependency.j && this.d == dimensionBehaviour && this.a == 1 && arrayList2.size() > 0 && arrayList3.size() > 0) {
                                DependencyNode dependencyNode7 = (DependencyNode) arrayList2.get(0);
                                int min = Math.min((((DependencyNode) arrayList3.get(0)).g + dependencyNode2.f) - (dependencyNode7.g + dependencyNode.f), dimensionDependency.m);
                                ConstraintWidget constraintWidget4 = this.b;
                                int i16 = constraintWidget4.n;
                                int max = Math.max(constraintWidget4.m, min);
                                if (i16 > 0) {
                                    max = Math.min(i16, max);
                                }
                                dimensionDependency.d(max);
                            }
                            if (dimensionDependency.j) {
                                DependencyNode dependencyNode8 = (DependencyNode) arrayList2.get(0);
                                DependencyNode dependencyNode9 = (DependencyNode) arrayList3.get(0);
                                int i17 = dependencyNode8.g;
                                int i18 = dependencyNode.f + i17;
                                int i19 = dependencyNode9.g;
                                int i20 = dependencyNode2.f + i19;
                                float f8 = this.b.T;
                                if (dependencyNode8 == dependencyNode9) {
                                    f8 = f;
                                } else {
                                    i17 = i18;
                                    i19 = i20;
                                }
                                dependencyNode.d((int) ((((i19 - i17) - dimensionDependency.g) * f8) + i17 + f));
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
            f = 0.5f;
            z = dependencyNode.c;
            ArrayList arrayList22 = dependencyNode.l;
            if (!z) {
            }
        } else {
            ConstraintWidget constraintWidget5 = this.b;
            l(constraintWidget5.x, constraintWidget5.z, 0);
        }
    }

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
            dimensionDependency.d(constraintWidget5.j());
        }
        boolean z2 = dimensionDependency.j;
        ArrayList arrayList = dimensionDependency.k;
        ArrayList arrayList2 = dimensionDependency.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.m;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.j;
        DependencyNode dependencyNode = this.i;
        DependencyNode dependencyNode2 = this.h;
        if (!z2) {
            ConstraintWidget constraintWidget6 = this.b;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = constraintWidget6.I[0];
            this.d = dimensionBehaviour4;
            if (dimensionBehaviour4 != dimensionBehaviour2) {
                if (dimensionBehaviour4 == dimensionBehaviour && (((constraintWidget4 = constraintWidget6.J) != null && constraintWidget4.I[0] == dimensionBehaviour3) || constraintWidget4.I[0] == dimensionBehaviour)) {
                    int j = constraintWidget4.j();
                    HorizontalWidgetRun horizontalWidgetRun = constraintWidget4.d;
                    int b = (j - this.b.x.b()) - this.b.z.b();
                    WidgetRun.b(dependencyNode2, horizontalWidgetRun.h, this.b.x.b());
                    WidgetRun.b(dependencyNode, horizontalWidgetRun.i, -this.b.z.b());
                    dimensionDependency.d(b);
                    return;
                }
                if (dimensionBehaviour4 == dimensionBehaviour3) {
                    dimensionDependency.d(constraintWidget6.j());
                }
            }
        } else if (this.d == dimensionBehaviour && (((constraintWidget2 = (constraintWidget = this.b).J) != null && constraintWidget2.I[0] == dimensionBehaviour3) || constraintWidget2.I[0] == dimensionBehaviour)) {
            WidgetRun.b(dependencyNode2, constraintWidget2.d.h, constraintWidget.x.b());
            WidgetRun.b(dependencyNode, constraintWidget2.d.i, -this.b.z.b());
            return;
        }
        if (dimensionDependency.j) {
            ConstraintWidget constraintWidget7 = this.b;
            if (constraintWidget7.a) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget7.F;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.d;
                if (constraintAnchor2 != null && constraintAnchorArr[1].d != null) {
                    boolean o = constraintWidget7.o();
                    ConstraintWidget constraintWidget8 = this.b;
                    if (o) {
                        dependencyNode2.f = constraintWidget8.F[0].b();
                        dependencyNode.f = -this.b.F[1].b();
                        return;
                    }
                    DependencyNode h = WidgetRun.h(constraintWidget8.F[0]);
                    if (h != null) {
                        WidgetRun.b(dependencyNode2, h, this.b.F[0].b());
                    }
                    DependencyNode h2 = WidgetRun.h(this.b.F[1]);
                    if (h2 != null) {
                        WidgetRun.b(dependencyNode, h2, -this.b.F[1].b());
                    }
                    dependencyNode2.b = true;
                    dependencyNode.b = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode h3 = WidgetRun.h(constraintAnchor);
                    if (h3 != null) {
                        WidgetRun.b(dependencyNode2, h3, this.b.F[0].b());
                        WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.d != null) {
                    DependencyNode h4 = WidgetRun.h(constraintAnchor3);
                    if (h4 != null) {
                        WidgetRun.b(dependencyNode, h4, -this.b.F[1].b());
                        WidgetRun.b(dependencyNode2, dependencyNode, -dimensionDependency.g);
                        return;
                    }
                    return;
                }
                if (!(constraintWidget7 instanceof Helper) && constraintWidget7.J != null && constraintWidget7.e(ConstraintAnchor.Type.o).d == null) {
                    ConstraintWidget constraintWidget9 = this.b;
                    WidgetRun.b(dependencyNode2, constraintWidget9.J.d.h, constraintWidget9.k());
                    WidgetRun.b(dependencyNode, dependencyNode2, dimensionDependency.g);
                    return;
                }
                return;
            }
        }
        if (this.d == dimensionBehaviour2) {
            ConstraintWidget constraintWidget10 = this.b;
            int i = constraintWidget10.j;
            VerticalWidgetRun verticalWidgetRun = constraintWidget10.e;
            if (i != 2) {
                if (i == 3) {
                    if (constraintWidget10.k == 3) {
                        dependencyNode2.a = this;
                        dependencyNode.a = this;
                        verticalWidgetRun.h.a = this;
                        verticalWidgetRun.i.a = this;
                        dimensionDependency.a = this;
                        if (constraintWidget10.p()) {
                            arrayList2.add(this.b.e.e);
                            this.b.e.e.k.add(dimensionDependency);
                            VerticalWidgetRun verticalWidgetRun2 = this.b.e;
                            verticalWidgetRun2.e.a = this;
                            arrayList2.add(verticalWidgetRun2.h);
                            arrayList2.add(this.b.e.i);
                            this.b.e.h.k.add(dimensionDependency);
                            this.b.e.i.k.add(dimensionDependency);
                        } else {
                            boolean o2 = this.b.o();
                            ConstraintWidget constraintWidget11 = this.b;
                            if (o2) {
                                constraintWidget11.e.e.l.add(dimensionDependency);
                                arrayList.add(this.b.e.e);
                            } else {
                                constraintWidget11.e.e.l.add(dimensionDependency);
                            }
                        }
                    } else {
                        DimensionDependency dimensionDependency2 = verticalWidgetRun.e;
                        arrayList2.add(dimensionDependency2);
                        dimensionDependency2.k.add(dimensionDependency);
                        this.b.e.h.k.add(dimensionDependency);
                        this.b.e.i.k.add(dimensionDependency);
                        dimensionDependency.b = true;
                        arrayList.add(dependencyNode2);
                        arrayList.add(dependencyNode);
                        dependencyNode2.l.add(dimensionDependency);
                        dependencyNode.l.add(dimensionDependency);
                    }
                }
            } else {
                ConstraintWidget constraintWidget12 = constraintWidget10.J;
                if (constraintWidget12 != null) {
                    DimensionDependency dimensionDependency3 = constraintWidget12.e.e;
                    arrayList2.add(dimensionDependency3);
                    dimensionDependency3.k.add(dimensionDependency);
                    dimensionDependency.b = true;
                    arrayList.add(dependencyNode2);
                    arrayList.add(dependencyNode);
                }
            }
        }
        ConstraintWidget constraintWidget13 = this.b;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget13.F;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.d;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].d != null) {
            boolean o3 = constraintWidget13.o();
            ConstraintWidget constraintWidget14 = this.b;
            if (o3) {
                dependencyNode2.f = constraintWidget14.F[0].b();
                dependencyNode.f = -this.b.F[1].b();
                return;
            }
            DependencyNode h5 = WidgetRun.h(constraintWidget14.F[0]);
            DependencyNode h6 = WidgetRun.h(this.b.F[1]);
            h5.b(this);
            h6.b(this);
            this.j = WidgetRun.RunType.k;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode h7 = WidgetRun.h(constraintAnchor4);
            if (h7 != null) {
                WidgetRun.b(dependencyNode2, h7, this.b.F[0].b());
                c(dependencyNode, dependencyNode2, 1, dimensionDependency);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.d != null) {
            DependencyNode h8 = WidgetRun.h(constraintAnchor6);
            if (h8 != null) {
                WidgetRun.b(dependencyNode, h8, -this.b.F[1].b());
                c(dependencyNode2, dependencyNode, -1, dimensionDependency);
                return;
            }
            return;
        }
        if (!(constraintWidget13 instanceof Helper) && (constraintWidget3 = constraintWidget13.J) != null) {
            WidgetRun.b(dependencyNode2, constraintWidget3.d.h, constraintWidget13.k());
            c(dependencyNode, dependencyNode2, 1, dimensionDependency);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void e() {
        DependencyNode dependencyNode = this.h;
        if (dependencyNode.j) {
            this.b.O = dependencyNode.g;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean k() {
        if (this.d != ConstraintWidget.DimensionBehaviour.l || this.b.j == 0) {
            return true;
        }
        return false;
    }

    public final void n() {
        this.g = false;
        DependencyNode dependencyNode = this.h;
        dependencyNode.c();
        dependencyNode.j = false;
        DependencyNode dependencyNode2 = this.i;
        dependencyNode2.c();
        dependencyNode2.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.X;
    }
}
