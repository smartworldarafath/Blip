package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {
    public int a;
    public ConstraintWidget b;
    public RunGroup c;
    public ConstraintWidget.DimensionBehaviour d;
    public final DimensionDependency e = new DimensionDependency(this);
    public int f = 0;
    public boolean g = false;
    public final DependencyNode h = new DependencyNode(this);
    public final DependencyNode i = new DependencyNode(this);
    public RunType j = RunType.j;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RunType {
        public static final RunType j;
        public static final RunType k;
        public static final /* synthetic */ RunType[] l;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$RunType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$RunType] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$RunType] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$RunType] */
        static {
            ?? r0 = new Enum("NONE", 0);
            j = r0;
            ?? r1 = new Enum("START", 1);
            ?? r2 = new Enum("END", 2);
            ?? r3 = new Enum("CENTER", 3);
            k = r3;
            l = new RunType[]{r0, r1, r2, r3};
        }

        public static RunType valueOf(String str) {
            return (RunType) Enum.valueOf(RunType.class, str);
        }

        public static RunType[] values() {
            return (RunType[]) l.clone();
        }
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.b = constraintWidget;
    }

    public static void b(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.f = i;
        dependencyNode2.k.add(dependencyNode);
    }

    public static DependencyNode h(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.d;
        if (constraintAnchor2 != null) {
            ConstraintWidget constraintWidget = constraintAnchor2.b;
            HorizontalWidgetRun horizontalWidgetRun = constraintWidget.d;
            VerticalWidgetRun verticalWidgetRun = constraintWidget.e;
            int ordinal = constraintAnchor2.c.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            if (ordinal != 5) {
                                return null;
                            }
                            return verticalWidgetRun.k;
                        }
                        return verticalWidgetRun.i;
                    }
                    return horizontalWidgetRun.i;
                }
                return verticalWidgetRun.h;
            }
            return horizontalWidgetRun.h;
        }
        return null;
    }

    public static DependencyNode i(ConstraintAnchor constraintAnchor, int i) {
        WidgetRun widgetRun;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.d;
        if (constraintAnchor2 != null) {
            ConstraintWidget constraintWidget = constraintAnchor2.b;
            if (i == 0) {
                widgetRun = constraintWidget.d;
            } else {
                widgetRun = constraintWidget.e;
            }
            int ordinal = constraintAnchor2.c.ordinal();
            if (ordinal != 1 && ordinal != 2) {
                if (ordinal != 3 && ordinal != 4) {
                    return null;
                }
                return widgetRun.i;
            }
            return widgetRun.h;
        }
        return null;
    }

    public final void c(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.l.add(dependencyNode2);
        dependencyNode.l.add(this.e);
        dependencyNode.h = i;
        dependencyNode.i = dimensionDependency;
        dependencyNode2.k.add(dependencyNode);
        dimensionDependency.k.add(dependencyNode);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        ConstraintWidget constraintWidget = this.b;
        if (i2 == 0) {
            int i3 = constraintWidget.n;
            int max = Math.max(constraintWidget.m, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max != i) {
                return max;
            }
        } else {
            int i4 = constraintWidget.q;
            int max2 = Math.max(constraintWidget.p, i);
            if (i4 > 0) {
                max2 = Math.min(i4, i);
            }
            if (max2 != i) {
                return max2;
            }
        }
        return i;
    }

    public long j() {
        if (this.e.j) {
            return r2.g;
        }
        return 0L;
    }

    public abstract boolean k();

    public final void l(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        float f;
        WidgetRun widgetRun;
        float f2;
        int i2;
        DependencyNode h = h(constraintAnchor);
        DependencyNode h2 = h(constraintAnchor2);
        if (h.j && h2.j) {
            int b = constraintAnchor.b() + h.g;
            int b2 = h2.g - constraintAnchor2.b();
            int i3 = b2 - b;
            DimensionDependency dimensionDependency = this.e;
            if (!dimensionDependency.j) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.d;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.l;
                if (dimensionBehaviour == dimensionBehaviour2) {
                    int i4 = this.a;
                    if (i4 != 0) {
                        if (i4 != 1) {
                            if (i4 != 2) {
                                if (i4 == 3) {
                                    ConstraintWidget constraintWidget = this.b;
                                    WidgetRun widgetRun2 = constraintWidget.d;
                                    WidgetRun widgetRun3 = constraintWidget.e;
                                    if (widgetRun2.d != dimensionBehaviour2 || widgetRun2.a != 3 || widgetRun3.d != dimensionBehaviour2 || widgetRun3.a != 3) {
                                        if (i == 0) {
                                            widgetRun2 = widgetRun3;
                                        }
                                        DimensionDependency dimensionDependency2 = widgetRun2.e;
                                        if (dimensionDependency2.j) {
                                            float f3 = constraintWidget.M;
                                            int i5 = dimensionDependency2.g;
                                            if (i == 1) {
                                                i2 = (int) ((i5 / f3) + 0.5f);
                                            } else {
                                                i2 = (int) ((f3 * i5) + 0.5f);
                                            }
                                            dimensionDependency.d(i2);
                                        }
                                    }
                                }
                            } else {
                                ConstraintWidget constraintWidget2 = this.b;
                                ConstraintWidget constraintWidget3 = constraintWidget2.J;
                                if (constraintWidget3 != null) {
                                    if (i == 0) {
                                        widgetRun = constraintWidget3.d;
                                    } else {
                                        widgetRun = constraintWidget3.e;
                                    }
                                    if (widgetRun.e.j) {
                                        if (i == 0) {
                                            f2 = constraintWidget2.o;
                                        } else {
                                            f2 = constraintWidget2.r;
                                        }
                                        dimensionDependency.d(g((int) ((r6.g * f2) + 0.5f), i));
                                    }
                                }
                            }
                        } else {
                            dimensionDependency.d(Math.min(g(dimensionDependency.m, i), i3));
                        }
                    } else {
                        dimensionDependency.d(g(i3, i));
                    }
                }
            }
            if (dimensionDependency.j) {
                int i6 = dimensionDependency.g;
                DependencyNode dependencyNode = this.i;
                DependencyNode dependencyNode2 = this.h;
                if (i6 == i3) {
                    dependencyNode2.d(b);
                    dependencyNode.d(b2);
                    return;
                }
                ConstraintWidget constraintWidget4 = this.b;
                if (i == 0) {
                    f = constraintWidget4.T;
                } else {
                    f = constraintWidget4.U;
                }
                if (h == h2) {
                    b = h.g;
                    b2 = h2.g;
                    f = 0.5f;
                }
                dependencyNode2.d((int) ((((b2 - b) - i6) * f) + b + 0.5f));
                dependencyNode.d(dependencyNode2.g + dimensionDependency.g);
            }
        }
    }
}
