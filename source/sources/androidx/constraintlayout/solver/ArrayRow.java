package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    public ArrayRowVariables d;
    public SolverVariable a = null;
    public float b = 0.0f;
    public ArrayList c = new ArrayList();
    public boolean e = false;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ArrayRowVariables {
        int a();

        SolverVariable b(int i);

        void c();

        void clear();

        float d(int i);

        void e(SolverVariable solverVariable, float f, boolean z);

        float f(SolverVariable solverVariable);

        boolean g(SolverVariable solverVariable);

        float h(ArrayRow arrayRow, boolean z);

        void i(SolverVariable solverVariable, float f);

        float j(SolverVariable solverVariable, boolean z);

        void k(float f);
    }

    public ArrayRow(Cache cache) {
        this.d = new ArrayLinkedVariables(this, cache);
    }

    @Override // androidx.constraintlayout.solver.LinearSystem.Row
    public SolverVariable a(boolean[] zArr) {
        return e(zArr, null);
    }

    public final void b(LinearSystem linearSystem, int i) {
        this.d.i(linearSystem.i(i), 1.0f);
        this.d.i(linearSystem.i(i), -1.0f);
    }

    public final void c(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        ArrayRowVariables arrayRowVariables = this.d;
        if (!z) {
            arrayRowVariables.i(solverVariable, -1.0f);
            this.d.i(solverVariable2, 1.0f);
            this.d.i(solverVariable3, 1.0f);
        } else {
            arrayRowVariables.i(solverVariable, 1.0f);
            this.d.i(solverVariable2, -1.0f);
            this.d.i(solverVariable3, -1.0f);
        }
    }

    public final void d(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.b = i;
        }
        ArrayRowVariables arrayRowVariables = this.d;
        if (!z) {
            arrayRowVariables.i(solverVariable, -1.0f);
            this.d.i(solverVariable2, 1.0f);
            this.d.i(solverVariable3, -1.0f);
        } else {
            arrayRowVariables.i(solverVariable, 1.0f);
            this.d.i(solverVariable2, -1.0f);
            this.d.i(solverVariable3, 1.0f);
        }
    }

    public final SolverVariable e(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int a = this.d.a();
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int i = 0; i < a; i++) {
            float d = this.d.d(i);
            if (d < 0.0f) {
                SolverVariable b = this.d.b(i);
                if ((zArr == null || !zArr[b.b]) && b != solverVariable && (((type = b.i) == SolverVariable.Type.k || type == SolverVariable.Type.l) && d < f)) {
                    f = d;
                    solverVariable2 = b;
                }
            }
        }
        return solverVariable2;
    }

    public final void f(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.a;
        if (solverVariable2 != null) {
            this.d.i(solverVariable2, -1.0f);
            this.a = null;
        }
        float j = this.d.j(solverVariable, true) * (-1.0f);
        this.a = solverVariable;
        if (j == 1.0f) {
            return;
        }
        this.b /= j;
        this.d.k(j);
    }

    public final void g(SolverVariable solverVariable, boolean z) {
        if (solverVariable.f) {
            float f = this.d.f(solverVariable);
            this.b = (solverVariable.e * f) + this.b;
            this.d.j(solverVariable, z);
            if (z) {
                solverVariable.b(this);
            }
        }
    }

    public void h(ArrayRow arrayRow, boolean z) {
        float h = this.d.h(arrayRow, z);
        this.b = (arrayRow.b * h) + this.b;
        if (z) {
            arrayRow.a.b(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        String str;
        boolean z;
        if (this.a == null) {
            str = "0";
        } else {
            str = "" + this.a;
        }
        String concat = str.concat(" = ");
        if (this.b != 0.0f) {
            concat = concat + this.b;
            z = true;
        } else {
            z = false;
        }
        int a = this.d.a();
        for (int i = 0; i < a; i++) {
            SolverVariable b = this.d.b(i);
            if (b != null) {
                float d = this.d.d(i);
                if (d != 0.0f) {
                    String solverVariable = b.toString();
                    if (!z) {
                        if (d < 0.0f) {
                            concat = concat.concat("- ");
                            d *= -1.0f;
                        }
                        if (d == 1.0f) {
                            concat = concat.concat(solverVariable);
                        } else {
                            concat = concat + d + " " + solverVariable;
                        }
                        z = true;
                    } else if (d > 0.0f) {
                        concat = concat.concat(" + ");
                        if (d == 1.0f) {
                        }
                        z = true;
                    } else {
                        concat = concat.concat(" - ");
                        d *= -1.0f;
                        if (d == 1.0f) {
                        }
                        z = true;
                    }
                }
            }
        }
        if (!z) {
            return concat.concat("0.0");
        }
        return concat;
    }
}
