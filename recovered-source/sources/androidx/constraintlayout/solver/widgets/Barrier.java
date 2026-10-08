package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public int f0;
    public boolean g0;
    public int h0;

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final void a(LinearSystem linearSystem) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        int i3;
        ConstraintAnchor[] constraintAnchorArr = this.F;
        ConstraintAnchor constraintAnchor = this.x;
        constraintAnchorArr[0] = constraintAnchor;
        int i4 = 2;
        ConstraintAnchor constraintAnchor2 = this.y;
        constraintAnchorArr[2] = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = this.z;
        constraintAnchorArr[1] = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = this.A;
        constraintAnchorArr[3] = constraintAnchor4;
        for (ConstraintAnchor constraintAnchor5 : constraintAnchorArr) {
            constraintAnchor5.g = linearSystem.j(constraintAnchor5);
        }
        int i5 = this.f0;
        if (i5 >= 0 && i5 < 4) {
            ConstraintAnchor constraintAnchor6 = constraintAnchorArr[i5];
            for (int i6 = 0; i6 < this.e0; i6++) {
                ConstraintWidget constraintWidget = this.d0[i6];
                if (this.g0 || constraintWidget.b()) {
                    int i7 = this.f0;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
                    if (((i7 == 0 || i7 == 1) && constraintWidget.I[0] == dimensionBehaviour && constraintWidget.x.d != null && constraintWidget.z.d != null) || ((i7 == 2 || i7 == 3) && constraintWidget.I[1] == dimensionBehaviour && constraintWidget.y.d != null && constraintWidget.A.d != null)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (!constraintAnchor.c() && !constraintAnchor3.c()) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (!constraintAnchor2.c() && !constraintAnchor4.c()) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (!z && (((i3 = this.f0) == 0 && z2) || ((i3 == 2 && z3) || ((i3 == 1 && z2) || (i3 == 3 && z3))))) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (!z4) {
                i = 4;
            } else {
                i = 5;
            }
            int i8 = 0;
            while (i8 < this.e0) {
                ConstraintWidget constraintWidget2 = this.d0[i8];
                if (this.g0 || constraintWidget2.b()) {
                    SolverVariable j = linearSystem.j(constraintWidget2.F[this.f0]);
                    ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.F;
                    int i9 = this.f0;
                    ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[i9];
                    constraintAnchor7.g = j;
                    ConstraintAnchor constraintAnchor8 = constraintAnchor7.d;
                    if (constraintAnchor8 != null && constraintAnchor8.b == this) {
                        i2 = constraintAnchor7.e;
                    } else {
                        i2 = 0;
                    }
                    if (i9 != 0 && i9 != i4) {
                        SolverVariable solverVariable = constraintAnchor6.g;
                        int i10 = this.h0 + i2;
                        ArrayRow k = linearSystem.k();
                        SolverVariable l = linearSystem.l();
                        l.d = 0;
                        k.c(solverVariable, j, l, i10);
                        linearSystem.c(k);
                    } else {
                        SolverVariable solverVariable2 = constraintAnchor6.g;
                        int i11 = this.h0 - i2;
                        ArrayRow k2 = linearSystem.k();
                        SolverVariable l2 = linearSystem.l();
                        l2.d = 0;
                        k2.d(solverVariable2, j, l2, i11);
                        linearSystem.c(k2);
                    }
                    linearSystem.e(constraintAnchor6.g, j, this.h0 + i2, i);
                }
                i8++;
                i4 = 2;
            }
            int i12 = this.f0;
            if (i12 == 0) {
                linearSystem.e(constraintAnchor3.g, constraintAnchor.g, 0, 8);
                linearSystem.e(constraintAnchor.g, this.J.z.g, 0, 4);
                linearSystem.e(constraintAnchor.g, this.J.x.g, 0, 0);
                return;
            }
            if (i12 == 1) {
                linearSystem.e(constraintAnchor.g, constraintAnchor3.g, 0, 8);
                linearSystem.e(constraintAnchor.g, this.J.x.g, 0, 4);
                linearSystem.e(constraintAnchor.g, this.J.z.g, 0, 0);
            } else if (i12 == 2) {
                linearSystem.e(constraintAnchor4.g, constraintAnchor2.g, 0, 8);
                linearSystem.e(constraintAnchor2.g, this.J.A.g, 0, 4);
                linearSystem.e(constraintAnchor2.g, this.J.y.g, 0, 0);
            } else if (i12 == 3) {
                linearSystem.e(constraintAnchor2.g, constraintAnchor4.g, 0, 8);
                linearSystem.e(constraintAnchor2.g, this.J.y.g, 0, 4);
                linearSystem.e(constraintAnchor2.g, this.J.A.g, 0, 0);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final boolean b() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final String toString() {
        String l = q.l(new StringBuilder("[Barrier] "), this.X, " {");
        for (int i = 0; i < this.e0; i++) {
            ConstraintWidget constraintWidget = this.d0[i];
            if (i > 0) {
                l = l.concat(", ");
            }
            l = l + constraintWidget.X;
        }
        return l.concat("}");
    }
}
