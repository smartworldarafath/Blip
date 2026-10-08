package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PriorityGoalRow extends ArrayRow {
    public SolverVariable[] f;
    public SolverVariable[] g;
    public int h;
    public GoalVariableAccessor i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.constraintlayout.solver.PriorityGoalRow$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Comparator<SolverVariable> {
        @Override // java.util.Comparator
        public final int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
            return solverVariable.b - solverVariable2.b;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class GoalVariableAccessor implements Comparable {
        public SolverVariable j;

        public GoalVariableAccessor() {
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.j.b - ((SolverVariable) obj).b;
        }

        public final String toString() {
            String str = "[ ";
            if (this.j != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.j.h[i] + " ";
                }
            }
            return str + "] " + this.j;
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.LinearSystem.Row
    public final SolverVariable a(boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.h; i2++) {
            SolverVariable[] solverVariableArr = this.f;
            SolverVariable solverVariable = solverVariableArr[i2];
            if (!zArr[solverVariable.b]) {
                GoalVariableAccessor goalVariableAccessor = this.i;
                goalVariableAccessor.j = solverVariable;
                int i3 = 8;
                if (i == -1) {
                    while (i3 >= 0) {
                        float f = goalVariableAccessor.j.h[i3];
                        if (f <= 0.0f) {
                            if (f < 0.0f) {
                                i = i2;
                                break;
                            }
                            i3--;
                        }
                    }
                } else {
                    SolverVariable solverVariable2 = solverVariableArr[i];
                    while (true) {
                        if (i3 >= 0) {
                            float f2 = solverVariable2.h[i3];
                            float f3 = goalVariableAccessor.j.h[i3];
                            if (f3 == f2) {
                                i3--;
                            } else if (f3 >= f2) {
                            }
                        }
                    }
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.f[i];
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public final void h(ArrayRow arrayRow, boolean z) {
        SolverVariable solverVariable = arrayRow.a;
        if (solverVariable == null) {
            return;
        }
        float[] fArr = solverVariable.h;
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.d;
        int a = arrayRowVariables.a();
        for (int i = 0; i < a; i++) {
            SolverVariable b = arrayRowVariables.b(i);
            float d = arrayRowVariables.d(i);
            GoalVariableAccessor goalVariableAccessor = this.i;
            goalVariableAccessor.j = b;
            if (b.a) {
                boolean z2 = true;
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr2 = goalVariableAccessor.j.h;
                    float f = (fArr[i2] * d) + fArr2[i2];
                    fArr2[i2] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        goalVariableAccessor.j.h[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    PriorityGoalRow.this.j(goalVariableAccessor.j);
                }
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f2 = fArr[i3];
                    if (f2 != 0.0f) {
                        float f3 = f2 * d;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        goalVariableAccessor.j.h[i3] = f3;
                    } else {
                        goalVariableAccessor.j.h[i3] = 0.0f;
                    }
                }
                i(b);
            }
            this.b = (arrayRow.b * d) + this.b;
        }
        j(solverVariable);
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, java.util.Comparator] */
    public final void i(SolverVariable solverVariable) {
        int i;
        SolverVariable[] solverVariableArr;
        int i2 = this.h + 1;
        SolverVariable[] solverVariableArr2 = this.f;
        if (i2 > solverVariableArr2.length) {
            SolverVariable[] solverVariableArr3 = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
            this.f = solverVariableArr3;
            this.g = (SolverVariable[]) Arrays.copyOf(solverVariableArr3, solverVariableArr3.length * 2);
        }
        SolverVariable[] solverVariableArr4 = this.f;
        int i3 = this.h;
        solverVariableArr4[i3] = solverVariable;
        int i4 = i3 + 1;
        this.h = i4;
        if (i4 > 1 && solverVariableArr4[i3].b > solverVariable.b) {
            int i5 = 0;
            while (true) {
                i = this.h;
                solverVariableArr = this.g;
                if (i5 >= i) {
                    break;
                }
                solverVariableArr[i5] = this.f[i5];
                i5++;
            }
            Arrays.sort(solverVariableArr, 0, i, new Object());
            for (int i6 = 0; i6 < this.h; i6++) {
                this.f[i6] = this.g[i6];
            }
        }
        solverVariable.a = true;
        solverVariable.a(this);
    }

    public final void j(SolverVariable solverVariable) {
        int i = 0;
        while (i < this.h) {
            if (this.f[i] == solverVariable) {
                while (true) {
                    int i2 = this.h;
                    if (i < i2 - 1) {
                        SolverVariable[] solverVariableArr = this.f;
                        int i3 = i + 1;
                        solverVariableArr[i] = solverVariableArr[i3];
                        i = i3;
                    } else {
                        this.h = i2 - 1;
                        solverVariable.a = false;
                        return;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow
    public final String toString() {
        GoalVariableAccessor goalVariableAccessor = this.i;
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.h; i++) {
            goalVariableAccessor.j = this.f[i];
            str = str + goalVariableAccessor + " ";
        }
        return str;
    }
}
