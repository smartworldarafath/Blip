package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Guideline extends ConstraintWidget {
    public float d0 = -1.0f;
    public int e0 = -1;
    public int f0 = -1;
    public ConstraintAnchor g0 = this.y;
    public int h0 = 0;

    public Guideline() {
        this.G.clear();
        this.G.add(this.g0);
        int length = this.F.length;
        for (int i = 0; i < length; i++) {
            this.F[i] = this.g0;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final void a(LinearSystem linearSystem) {
        boolean z;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.J;
        if (constraintWidgetContainer != null) {
            ConstraintAnchor e = constraintWidgetContainer.e(ConstraintAnchor.Type.j);
            ConstraintAnchor e2 = constraintWidgetContainer.e(ConstraintAnchor.Type.l);
            ConstraintWidget constraintWidget = this.J;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.k;
            boolean z2 = true;
            if (constraintWidget != null && constraintWidget.I[0] == dimensionBehaviour) {
                z = true;
            } else {
                z = false;
            }
            if (this.h0 == 0) {
                e = constraintWidgetContainer.e(ConstraintAnchor.Type.k);
                e2 = constraintWidgetContainer.e(ConstraintAnchor.Type.m);
                ConstraintWidget constraintWidget2 = this.J;
                if (constraintWidget2 == null || constraintWidget2.I[1] != dimensionBehaviour) {
                    z2 = false;
                }
                z = z2;
            }
            if (this.e0 != -1) {
                SolverVariable j = linearSystem.j(this.g0);
                linearSystem.e(j, linearSystem.j(e), this.e0, 8);
                if (z) {
                    linearSystem.f(linearSystem.j(e2), j, 0, 5);
                    return;
                }
                return;
            }
            if (this.f0 != -1) {
                SolverVariable j2 = linearSystem.j(this.g0);
                SolverVariable j3 = linearSystem.j(e2);
                linearSystem.e(j2, j3, -this.f0, 8);
                if (z) {
                    linearSystem.f(j2, linearSystem.j(e), 0, 5);
                    linearSystem.f(j3, j2, 0, 5);
                    return;
                }
                return;
            }
            if (this.d0 != -1.0f) {
                SolverVariable j4 = linearSystem.j(this.g0);
                SolverVariable j5 = linearSystem.j(e2);
                float f = this.d0;
                ArrayRow k = linearSystem.k();
                k.d.i(j4, -1.0f);
                k.d.i(j5, f);
                linearSystem.c(k);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final boolean b() {
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final ConstraintAnchor e(ConstraintAnchor.Type type) {
        switch (type.ordinal()) {
            case 0:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return null;
            case 1:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                if (this.h0 == 1) {
                    return this.g0;
                }
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                if (this.h0 == 0) {
                    return this.g0;
                }
                break;
        }
        throw new AssertionError(type.name());
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    public final void x(LinearSystem linearSystem) {
        if (this.J == null) {
            return;
        }
        ConstraintAnchor constraintAnchor = this.g0;
        linearSystem.getClass();
        int m = LinearSystem.m(constraintAnchor);
        if (this.h0 == 1) {
            this.O = m;
            this.P = 0;
            s(this.J.g());
            v(0);
            return;
        }
        this.O = 0;
        this.P = m;
        v(this.J.j());
        s(0);
    }

    public final void y(int i) {
        if (this.h0 != i) {
            this.h0 = i;
            ArrayList arrayList = this.G;
            arrayList.clear();
            if (this.h0 == 1) {
                this.g0 = this.x;
            } else {
                this.g0 = this.y;
            }
            arrayList.add(this.g0);
            ConstraintAnchor[] constraintAnchorArr = this.F;
            int length = constraintAnchorArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                constraintAnchorArr[i2] = this.g0;
            }
        }
    }
}
