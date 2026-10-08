package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.PriorityGoalRow;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    public final BasicMeasure e0;
    public final DependencyGraph f0;
    public BasicMeasure.Measurer g0;
    public boolean h0;
    public final LinearSystem i0;
    public int j0;
    public int k0;
    public int l0;
    public int m0;
    public ChainHead[] n0;
    public ChainHead[] o0;
    public int p0;
    public boolean q0;
    public boolean r0;

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure$Measure, java.lang.Object] */
    public ConstraintWidgetContainer() {
        this.d0 = new ArrayList();
        this.e0 = new BasicMeasure(this);
        ?? obj = new Object();
        obj.b = true;
        obj.c = true;
        obj.e = new ArrayList();
        new ArrayList();
        obj.f = null;
        obj.g = new Object();
        obj.h = new ArrayList();
        obj.a = this;
        obj.d = this;
        this.f0 = obj;
        this.g0 = null;
        this.h0 = false;
        this.i0 = new LinearSystem();
        this.l0 = 0;
        this.m0 = 0;
        this.n0 = new ChainHead[4];
        this.o0 = new ChainHead[4];
        this.p0 = 263;
        this.q0 = false;
        this.r0 = false;
    }

    public final void A(LinearSystem linearSystem) {
        int i;
        int i2;
        int i3;
        int i4;
        a(linearSystem);
        int size = this.d0.size();
        int i5 = 0;
        int i6 = 0;
        boolean z = false;
        while (true) {
            i = 1;
            if (i6 >= size) {
                break;
            }
            ConstraintWidget constraintWidget = (ConstraintWidget) this.d0.get(i6);
            boolean[] zArr = constraintWidget.H;
            zArr[0] = false;
            zArr[1] = false;
            if (constraintWidget instanceof Barrier) {
                z = true;
            }
            i6++;
        }
        if (z) {
            for (int i7 = 0; i7 < size; i7++) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.d0.get(i7);
                if (constraintWidget2 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget2;
                    for (int i8 = 0; i8 < barrier.e0; i8++) {
                        ConstraintWidget constraintWidget3 = barrier.d0[i8];
                        int i9 = barrier.f0;
                        if (i9 != 0 && i9 != 1) {
                            if (i9 == 2 || i9 == 3) {
                                constraintWidget3.H[1] = true;
                            }
                        } else {
                            constraintWidget3.H[0] = true;
                        }
                    }
                }
            }
        }
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget4 = (ConstraintWidget) this.d0.get(i10);
            constraintWidget4.getClass();
            if (constraintWidget4 instanceof Guideline) {
                constraintWidget4.a(linearSystem);
            }
        }
        int i11 = 0;
        while (i11 < size) {
            ConstraintWidget constraintWidget5 = (ConstraintWidget) this.d0.get(i11);
            boolean z2 = constraintWidget5 instanceof ConstraintWidgetContainer;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.k;
            if (z2) {
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget5.I;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i5];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr[i];
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.j;
                if (dimensionBehaviour2 == dimensionBehaviour) {
                    constraintWidget5.t(dimensionBehaviour4);
                }
                if (dimensionBehaviour3 == dimensionBehaviour) {
                    constraintWidget5.u(dimensionBehaviour4);
                }
                constraintWidget5.a(linearSystem);
                if (dimensionBehaviour2 == dimensionBehaviour) {
                    constraintWidget5.t(dimensionBehaviour2);
                }
                if (dimensionBehaviour3 == dimensionBehaviour) {
                    constraintWidget5.u(dimensionBehaviour3);
                }
                i4 = size;
                i3 = i5;
                i2 = i;
            } else {
                constraintWidget5.h = -1;
                ConstraintAnchor constraintAnchor = constraintWidget5.B;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget5.I;
                ConstraintAnchor constraintAnchor2 = constraintWidget5.A;
                ConstraintAnchor constraintAnchor3 = constraintWidget5.y;
                ConstraintAnchor constraintAnchor4 = constraintWidget5.z;
                ConstraintAnchor constraintAnchor5 = constraintWidget5.x;
                constraintWidget5.i = -1;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = this.I;
                i2 = i;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr3[i5];
                i3 = i5;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour6 = ConstraintWidget.DimensionBehaviour.m;
                if (dimensionBehaviour5 != dimensionBehaviour && dimensionBehaviourArr2[i3] == dimensionBehaviour6) {
                    int i12 = constraintAnchor5.e;
                    int j = j() - constraintAnchor4.e;
                    i4 = size;
                    constraintAnchor5.g = linearSystem.j(constraintAnchor5);
                    constraintAnchor4.g = linearSystem.j(constraintAnchor4);
                    linearSystem.d(constraintAnchor5.g, i12);
                    linearSystem.d(constraintAnchor4.g, j);
                    constraintWidget5.h = 2;
                    constraintWidget5.O = i12;
                    int i13 = j - i12;
                    constraintWidget5.K = i13;
                    int i14 = constraintWidget5.R;
                    if (i13 < i14) {
                        constraintWidget5.K = i14;
                    }
                } else {
                    i4 = size;
                }
                if (dimensionBehaviourArr3[i2] != dimensionBehaviour && dimensionBehaviourArr2[i2] == dimensionBehaviour6) {
                    int i15 = constraintAnchor3.e;
                    int g = g() - constraintAnchor2.e;
                    constraintAnchor3.g = linearSystem.j(constraintAnchor3);
                    constraintAnchor2.g = linearSystem.j(constraintAnchor2);
                    linearSystem.d(constraintAnchor3.g, i15);
                    linearSystem.d(constraintAnchor2.g, g);
                    if (constraintWidget5.Q > 0 || constraintWidget5.W == 8) {
                        SolverVariable j2 = linearSystem.j(constraintAnchor);
                        constraintAnchor.g = j2;
                        linearSystem.d(j2, constraintWidget5.Q + i15);
                    }
                    constraintWidget5.i = 2;
                    constraintWidget5.P = i15;
                    int i16 = g - i15;
                    constraintWidget5.L = i16;
                    int i17 = constraintWidget5.S;
                    if (i16 < i17) {
                        constraintWidget5.L = i17;
                    }
                }
                if (!(constraintWidget5 instanceof Guideline)) {
                    constraintWidget5.a(linearSystem);
                }
            }
            i11++;
            i = i2;
            i5 = i3;
            size = i4;
        }
        int i18 = i5;
        int i19 = i;
        if (this.l0 > 0) {
            Chain.a(this, linearSystem, i18);
        }
        if (this.m0 > 0) {
            Chain.a(this, linearSystem, i19);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer, androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final void q() {
        this.i0.r();
        this.j0 = 0;
        this.k0 = 0;
        super.q();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final void w(boolean z, boolean z2) {
        super.w(z, z2);
        int size = this.d0.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.d0.get(i)).w(z, z2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0117  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    @Override // androidx.constraintlayout.solver.widgets.WidgetContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void y() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr;
        boolean z5;
        int max;
        int j;
        int max2;
        ?? r2;
        ?? r22 = 0;
        this.O = 0;
        this.P = 0;
        int max3 = Math.max(0, j());
        int max4 = Math.max(0, g());
        this.q0 = false;
        this.r0 = false;
        int i = this.p0;
        boolean z6 = true;
        if ((i & 64) == 64 || (i & 128) == 128) {
            z = true;
        } else {
            z = false;
        }
        LinearSystem linearSystem = this.i0;
        linearSystem.getClass();
        linearSystem.f = false;
        if (this.p0 != 0 && z) {
            linearSystem.f = true;
        }
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = this.I;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr2[1];
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr2[0];
        ArrayList arrayList = this.d0;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.k;
        if (dimensionBehaviour2 != dimensionBehaviour3 && dimensionBehaviour != dimensionBehaviour3) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.l0 = 0;
        this.m0 = 0;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.d0.get(i2);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).y();
            }
        }
        int i3 = 0;
        boolean z7 = false;
        boolean z8 = true;
        boolean z9 = z2;
        while (z8) {
            boolean z10 = z6;
            int i4 = i3 + 1;
            try {
                linearSystem.r();
                this.l0 = r22;
                this.m0 = r22;
                d(linearSystem);
                int i5 = r22;
                while (i5 < size) {
                    z3 = r22;
                    try {
                        ((ConstraintWidget) this.d0.get(i5)).d(linearSystem);
                        i5++;
                        r22 = z3 ? 1 : 0;
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        dimensionBehaviourArr = dimensionBehaviourArr2;
                        z4 = z9;
                        System.out.println("EXCEPTION : " + e);
                        boolean[] zArr = Optimizer.a;
                        if (z8) {
                        }
                        if (!z4) {
                        }
                        z5 = z3 ? 1 : 0;
                        max = Math.max(this.R, j());
                        j = j();
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.j;
                        if (max > j) {
                        }
                        max2 = Math.max(this.S, g());
                        if (max2 > g()) {
                        }
                        if (!z7) {
                        }
                        z8 = z5;
                        i3 = i4;
                        r22 = z3 ? 1 : 0;
                        dimensionBehaviourArr2 = dimensionBehaviourArr;
                        z9 = z4;
                        z6 = true;
                    }
                }
                z3 = r22;
                A(linearSystem);
            } catch (Exception e2) {
                e = e2;
                z3 = r22;
            }
            try {
                PriorityGoalRow priorityGoalRow = linearSystem.b;
                if (linearSystem.f) {
                    int i6 = z3 ? 1 : 0;
                    while (true) {
                        if (i6 < linearSystem.i) {
                            if (!linearSystem.e[i6].e) {
                                linearSystem.o(priorityGoalRow);
                                break;
                            }
                            i6++;
                        } else {
                            for (int i7 = z3 ? 1 : 0; i7 < linearSystem.i; i7++) {
                                ArrayRow arrayRow = linearSystem.e[i7];
                                arrayRow.a.e = arrayRow.b;
                            }
                        }
                    }
                } else {
                    linearSystem.o(priorityGoalRow);
                }
                dimensionBehaviourArr = dimensionBehaviourArr2;
                z4 = z9;
                z8 = z10 ? 1 : 0;
            } catch (Exception e3) {
                e = e3;
                z8 = z10 ? 1 : 0;
                e.printStackTrace();
                dimensionBehaviourArr = dimensionBehaviourArr2;
                z4 = z9;
                System.out.println("EXCEPTION : " + e);
                boolean[] zArr2 = Optimizer.a;
                if (z8) {
                }
                if (!z4) {
                }
                z5 = z3 ? 1 : 0;
                max = Math.max(this.R, j());
                j = j();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour42 = ConstraintWidget.DimensionBehaviour.j;
                if (max > j) {
                }
                max2 = Math.max(this.S, g());
                if (max2 > g()) {
                }
                if (!z7) {
                }
                z8 = z5;
                i3 = i4;
                r22 = z3 ? 1 : 0;
                dimensionBehaviourArr2 = dimensionBehaviourArr;
                z9 = z4;
                z6 = true;
            }
            boolean[] zArr22 = Optimizer.a;
            if (z8) {
                zArr22[2] = z3;
                x(linearSystem);
                int size2 = this.d0.size();
                for (int i8 = z3 ? 1 : 0; i8 < size2; i8++) {
                    ((ConstraintWidget) this.d0.get(i8)).x(linearSystem);
                }
            } else {
                x(linearSystem);
                for (int i9 = z3 ? 1 : 0; i9 < size; i9++) {
                    ((ConstraintWidget) this.d0.get(i9)).x(linearSystem);
                }
            }
            if (!z4 && i4 < 8 && zArr22[2]) {
                int i10 = z3 ? 1 : 0;
                int i11 = i10;
                int i12 = i11;
                while (i10 < size) {
                    ConstraintWidget constraintWidget2 = (ConstraintWidget) this.d0.get(i10);
                    i11 = Math.max(i11, constraintWidget2.j() + constraintWidget2.O);
                    i12 = Math.max(i12, constraintWidget2.g() + constraintWidget2.P);
                    i10++;
                }
                int max5 = Math.max(this.R, i11);
                int max6 = Math.max(this.S, i12);
                if (dimensionBehaviour2 == dimensionBehaviour3 && j() < max5) {
                    v(max5);
                    dimensionBehaviourArr[z3 ? 1 : 0] = dimensionBehaviour3;
                    z5 = z10 ? 1 : 0;
                    z7 = z5;
                } else {
                    z5 = z3 ? 1 : 0;
                }
                if (dimensionBehaviour == dimensionBehaviour3 && g() < max6) {
                    s(max6);
                    dimensionBehaviourArr[z10 ? 1 : 0] = dimensionBehaviour3;
                    z5 = z10 ? 1 : 0;
                    z7 = z5;
                }
            } else {
                z5 = z3 ? 1 : 0;
            }
            max = Math.max(this.R, j());
            j = j();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour422 = ConstraintWidget.DimensionBehaviour.j;
            if (max > j) {
                v(max);
                dimensionBehaviourArr[z3 ? 1 : 0] = dimensionBehaviour422;
                z5 = z10 ? 1 : 0;
                z7 = z5;
            }
            max2 = Math.max(this.S, g());
            if (max2 > g()) {
                s(max2);
                dimensionBehaviourArr[z10 ? 1 : 0] = dimensionBehaviour422;
                z5 = z10 ? 1 : 0;
                z7 = z5;
            }
            if (!z7) {
                if (dimensionBehaviourArr[z3 ? 1 : 0] == dimensionBehaviour3 && max3 > 0 && j() > max3) {
                    boolean z11 = z10 ? 1 : 0;
                    this.q0 = z11;
                    dimensionBehaviourArr[z3 ? 1 : 0] = dimensionBehaviour422;
                    v(max3);
                    z5 = z11 ? 1 : 0;
                    z7 = z5;
                    r2 = z11;
                } else {
                    r2 = z10 ? 1 : 0;
                }
                if (dimensionBehaviourArr[r2] == dimensionBehaviour3 && max4 > 0 && g() > max4) {
                    this.r0 = r2;
                    dimensionBehaviourArr[r2] = dimensionBehaviour422;
                    s(max4);
                    z8 = true;
                    z7 = true;
                    i3 = i4;
                    r22 = z3 ? 1 : 0;
                    dimensionBehaviourArr2 = dimensionBehaviourArr;
                    z9 = z4;
                    z6 = true;
                }
            }
            z8 = z5;
            i3 = i4;
            r22 = z3 ? 1 : 0;
            dimensionBehaviourArr2 = dimensionBehaviourArr;
            z9 = z4;
            z6 = true;
        }
        char c = r22;
        ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = dimensionBehaviourArr2;
        this.d0 = arrayList;
        if (z7) {
            dimensionBehaviourArr3[c] = dimensionBehaviour2;
            dimensionBehaviourArr3[1] = dimensionBehaviour;
        }
        r(linearSystem.k);
    }

    public final void z(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            int i2 = this.l0 + 1;
            ChainHead[] chainHeadArr = this.o0;
            if (i2 >= chainHeadArr.length) {
                this.o0 = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
            }
            ChainHead[] chainHeadArr2 = this.o0;
            int i3 = this.l0;
            chainHeadArr2[i3] = new ChainHead(constraintWidget, 0, this.h0);
            this.l0 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.m0 + 1;
            ChainHead[] chainHeadArr3 = this.n0;
            if (i4 >= chainHeadArr3.length) {
                this.n0 = (ChainHead[]) Arrays.copyOf(chainHeadArr3, chainHeadArr3.length * 2);
            }
            ChainHead[] chainHeadArr4 = this.n0;
            int i5 = this.m0;
            chainHeadArr4[i5] = new ChainHead(constraintWidget, 1, this.h0);
            this.m0 = i5 + 1;
        }
    }
}
