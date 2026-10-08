package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DependencyGraph {
    public ConstraintWidgetContainer a;
    public boolean b;
    public boolean c;
    public ConstraintWidgetContainer d;
    public ArrayList e;
    public BasicMeasure.Measurer f;
    public BasicMeasure.Measure g;
    public ArrayList h;

    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, androidx.constraintlayout.solver.widgets.analyzer.RunGroup] */
    public final void a(DependencyNode dependencyNode, int i, ArrayList arrayList, RunGroup runGroup) {
        WidgetRun widgetRun = dependencyNode.d;
        RunGroup runGroup2 = widgetRun.c;
        DependencyNode dependencyNode2 = widgetRun.i;
        DependencyNode dependencyNode3 = widgetRun.h;
        if (runGroup2 == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.a;
            if (widgetRun != constraintWidgetContainer.d) {
                RunGroup runGroup3 = runGroup;
                if (widgetRun != constraintWidgetContainer.e) {
                    if (runGroup == null) {
                        ?? obj = new Object();
                        obj.a = null;
                        obj.b = new ArrayList();
                        obj.a = widgetRun;
                        arrayList.add(obj);
                        runGroup3 = obj;
                    }
                    widgetRun.c = runGroup3;
                    runGroup3.b.add(widgetRun);
                    Iterator it = dependencyNode3.k.iterator();
                    while (it.hasNext()) {
                        Dependency dependency = (Dependency) it.next();
                        if (dependency instanceof DependencyNode) {
                            a((DependencyNode) dependency, i, arrayList, runGroup3);
                        }
                    }
                    Iterator it2 = dependencyNode2.k.iterator();
                    while (it2.hasNext()) {
                        Dependency dependency2 = (Dependency) it2.next();
                        if (dependency2 instanceof DependencyNode) {
                            a((DependencyNode) dependency2, i, arrayList, runGroup3);
                        }
                    }
                    if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                        Iterator it3 = ((VerticalWidgetRun) widgetRun).k.k.iterator();
                        while (it3.hasNext()) {
                            Dependency dependency3 = (Dependency) it3.next();
                            if (dependency3 instanceof DependencyNode) {
                                a((DependencyNode) dependency3, i, arrayList, runGroup3);
                            }
                        }
                    }
                    Iterator it4 = dependencyNode3.l.iterator();
                    while (it4.hasNext()) {
                        a((DependencyNode) it4.next(), i, arrayList, runGroup3);
                    }
                    Iterator it5 = dependencyNode2.l.iterator();
                    while (it5.hasNext()) {
                        a((DependencyNode) it5.next(), i, arrayList, runGroup3);
                    }
                    if (i == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                        Iterator it6 = ((VerticalWidgetRun) widgetRun).k.l.iterator();
                        while (it6.hasNext()) {
                            a((DependencyNode) it6.next(), i, arrayList, runGroup3);
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ConstraintWidgetContainer constraintWidgetContainer) {
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr;
        ConstraintAnchor[] constraintAnchorArr;
        DimensionDependency dimensionDependency;
        DimensionDependency dimensionDependency2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        int i;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7;
        int i2;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour8;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour9;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour11;
        ArrayList arrayList = constraintWidgetContainer.d0;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidgetContainer.I;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = constraintWidget.I;
            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.F;
            ConstraintAnchor constraintAnchor = constraintWidget.A;
            ConstraintAnchor constraintAnchor2 = constraintWidget.y;
            ConstraintAnchor constraintAnchor3 = constraintWidget.z;
            ConstraintAnchor constraintAnchor4 = constraintWidget.x;
            VerticalWidgetRun verticalWidgetRun = constraintWidget.e;
            HorizontalWidgetRun horizontalWidgetRun = constraintWidget.d;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour12 = dimensionBehaviourArr3[0];
            ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = dimensionBehaviourArr3[1];
            if (constraintWidget.W == 8) {
                constraintWidget.a = true;
            } else {
                float f = constraintWidget.o;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.l;
                if (f < 1.0f && dimensionBehaviour12 == dimensionBehaviour14) {
                    constraintWidget.j = 2;
                }
                float f2 = constraintWidget.r;
                if (f2 < 1.0f && dimensionBehaviour13 == dimensionBehaviour14) {
                    constraintWidget.k = 2;
                }
                float f3 = constraintWidget.M;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.k;
                Iterator it2 = it;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = ConstraintWidget.DimensionBehaviour.j;
                if (f3 > 0.0f) {
                    if (dimensionBehaviour12 == dimensionBehaviour14 && (dimensionBehaviour13 == dimensionBehaviour15 || dimensionBehaviour13 == dimensionBehaviour16)) {
                        dimensionBehaviourArr = dimensionBehaviourArr2;
                        constraintWidget.j = 3;
                    } else {
                        dimensionBehaviourArr = dimensionBehaviourArr2;
                        if (dimensionBehaviour13 == dimensionBehaviour14 && (dimensionBehaviour12 == dimensionBehaviour15 || dimensionBehaviour12 == dimensionBehaviour16)) {
                            constraintWidget.k = 3;
                        } else if (dimensionBehaviour12 == dimensionBehaviour14 && dimensionBehaviour13 == dimensionBehaviour14) {
                            constraintAnchorArr = constraintAnchorArr2;
                            if (constraintWidget.j == 0) {
                                constraintWidget.j = 3;
                            }
                            if (constraintWidget.k == 0) {
                                constraintWidget.k = 3;
                            }
                            if (dimensionBehaviour12 == dimensionBehaviour14 && constraintWidget.j == 1 && (constraintAnchor4.d == null || constraintAnchor3.d == null)) {
                                dimensionBehaviour12 = dimensionBehaviour15;
                            }
                            if (dimensionBehaviour13 == dimensionBehaviour14 && constraintWidget.k == 1 && (constraintAnchor2.d == null || constraintAnchor.d == null)) {
                                dimensionBehaviour13 = dimensionBehaviour15;
                            }
                            horizontalWidgetRun.d = dimensionBehaviour12;
                            dimensionDependency = horizontalWidgetRun.e;
                            int i3 = constraintWidget.j;
                            horizontalWidgetRun.a = i3;
                            verticalWidgetRun.d = dimensionBehaviour13;
                            dimensionDependency2 = verticalWidgetRun.e;
                            int i4 = constraintWidget.k;
                            verticalWidgetRun.a = i4;
                            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.m;
                            if ((dimensionBehaviour12 != dimensionBehaviour || dimensionBehaviour12 == dimensionBehaviour16 || dimensionBehaviour12 == dimensionBehaviour15) && (dimensionBehaviour13 == dimensionBehaviour || dimensionBehaviour13 == dimensionBehaviour16 || dimensionBehaviour13 == dimensionBehaviour15)) {
                                dimensionBehaviour2 = dimensionBehaviour12;
                                int j = constraintWidget.j();
                                if (dimensionBehaviour2 == dimensionBehaviour) {
                                    j = (constraintWidgetContainer.j() - constraintAnchor4.e) - constraintAnchor3.e;
                                    dimensionBehaviour2 = dimensionBehaviour16;
                                }
                                int g = constraintWidget.g();
                                if (dimensionBehaviour13 != dimensionBehaviour) {
                                    i = (constraintWidgetContainer.g() - constraintAnchor2.e) - constraintAnchor.e;
                                    dimensionBehaviour3 = dimensionBehaviour16;
                                } else {
                                    i = g;
                                    dimensionBehaviour3 = dimensionBehaviour13;
                                }
                                h(constraintWidget, dimensionBehaviour2, j, dimensionBehaviour3, i);
                                dimensionDependency.d(constraintWidget.j());
                                dimensionDependency2.d(constraintWidget.g());
                                constraintWidget.a = true;
                            } else {
                                if (dimensionBehaviour12 != dimensionBehaviour14 || (dimensionBehaviour13 != dimensionBehaviour15 && dimensionBehaviour13 != dimensionBehaviour16)) {
                                    dimensionBehaviour4 = dimensionBehaviour15;
                                    dimensionBehaviour5 = dimensionBehaviour13;
                                } else if (i3 == 3) {
                                    if (dimensionBehaviour13 == dimensionBehaviour15) {
                                        h(constraintWidget, dimensionBehaviour15, 0, dimensionBehaviour15, 0);
                                    }
                                    int g2 = constraintWidget.g();
                                    h(constraintWidget, dimensionBehaviour16, (int) ((g2 * constraintWidget.M) + 0.5f), dimensionBehaviour16, g2);
                                    dimensionDependency.d(constraintWidget.j());
                                    dimensionDependency2.d(constraintWidget.g());
                                    constraintWidget.a = true;
                                } else {
                                    dimensionBehaviour4 = dimensionBehaviour15;
                                    if (i3 == 1) {
                                        h(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour13, 0);
                                        dimensionDependency.m = constraintWidget.j();
                                    } else {
                                        ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = dimensionBehaviour13;
                                        if (i3 == 2) {
                                            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = dimensionBehaviourArr[0];
                                            if (dimensionBehaviour18 != dimensionBehaviour16 && dimensionBehaviour18 != dimensionBehaviour) {
                                                dimensionBehaviour16 = dimensionBehaviour16;
                                                dimensionBehaviour5 = dimensionBehaviour17;
                                            } else {
                                                h(constraintWidget, dimensionBehaviour16, (int) ((f * constraintWidgetContainer.j()) + 0.5f), dimensionBehaviour17, constraintWidget.g());
                                                dimensionDependency.d(constraintWidget.j());
                                                dimensionDependency2.d(constraintWidget.g());
                                                constraintWidget.a = true;
                                            }
                                        } else {
                                            dimensionBehaviour16 = dimensionBehaviour16;
                                            dimensionBehaviour5 = dimensionBehaviour17;
                                            if (constraintAnchorArr[0].d == null || constraintAnchorArr[1].d == null) {
                                                h(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour5, 0);
                                                dimensionDependency.d(constraintWidget.j());
                                                dimensionDependency2.d(constraintWidget.g());
                                                constraintWidget.a = true;
                                            }
                                        }
                                    }
                                }
                                if (dimensionBehaviour5 != dimensionBehaviour14 || (dimensionBehaviour12 != dimensionBehaviour4 && dimensionBehaviour12 != dimensionBehaviour16)) {
                                    dimensionBehaviour6 = dimensionBehaviour4;
                                    dimensionBehaviour7 = dimensionBehaviour5;
                                    i2 = 1;
                                    dimensionBehaviour8 = dimensionBehaviour16;
                                    dimensionBehaviour9 = dimensionBehaviour12;
                                } else if (i4 == 3) {
                                    if (dimensionBehaviour12 == dimensionBehaviour4) {
                                        h(constraintWidget, dimensionBehaviour4, 0, dimensionBehaviour4, 0);
                                    }
                                    int j2 = constraintWidget.j();
                                    float f4 = constraintWidget.M;
                                    if (constraintWidget.N == -1) {
                                        f4 = 1.0f / f4;
                                    }
                                    h(constraintWidget, dimensionBehaviour16, j2, dimensionBehaviour16, (int) ((j2 * f4) + 0.5f));
                                    dimensionDependency.d(constraintWidget.j());
                                    dimensionDependency2.d(constraintWidget.g());
                                    constraintWidget.a = true;
                                } else if (i4 == 1) {
                                    h(constraintWidget, dimensionBehaviour12, 0, dimensionBehaviour4, 0);
                                    dimensionDependency2.m = constraintWidget.g();
                                } else {
                                    dimensionBehaviour6 = dimensionBehaviour4;
                                    ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviour12;
                                    if (i4 == 2) {
                                        ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = dimensionBehaviourArr[1];
                                        if (dimensionBehaviour20 != dimensionBehaviour16 && dimensionBehaviour20 != dimensionBehaviour) {
                                            dimensionBehaviour8 = dimensionBehaviour16;
                                            dimensionBehaviour9 = dimensionBehaviour19;
                                            dimensionBehaviour7 = dimensionBehaviour5;
                                            i2 = 1;
                                        } else {
                                            h(constraintWidget, dimensionBehaviour19, constraintWidget.j(), dimensionBehaviour16, (int) ((f2 * constraintWidgetContainer.g()) + 0.5f));
                                            dimensionDependency.d(constraintWidget.j());
                                            dimensionDependency2.d(constraintWidget.g());
                                            constraintWidget.a = true;
                                        }
                                    } else {
                                        dimensionBehaviour8 = dimensionBehaviour16;
                                        dimensionBehaviour9 = dimensionBehaviour19;
                                        if (constraintAnchorArr[2].d == null || constraintAnchorArr[3].d == null) {
                                            h(constraintWidget, dimensionBehaviour6, 0, dimensionBehaviour5, 0);
                                            dimensionDependency.d(constraintWidget.j());
                                            dimensionDependency2.d(constraintWidget.g());
                                            constraintWidget.a = true;
                                        }
                                        dimensionBehaviour7 = dimensionBehaviour5;
                                        i2 = 1;
                                    }
                                }
                                if (dimensionBehaviour9 == dimensionBehaviour14 && dimensionBehaviour7 == dimensionBehaviour14) {
                                    if (i3 == i2 || i4 == i2) {
                                        ConstraintWidget.DimensionBehaviour dimensionBehaviour21 = dimensionBehaviour6;
                                        h(constraintWidget, dimensionBehaviour21, 0, dimensionBehaviour21, 0);
                                        dimensionDependency.m = constraintWidget.j();
                                        dimensionDependency2.m = constraintWidget.g();
                                    } else if (i4 == 2 && i3 == 2 && (((dimensionBehaviour10 = dimensionBehaviourArr[0]) == dimensionBehaviour8 || dimensionBehaviour10 == dimensionBehaviour8) && ((dimensionBehaviour11 = dimensionBehaviourArr[i2]) == dimensionBehaviour8 || dimensionBehaviour11 == dimensionBehaviour8))) {
                                        h(constraintWidget, dimensionBehaviour8, (int) ((f * constraintWidgetContainer.j()) + 0.5f), dimensionBehaviour8, (int) ((f2 * constraintWidgetContainer.g()) + 0.5f));
                                        dimensionDependency.d(constraintWidget.j());
                                        dimensionDependency2.d(constraintWidget.g());
                                        constraintWidget.a = true;
                                    }
                                }
                            }
                            dimensionBehaviourArr2 = dimensionBehaviourArr;
                            it = it2;
                        }
                    }
                } else {
                    dimensionBehaviourArr = dimensionBehaviourArr2;
                }
                constraintAnchorArr = constraintAnchorArr2;
                if (dimensionBehaviour12 == dimensionBehaviour14) {
                    dimensionBehaviour12 = dimensionBehaviour15;
                }
                if (dimensionBehaviour13 == dimensionBehaviour14) {
                    dimensionBehaviour13 = dimensionBehaviour15;
                }
                horizontalWidgetRun.d = dimensionBehaviour12;
                dimensionDependency = horizontalWidgetRun.e;
                int i32 = constraintWidget.j;
                horizontalWidgetRun.a = i32;
                verticalWidgetRun.d = dimensionBehaviour13;
                dimensionDependency2 = verticalWidgetRun.e;
                int i42 = constraintWidget.k;
                verticalWidgetRun.a = i42;
                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.m;
                if (dimensionBehaviour12 != dimensionBehaviour) {
                }
                dimensionBehaviour2 = dimensionBehaviour12;
                int j3 = constraintWidget.j();
                if (dimensionBehaviour2 == dimensionBehaviour) {
                }
                int g3 = constraintWidget.g();
                if (dimensionBehaviour13 != dimensionBehaviour) {
                }
                h(constraintWidget, dimensionBehaviour2, j3, dimensionBehaviour3, i);
                dimensionDependency.d(constraintWidget.j());
                dimensionDependency2.d(constraintWidget.g());
                constraintWidget.a = true;
                dimensionBehaviourArr2 = dimensionBehaviourArr;
                it = it2;
            }
        }
    }

    public final void c() {
        ConstraintWidgetContainer constraintWidgetContainer = this.a;
        ArrayList arrayList = this.h;
        ArrayList arrayList2 = this.e;
        arrayList2.clear();
        ConstraintWidgetContainer constraintWidgetContainer2 = this.d;
        constraintWidgetContainer2.d.f();
        VerticalWidgetRun verticalWidgetRun = constraintWidgetContainer2.e;
        verticalWidgetRun.f();
        arrayList2.add(constraintWidgetContainer2.d);
        arrayList2.add(verticalWidgetRun);
        Iterator it = constraintWidgetContainer2.d0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            if (constraintWidget instanceof Guideline) {
                WidgetRun widgetRun = new WidgetRun(constraintWidget);
                constraintWidget.d.f();
                constraintWidget.e.f();
                widgetRun.f = ((Guideline) constraintWidget).h0;
                arrayList2.add(widgetRun);
            } else {
                if (constraintWidget.o()) {
                    if (constraintWidget.b == null) {
                        constraintWidget.b = new ChainRun(constraintWidget, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.b);
                } else {
                    arrayList2.add(constraintWidget.d);
                }
                if (constraintWidget.p()) {
                    if (constraintWidget.c == null) {
                        constraintWidget.c = new ChainRun(constraintWidget, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget.c);
                } else {
                    arrayList2.add(constraintWidget.e);
                }
                if (constraintWidget instanceof HelperWidget) {
                    arrayList2.add(new WidgetRun(constraintWidget));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((WidgetRun) it2.next()).f();
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            WidgetRun widgetRun2 = (WidgetRun) it3.next();
            if (widgetRun2.b != constraintWidgetContainer2) {
                widgetRun2.d();
            }
        }
        arrayList.clear();
        g(constraintWidgetContainer.d, 0, arrayList);
        g(constraintWidgetContainer.e, 1, arrayList);
        this.b = false;
    }

    public final int d(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        ArrayList arrayList;
        int i2;
        long j;
        float f;
        long j2;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        ArrayList arrayList2 = this.h;
        int size = arrayList2.size();
        long j3 = 0;
        int i3 = 0;
        long j4 = 0;
        while (i3 < size) {
            WidgetRun widgetRun3 = ((RunGroup) arrayList2.get(i3)).a;
            if (!(widgetRun3 instanceof ChainRun) ? !(i != 0 ? (widgetRun3 instanceof VerticalWidgetRun) : (widgetRun3 instanceof HorizontalWidgetRun)) : ((ChainRun) widgetRun3).f != i) {
                arrayList = arrayList2;
                j = j3;
                i2 = i3;
            } else {
                if (i == 0) {
                    widgetRun = constraintWidgetContainer2.d;
                } else {
                    widgetRun = constraintWidgetContainer2.e;
                }
                DependencyNode dependencyNode = widgetRun.h;
                if (i == 0) {
                    widgetRun2 = constraintWidgetContainer2.d;
                } else {
                    widgetRun2 = constraintWidgetContainer2.e;
                }
                DependencyNode dependencyNode2 = widgetRun2.i;
                DependencyNode dependencyNode3 = widgetRun3.h;
                DependencyNode dependencyNode4 = widgetRun3.i;
                boolean contains = dependencyNode3.l.contains(dependencyNode);
                boolean contains2 = dependencyNode4.l.contains(dependencyNode2);
                long j5 = widgetRun3.j();
                if (contains && contains2) {
                    long b = RunGroup.b(dependencyNode3, j3);
                    arrayList = arrayList2;
                    long a = RunGroup.a(dependencyNode4, j3);
                    long j6 = b - j5;
                    int i4 = dependencyNode4.f;
                    i2 = i3;
                    if (j6 >= (-i4)) {
                        j6 += i4;
                    }
                    long j7 = dependencyNode3.f;
                    long j8 = ((-a) - j5) - j7;
                    if (j8 >= j7) {
                        j8 -= j7;
                    }
                    ConstraintWidget constraintWidget = widgetRun3.b;
                    if (i == 0) {
                        f = constraintWidget.T;
                    } else if (i == 1) {
                        f = constraintWidget.U;
                    } else {
                        constraintWidget.getClass();
                        f = -1.0f;
                    }
                    if (f > 0.0f) {
                        j2 = (((float) j6) / (1.0f - f)) + (((float) j8) / f);
                    } else {
                        j2 = 0;
                    }
                    float f2 = (float) j2;
                    j = (dependencyNode3.f + ((((f2 * f) + 0.5f) + j5) + (((1.0f - f) * f2) + 0.5f))) - dependencyNode4.f;
                } else {
                    arrayList = arrayList2;
                    i2 = i3;
                    if (contains) {
                        j = Math.max(RunGroup.b(dependencyNode3, dependencyNode3.f), dependencyNode3.f + j5);
                    } else if (contains2) {
                        j = Math.max(-RunGroup.a(dependencyNode4, dependencyNode4.f), (-dependencyNode4.f) + j5);
                    } else {
                        j = (widgetRun3.j() + dependencyNode3.f) - dependencyNode4.f;
                    }
                }
            }
            j4 = Math.max(j4, j);
            i3 = i2 + 1;
            arrayList2 = arrayList;
            constraintWidgetContainer2 = constraintWidgetContainer;
            j3 = 0;
        }
        return (int) j4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    public final boolean e(boolean z) {
        boolean z2;
        ?? r16;
        boolean z3;
        boolean z4;
        ArrayList arrayList = this.e;
        ConstraintWidgetContainer constraintWidgetContainer = this.a;
        if (this.b || this.c) {
            Iterator it = constraintWidgetContainer.d0.iterator();
            while (it.hasNext()) {
                ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
                constraintWidget.a = false;
                constraintWidget.d.n();
                constraintWidget.e.m();
            }
            constraintWidgetContainer.a = false;
            constraintWidgetContainer.d.n();
            constraintWidgetContainer.e.m();
            this.c = false;
        }
        b(this.d);
        constraintWidgetContainer.O = 0;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer.I;
        VerticalWidgetRun verticalWidgetRun = constraintWidgetContainer.e;
        HorizontalWidgetRun horizontalWidgetRun = constraintWidgetContainer.d;
        constraintWidgetContainer.P = 0;
        ConstraintWidget.DimensionBehaviour f = constraintWidgetContainer.f(0);
        ConstraintWidget.DimensionBehaviour f2 = constraintWidgetContainer.f(1);
        if (this.b) {
            c();
        }
        int k = constraintWidgetContainer.k();
        int l = constraintWidgetContainer.l();
        horizontalWidgetRun.h.d(k);
        verticalWidgetRun.h.d(l);
        i();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.j;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.k;
        if (f != dimensionBehaviour2 && f2 != dimensionBehaviour2) {
            r16 = 0;
        } else {
            if (z) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (!((WidgetRun) it2.next()).k()) {
                        z2 = false;
                        break;
                    }
                }
            }
            z2 = z;
            if (z2 && f == dimensionBehaviour2) {
                constraintWidgetContainer.t(dimensionBehaviour);
                constraintWidgetContainer.v(d(constraintWidgetContainer, 0));
                r16 = 0;
                horizontalWidgetRun.e.d(constraintWidgetContainer.j());
            } else {
                r16 = 0;
            }
            if (z2 && f2 == dimensionBehaviour2) {
                constraintWidgetContainer.u(dimensionBehaviour);
                constraintWidgetContainer.s(d(constraintWidgetContainer, 1));
                verticalWidgetRun.e.d(constraintWidgetContainer.g());
            }
        }
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[r16];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.m;
        if (dimensionBehaviour3 != dimensionBehaviour && dimensionBehaviour3 != dimensionBehaviour4) {
            z3 = r16;
        } else {
            int j = constraintWidgetContainer.j() + k;
            horizontalWidgetRun.i.d(j);
            horizontalWidgetRun.e.d(j - k);
            i();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[1];
            if (dimensionBehaviour5 == dimensionBehaviour || dimensionBehaviour5 == dimensionBehaviour4) {
                int g = constraintWidgetContainer.g() + l;
                verticalWidgetRun.i.d(g);
                verticalWidgetRun.e.d(g - l);
            }
            i();
            z3 = true;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            WidgetRun widgetRun = (WidgetRun) it3.next();
            if (widgetRun.b != constraintWidgetContainer || widgetRun.g) {
                widgetRun.e();
            }
        }
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            WidgetRun widgetRun2 = (WidgetRun) it4.next();
            if (z3 || widgetRun2.b != constraintWidgetContainer) {
                if (!widgetRun2.h.j || ((!widgetRun2.i.j && !(widgetRun2 instanceof GuidelineReference)) || (!widgetRun2.e.j && !(widgetRun2 instanceof ChainRun) && !(widgetRun2 instanceof GuidelineReference)))) {
                    z4 = r16;
                    break;
                }
            }
        }
        z4 = true;
        constraintWidgetContainer.t(f);
        constraintWidgetContainer.u(f2);
        return z4;
    }

    public final boolean f(int i, boolean z) {
        boolean z2;
        boolean z3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        boolean z4;
        ArrayList arrayList = this.e;
        ConstraintWidgetContainer constraintWidgetContainer = this.a;
        boolean z5 = false;
        ConstraintWidget.DimensionBehaviour f = constraintWidgetContainer.f(0);
        VerticalWidgetRun verticalWidgetRun = constraintWidgetContainer.e;
        HorizontalWidgetRun horizontalWidgetRun = constraintWidgetContainer.d;
        ConstraintWidget.DimensionBehaviour f2 = constraintWidgetContainer.f(1);
        int k = constraintWidgetContainer.k();
        int l = constraintWidgetContainer.l();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.j;
        if (z && (f == (dimensionBehaviour = ConstraintWidget.DimensionBehaviour.k) || f2 == dimensionBehaviour)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    WidgetRun widgetRun = (WidgetRun) it.next();
                    if (widgetRun.f == i && !widgetRun.k()) {
                        z4 = false;
                        break;
                    }
                } else {
                    z4 = z;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && f == dimensionBehaviour) {
                    constraintWidgetContainer.t(dimensionBehaviour2);
                    constraintWidgetContainer.v(d(constraintWidgetContainer, 0));
                    horizontalWidgetRun.e.d(constraintWidgetContainer.j());
                }
            } else if (z4 && f2 == dimensionBehaviour) {
                constraintWidgetContainer.u(dimensionBehaviour2);
                constraintWidgetContainer.s(d(constraintWidgetContainer, 1));
                verticalWidgetRun.e.d(constraintWidgetContainer.g());
            }
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer.I;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.m;
        if (i == 0) {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviourArr[0];
            if (dimensionBehaviour4 != dimensionBehaviour2 && dimensionBehaviour4 != dimensionBehaviour3) {
                z2 = true;
                z3 = false;
            } else {
                int j = constraintWidgetContainer.j() + k;
                horizontalWidgetRun.i.d(j);
                horizontalWidgetRun.e.d(j - k);
                z3 = true;
                z2 = true;
            }
        } else {
            z2 = true;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr[1];
            if (dimensionBehaviour5 == dimensionBehaviour2 || dimensionBehaviour5 == dimensionBehaviour3) {
                int g = constraintWidgetContainer.g() + l;
                verticalWidgetRun.i.d(g);
                verticalWidgetRun.e.d(g - l);
                z3 = true;
            }
            z3 = false;
        }
        i();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            WidgetRun widgetRun2 = (WidgetRun) it2.next();
            if (widgetRun2.f == i && (widgetRun2.b != constraintWidgetContainer || widgetRun2.g)) {
                widgetRun2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (it3.hasNext()) {
                WidgetRun widgetRun3 = (WidgetRun) it3.next();
                if (widgetRun3.f == i && (z3 || widgetRun3.b != constraintWidgetContainer)) {
                    if (!widgetRun3.h.j) {
                        break;
                    }
                    if (!widgetRun3.i.j) {
                        break;
                    }
                    if (!(widgetRun3 instanceof ChainRun) && !widgetRun3.e.j) {
                        break;
                    }
                }
            } else {
                z5 = z2;
                break;
            }
        }
        constraintWidgetContainer.t(f);
        constraintWidgetContainer.u(f2);
        return z5;
    }

    public final void g(WidgetRun widgetRun, int i, ArrayList arrayList) {
        DependencyNode dependencyNode = widgetRun.h;
        DependencyNode dependencyNode2 = widgetRun.i;
        Iterator it = dependencyNode.k.iterator();
        while (it.hasNext()) {
            Dependency dependency = (Dependency) it.next();
            if (dependency instanceof DependencyNode) {
                a((DependencyNode) dependency, i, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                a(((WidgetRun) dependency).h, i, arrayList, null);
            }
        }
        Iterator it2 = dependencyNode2.k.iterator();
        while (it2.hasNext()) {
            Dependency dependency2 = (Dependency) it2.next();
            if (dependency2 instanceof DependencyNode) {
                a((DependencyNode) dependency2, i, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                a(((WidgetRun) dependency2).i, i, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((VerticalWidgetRun) widgetRun).k.k.iterator();
            while (it3.hasNext()) {
                Dependency dependency3 = (Dependency) it3.next();
                if (dependency3 instanceof DependencyNode) {
                    a((DependencyNode) dependency3, i, arrayList, null);
                }
            }
        }
    }

    public final void h(ConstraintWidget constraintWidget, ConstraintWidget.DimensionBehaviour dimensionBehaviour, int i, ConstraintWidget.DimensionBehaviour dimensionBehaviour2, int i2) {
        boolean z;
        BasicMeasure.Measure measure = this.g;
        measure.a = dimensionBehaviour;
        measure.b = dimensionBehaviour2;
        measure.c = i;
        measure.d = i2;
        this.f.a(constraintWidget, measure);
        constraintWidget.v(measure.e);
        constraintWidget.s(measure.f);
        constraintWidget.w = measure.h;
        int i3 = measure.g;
        constraintWidget.Q = i3;
        if (i3 > 0) {
            z = true;
        } else {
            z = false;
        }
        constraintWidget.w = z;
    }

    public final void i() {
        boolean z;
        BaselineDimensionDependency baselineDimensionDependency;
        DependencyGraph dependencyGraph = this;
        Iterator it = dependencyGraph.a.d0.iterator();
        while (it.hasNext()) {
            ConstraintWidget constraintWidget = (ConstraintWidget) it.next();
            boolean z2 = constraintWidget.a;
            HorizontalWidgetRun horizontalWidgetRun = constraintWidget.d;
            VerticalWidgetRun verticalWidgetRun = constraintWidget.e;
            if (!z2) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.I;
                boolean z3 = false;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[1];
                int i = constraintWidget.j;
                int i2 = constraintWidget.k;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.l;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.k;
                if (dimensionBehaviour != dimensionBehaviour4 && (dimensionBehaviour != dimensionBehaviour3 || i != 1)) {
                    z = false;
                } else {
                    z = true;
                }
                if (dimensionBehaviour2 == dimensionBehaviour4 || (dimensionBehaviour2 == dimensionBehaviour3 && i2 == 1)) {
                    z3 = true;
                }
                DimensionDependency dimensionDependency = horizontalWidgetRun.e;
                boolean z4 = dimensionDependency.j;
                DimensionDependency dimensionDependency2 = verticalWidgetRun.e;
                boolean z5 = dimensionDependency2.j;
                boolean z6 = z;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.j;
                if (z4 && z5) {
                    dependencyGraph.h(constraintWidget, dimensionBehaviour5, dimensionDependency.g, dimensionBehaviour5, dimensionDependency2.g);
                    constraintWidget.a = true;
                } else if (z4 && z3) {
                    h(constraintWidget, dimensionBehaviour5, dimensionDependency.g, dimensionBehaviour4, dimensionDependency2.g);
                    DimensionDependency dimensionDependency3 = verticalWidgetRun.e;
                    if (dimensionBehaviour2 == dimensionBehaviour3) {
                        dimensionDependency3.m = constraintWidget.g();
                    } else {
                        dimensionDependency3.d(constraintWidget.g());
                        constraintWidget.a = true;
                    }
                } else if (z5 && z6) {
                    h(constraintWidget, dimensionBehaviour4, dimensionDependency.g, dimensionBehaviour5, dimensionDependency2.g);
                    DimensionDependency dimensionDependency4 = horizontalWidgetRun.e;
                    if (dimensionBehaviour == dimensionBehaviour3) {
                        dimensionDependency4.m = constraintWidget.j();
                    } else {
                        dimensionDependency4.d(constraintWidget.j());
                        constraintWidget.a = true;
                    }
                }
                if (constraintWidget.a && (baselineDimensionDependency = verticalWidgetRun.l) != null) {
                    baselineDimensionDependency.d(constraintWidget.Q);
                }
                dependencyGraph = this;
            }
        }
    }
}
