package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    public final ArrayList k;
    public int l;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        ConstraintWidget constraintWidget2;
        Dependency dependency;
        int i2;
        Dependency dependency2;
        ArrayList arrayList = new ArrayList();
        this.k = arrayList;
        this.f = i;
        ConstraintWidget constraintWidget3 = this.b;
        ConstraintWidget i3 = constraintWidget3.i(i);
        while (true) {
            constraintWidget2 = constraintWidget3;
            constraintWidget3 = i3;
            if (constraintWidget3 == null) {
                break;
            } else {
                i3 = constraintWidget3.i(this.f);
            }
        }
        this.b = constraintWidget2;
        int i4 = this.f;
        if (i4 == 0) {
            dependency = constraintWidget2.d;
        } else if (i4 == 1) {
            dependency = constraintWidget2.e;
        } else {
            dependency = null;
        }
        arrayList.add(dependency);
        ConstraintWidget h = constraintWidget2.h(this.f);
        while (h != null) {
            int i5 = this.f;
            if (i5 == 0) {
                dependency2 = h.d;
            } else if (i5 == 1) {
                dependency2 = h.e;
            } else {
                dependency2 = null;
            }
            arrayList.add(dependency2);
            h = h.h(this.f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it.next();
            int i6 = this.f;
            if (i6 == 0) {
                widgetRun.b.b = this;
            } else if (i6 == 1) {
                widgetRun.b.c = this;
            }
        }
        if (this.f == 0 && ((ConstraintWidgetContainer) this.b.J).h0 && arrayList.size() > 1) {
            this.b = ((WidgetRun) arrayList.get(arrayList.size() - 1)).b;
        }
        int i7 = this.f;
        ConstraintWidget constraintWidget4 = this.b;
        if (i7 == 0) {
            i2 = constraintWidget4.Y;
        } else {
            i2 = constraintWidget4.Z;
        }
        this.l = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x01a0, code lost:
    
        if (r1 != r10) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01c5, code lost:
    
        r3.d(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01c2, code lost:
    
        r17 = r17 + 1;
        r10 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01c0, code lost:
    
        if (r1 != r10) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x03b1, code lost:
    
        r0 = r0 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e4  */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Dependency dependency) {
        boolean z;
        int i;
        int i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z2;
        float f;
        int i3;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        int i8;
        float f3;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int max;
        int i18;
        int i19;
        int i20;
        boolean z3;
        boolean z4;
        int i21;
        int i22;
        DependencyNode dependencyNode = this.h;
        if (dependencyNode.j) {
            DependencyNode dependencyNode2 = this.i;
            if (dependencyNode2.j) {
                ConstraintWidget constraintWidget = this.b.J;
                if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
                    z = ((ConstraintWidgetContainer) constraintWidget).h0;
                } else {
                    z = false;
                }
                int i23 = dependencyNode2.g - dependencyNode.g;
                ArrayList arrayList = this.k;
                int size = arrayList.size();
                int i24 = 0;
                while (true) {
                    i = -1;
                    i2 = 8;
                    if (i24 < size) {
                        if (((WidgetRun) arrayList.get(i24)).b.W != 8) {
                            break;
                        } else {
                            i24++;
                        }
                    } else {
                        i24 = -1;
                        break;
                    }
                }
                int i25 = size - 1;
                int i26 = i25;
                while (true) {
                    if (i26 < 0) {
                        break;
                    }
                    if (((WidgetRun) arrayList.get(i26)).b.W != 8) {
                        i = i26;
                        break;
                    }
                    i26--;
                }
                int i27 = 0;
                while (true) {
                    dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
                    if (i27 < 2) {
                        f = 0.0f;
                        int i28 = 0;
                        i5 = 0;
                        i19 = 0;
                        i20 = 0;
                        while (i28 < size) {
                            WidgetRun widgetRun = (WidgetRun) arrayList.get(i28);
                            boolean z5 = z;
                            ConstraintWidget constraintWidget2 = widgetRun.b;
                            int i29 = i27;
                            if (constraintWidget2.W != i2) {
                                i20++;
                                if (i28 > 0 && i28 >= i24) {
                                    i5 += widgetRun.h.f;
                                }
                                DimensionDependency dimensionDependency = widgetRun.e;
                                int i30 = dimensionDependency.g;
                                if (widgetRun.d != dimensionBehaviour) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                                if (z3) {
                                    int i31 = this.f;
                                    z4 = z3;
                                    if (i31 != 0 || constraintWidget2.d.e.j) {
                                        if (i31 != 1 || constraintWidget2.e.e.j) {
                                            i21 = i5;
                                        } else {
                                            return;
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    z4 = z3;
                                    i21 = i5;
                                    if (widgetRun.a == 1 && i29 == 0) {
                                        i22 = dimensionDependency.m;
                                        i19++;
                                    } else if (dimensionDependency.j) {
                                        i22 = i30;
                                    }
                                    z4 = true;
                                    if (z4) {
                                        i19++;
                                        float f4 = constraintWidget2.a0[this.f];
                                        if (f4 >= 0.0f) {
                                            f += f4;
                                        }
                                        i5 = i21;
                                    } else {
                                        i5 = i21 + i22;
                                    }
                                    if (i28 < i25 && i28 < i) {
                                        i5 += -widgetRun.i.f;
                                    }
                                }
                                i22 = i30;
                                if (z4) {
                                }
                                if (i28 < i25) {
                                    i5 += -widgetRun.i.f;
                                }
                            }
                            i28++;
                            z = z5;
                            i27 = i29;
                            i2 = 8;
                        }
                        z2 = z;
                        int i32 = i27;
                        if (i5 < i23 || i19 == 0) {
                            break;
                        }
                        i27 = i32 + 1;
                        z = z2;
                        i2 = 8;
                    } else {
                        z2 = z;
                        f = 0.0f;
                        i3 = 0;
                        i4 = 0;
                        i5 = 0;
                        break;
                    }
                }
                i3 = i19;
                i4 = i20;
                int i33 = dependencyNode.g;
                if (z2) {
                    i33 = dependencyNode2.g;
                }
                float f5 = 0.5f;
                if (i5 > i23) {
                    if (z2) {
                        i33 += (int) (((i5 - i23) / 2.0f) + 0.5f);
                    } else {
                        i33 -= (int) (((i5 - i23) / 2.0f) + 0.5f);
                    }
                }
                if (i3 > 0) {
                    float f6 = i23 - i5;
                    int i34 = (int) ((f6 / i3) + 0.5f);
                    int i35 = 0;
                    int i36 = 0;
                    while (i35 < size) {
                        float f7 = f5;
                        WidgetRun widgetRun2 = (WidgetRun) arrayList.get(i35);
                        int i37 = i33;
                        ConstraintWidget constraintWidget3 = widgetRun2.b;
                        int i38 = i3;
                        DimensionDependency dimensionDependency2 = widgetRun2.e;
                        float f8 = f6;
                        int i39 = i34;
                        if (constraintWidget3.W == 8 || widgetRun2.d != dimensionBehaviour || dimensionDependency2.j) {
                            i16 = i35;
                        } else {
                            if (f > 0.0f) {
                                i15 = (int) (((constraintWidget3.a0[this.f] * f8) / f) + f7);
                            } else {
                                i15 = i39;
                            }
                            if (this.f == 0) {
                                int i40 = constraintWidget3.n;
                                int i41 = constraintWidget3.m;
                                i16 = i35;
                                if (widgetRun2.a == 1) {
                                    i18 = Math.min(i15, dimensionDependency2.m);
                                } else {
                                    i18 = i15;
                                }
                                max = Math.max(i41, i18);
                                if (i40 > 0) {
                                    max = Math.min(i40, max);
                                }
                            } else {
                                i16 = i35;
                                int i42 = constraintWidget3.q;
                                int i43 = constraintWidget3.p;
                                if (widgetRun2.a == 1) {
                                    i17 = Math.min(i15, dimensionDependency2.m);
                                } else {
                                    i17 = i15;
                                }
                                max = Math.max(i43, i17);
                                if (i42 > 0) {
                                    max = Math.min(i42, max);
                                }
                            }
                        }
                        i35 = i16 + 1;
                        i33 = i37;
                        f5 = f7;
                        i3 = i38;
                        f6 = f8;
                        i34 = i39;
                    }
                    i6 = i33;
                    f2 = f5;
                    int i44 = i3;
                    if (i36 > 0) {
                        i3 = i44 - i36;
                        i5 = 0;
                        for (int i45 = 0; i45 < size; i45++) {
                            WidgetRun widgetRun3 = (WidgetRun) arrayList.get(i45);
                            if (widgetRun3.b.W != 8) {
                                if (i45 > 0 && i45 >= i24) {
                                    i5 += widgetRun3.h.f;
                                }
                                i5 += widgetRun3.e.g;
                                if (i45 < i25 && i45 < i) {
                                    i5 += -widgetRun3.i.f;
                                }
                            }
                        }
                    } else {
                        i3 = i44;
                    }
                    i8 = 2;
                    if (this.l == 2 && i36 == 0) {
                        i7 = 0;
                        this.l = 0;
                    } else {
                        i7 = 0;
                    }
                } else {
                    i6 = i33;
                    f2 = 0.5f;
                    i7 = 0;
                    i8 = 2;
                }
                if (i5 > i23) {
                    this.l = i8;
                }
                if (i4 > 0 && i3 == 0 && i24 == i) {
                    this.l = i8;
                }
                int i46 = this.l;
                if (i46 == 1) {
                    if (i4 > 1) {
                        i13 = (i23 - i5) / (i4 - 1);
                    } else if (i4 == 1) {
                        i13 = (i23 - i5) / 2;
                    } else {
                        i13 = i7;
                    }
                    if (i3 > 0) {
                        i13 = i7;
                    }
                    int i47 = i6;
                    for (int i48 = i7; i48 < size; i48++) {
                        if (z2) {
                            i14 = size - (i48 + 1);
                        } else {
                            i14 = i48;
                        }
                        WidgetRun widgetRun4 = (WidgetRun) arrayList.get(i14);
                        ConstraintWidget constraintWidget4 = widgetRun4.b;
                        DependencyNode dependencyNode3 = widgetRun4.i;
                        DependencyNode dependencyNode4 = widgetRun4.h;
                        if (constraintWidget4.W == 8) {
                            dependencyNode4.d(i47);
                            dependencyNode3.d(i47);
                        } else {
                            if (i48 > 0) {
                                if (z2) {
                                    i47 -= i13;
                                } else {
                                    i47 += i13;
                                }
                            }
                            if (i48 > 0 && i48 >= i24) {
                                if (z2) {
                                    i47 -= dependencyNode4.f;
                                } else {
                                    i47 += dependencyNode4.f;
                                }
                            }
                            if (z2) {
                                dependencyNode3.d(i47);
                            } else {
                                dependencyNode4.d(i47);
                            }
                            DimensionDependency dimensionDependency3 = widgetRun4.e;
                            int i49 = dimensionDependency3.g;
                            if (widgetRun4.d == dimensionBehaviour && widgetRun4.a == 1) {
                                i49 = dimensionDependency3.m;
                            }
                            if (z2) {
                                i47 -= i49;
                            } else {
                                i47 += i49;
                            }
                            if (z2) {
                                dependencyNode4.d(i47);
                            } else {
                                dependencyNode3.d(i47);
                            }
                            widgetRun4.g = true;
                            if (i48 < i25 && i48 < i) {
                                if (z2) {
                                    i47 -= -dependencyNode3.f;
                                } else {
                                    i47 += -dependencyNode3.f;
                                }
                            }
                        }
                    }
                    return;
                }
                if (i46 == 0) {
                    int i50 = (i23 - i5) / (i4 + 1);
                    if (i3 > 0) {
                        i50 = i7;
                    }
                    int i51 = i6;
                    for (int i52 = i7; i52 < size; i52++) {
                        if (z2) {
                            i11 = size - (i52 + 1);
                        } else {
                            i11 = i52;
                        }
                        WidgetRun widgetRun5 = (WidgetRun) arrayList.get(i11);
                        ConstraintWidget constraintWidget5 = widgetRun5.b;
                        DependencyNode dependencyNode5 = widgetRun5.i;
                        DependencyNode dependencyNode6 = widgetRun5.h;
                        if (constraintWidget5.W == 8) {
                            dependencyNode6.d(i51);
                            dependencyNode5.d(i51);
                        } else {
                            if (z2) {
                                i12 = i51 - i50;
                            } else {
                                i12 = i51 + i50;
                            }
                            if (i52 > 0 && i52 >= i24) {
                                if (z2) {
                                    i12 -= dependencyNode6.f;
                                } else {
                                    i12 += dependencyNode6.f;
                                }
                            }
                            if (z2) {
                                dependencyNode5.d(i12);
                            } else {
                                dependencyNode6.d(i12);
                            }
                            DimensionDependency dimensionDependency4 = widgetRun5.e;
                            int i53 = dimensionDependency4.g;
                            if (widgetRun5.d == dimensionBehaviour && widgetRun5.a == 1) {
                                i53 = Math.min(i53, dimensionDependency4.m);
                            }
                            if (z2) {
                                i51 = i12 - i53;
                            } else {
                                i51 = i12 + i53;
                            }
                            if (z2) {
                                dependencyNode6.d(i51);
                            } else {
                                dependencyNode5.d(i51);
                            }
                            if (i52 < i25 && i52 < i) {
                                if (z2) {
                                    i51 -= -dependencyNode5.f;
                                } else {
                                    i51 += -dependencyNode5.f;
                                }
                            }
                        }
                    }
                    return;
                }
                if (i46 == 2) {
                    int i54 = this.f;
                    ConstraintWidget constraintWidget6 = this.b;
                    if (i54 == 0) {
                        f3 = constraintWidget6.T;
                    } else {
                        f3 = constraintWidget6.U;
                    }
                    if (z2) {
                        f3 = 1.0f - f3;
                    }
                    int i55 = (int) (((i23 - i5) * f3) + f2);
                    if (i55 < 0 || i3 > 0) {
                        i55 = i7;
                    }
                    if (z2) {
                        i9 = i6 - i55;
                    } else {
                        i9 = i6 + i55;
                    }
                    for (int i56 = i7; i56 < size; i56++) {
                        if (z2) {
                            i10 = size - (i56 + 1);
                        } else {
                            i10 = i56;
                        }
                        WidgetRun widgetRun6 = (WidgetRun) arrayList.get(i10);
                        ConstraintWidget constraintWidget7 = widgetRun6.b;
                        DependencyNode dependencyNode7 = widgetRun6.i;
                        DependencyNode dependencyNode8 = widgetRun6.h;
                        if (constraintWidget7.W == 8) {
                            dependencyNode8.d(i9);
                            dependencyNode7.d(i9);
                        } else {
                            if (i56 > 0 && i56 >= i24) {
                                if (z2) {
                                    i9 -= dependencyNode8.f;
                                } else {
                                    i9 += dependencyNode8.f;
                                }
                            }
                            if (z2) {
                                dependencyNode7.d(i9);
                            } else {
                                dependencyNode8.d(i9);
                            }
                            DimensionDependency dimensionDependency5 = widgetRun6.e;
                            int i57 = dimensionDependency5.g;
                            if (widgetRun6.d == dimensionBehaviour && widgetRun6.a == 1) {
                                i57 = dimensionDependency5.m;
                            }
                            i9 += i57;
                            if (z2) {
                                dependencyNode8.d(i9);
                            } else {
                                dependencyNode7.d(i9);
                            }
                            if (i56 < i25 && i56 < i) {
                                if (z2) {
                                    i9 -= -dependencyNode7.f;
                                } else {
                                    i9 += -dependencyNode7.f;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void d() {
        ArrayList arrayList = this.k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(0)).b;
        ConstraintWidget constraintWidget2 = ((WidgetRun) arrayList.get(size - 1)).b;
        int i = this.f;
        DependencyNode dependencyNode = this.i;
        DependencyNode dependencyNode2 = this.h;
        if (i == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.x;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.z;
            DependencyNode i2 = WidgetRun.i(constraintAnchor, 0);
            int b = constraintAnchor.b();
            ConstraintWidget m = m();
            if (m != null) {
                b = m.x.b();
            }
            if (i2 != null) {
                WidgetRun.b(dependencyNode2, i2, b);
            }
            DependencyNode i3 = WidgetRun.i(constraintAnchor2, 0);
            int b2 = constraintAnchor2.b();
            ConstraintWidget n = n();
            if (n != null) {
                b2 = n.z.b();
            }
            if (i3 != null) {
                WidgetRun.b(dependencyNode, i3, -b2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.y;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.A;
            DependencyNode i4 = WidgetRun.i(constraintAnchor3, 1);
            int b3 = constraintAnchor3.b();
            ConstraintWidget m2 = m();
            if (m2 != null) {
                b3 = m2.y.b();
            }
            if (i4 != null) {
                WidgetRun.b(dependencyNode2, i4, b3);
            }
            DependencyNode i5 = WidgetRun.i(constraintAnchor4, 1);
            int b4 = constraintAnchor4.b();
            ConstraintWidget n2 = n();
            if (n2 != null) {
                b4 = n2.A.b();
            }
            if (i5 != null) {
                WidgetRun.b(dependencyNode, i5, -b4);
            }
        }
        dependencyNode2.a = this;
        dependencyNode.a = this;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                ((WidgetRun) arrayList.get(i)).e();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final void f() {
        this.c = null;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((WidgetRun) it.next()).f();
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final long j() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r4.i.f + ((WidgetRun) arrayList.get(i)).j() + j + r4.h.f;
        }
        return j;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public final boolean k() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((WidgetRun) arrayList.get(i)).k()) {
                return false;
            }
        }
        return true;
    }

    public final ConstraintWidget m() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i < arrayList.size()) {
                ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(i)).b;
                if (constraintWidget.W != 8) {
                    return constraintWidget;
                }
                i++;
            } else {
                return null;
            }
        }
    }

    public final ConstraintWidget n() {
        ArrayList arrayList = this.k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ConstraintWidget constraintWidget = ((WidgetRun) arrayList.get(size)).b;
            if (constraintWidget.W != 8) {
                return constraintWidget;
            }
        }
        return null;
    }

    public final String toString() {
        String str;
        if (this.f == 0) {
            str = "horizontal : ";
        } else {
            str = "vertical : ";
        }
        String concat = "ChainRun ".concat(str);
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it.next();
            concat = (concat.concat("<") + widgetRun).concat("> ");
        }
        return concat;
    }
}
