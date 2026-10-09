package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SolverVariableValues implements ArrayRow.ArrayRowVariables {
    public int a = 16;
    public final int[] b = new int[16];
    public int[] c = new int[16];
    public int[] d = new int[16];
    public float[] e = new float[16];
    public int[] f = new int[16];
    public int[] g = new int[16];
    public int h = 0;
    public int i = -1;
    public final ArrayRow j;
    public final Cache k;

    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.j = arrayRow;
        this.k = cache;
        clear();
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final int a() {
        return this.h;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final SolverVariable b(int i) {
        int i2 = this.h;
        if (i2 != 0) {
            int i3 = this.i;
            for (int i4 = 0; i4 < i2; i4++) {
                if (i4 == i && i3 != -1) {
                    return this.k.d[this.d[i3]];
                }
                i3 = this.g[i3];
                if (i3 == -1) {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void c() {
        int i = this.h;
        int i2 = this.i;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.e;
            fArr[i2] = fArr[i2] * (-1.0f);
            i2 = this.g[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable b = b(i2);
            if (b != null) {
                b.b(this.j);
            }
        }
        for (int i3 = 0; i3 < this.a; i3++) {
            this.d[i3] = -1;
            this.c[i3] = -1;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            this.b[i4] = -1;
        }
        this.h = 0;
        this.i = -1;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final float d(int i) {
        int i2 = this.h;
        int i3 = this.i;
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 == i) {
                return this.e[i3];
            }
            i3 = this.g[i3];
            if (i3 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void e(SolverVariable solverVariable, float f, boolean z) {
        if (f <= -0.001f || f >= 0.001f) {
            int n = n(solverVariable);
            if (n == -1) {
                i(solverVariable, f);
                return;
            }
            float[] fArr = this.e;
            float f2 = fArr[n] + f;
            fArr[n] = f2;
            if (f2 > -0.001f && f2 < 0.001f) {
                fArr[n] = 0.0f;
                j(solverVariable, z);
            }
        }
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final float f(SolverVariable solverVariable) {
        int n = n(solverVariable);
        if (n != -1) {
            return this.e[n];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final boolean g(SolverVariable solverVariable) {
        if (n(solverVariable) != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final float h(ArrayRow arrayRow, boolean z) {
        float f = f(arrayRow.a);
        j(arrayRow.a, z);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.d;
        int i = solverVariableValues.h;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = solverVariableValues.d[i3];
            if (i4 != -1) {
                e(this.k.d[i4], solverVariableValues.e[i3] * f, z);
                i2++;
            }
            i3++;
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void i(SolverVariable solverVariable, float f) {
        if (f > -0.001f && f < 0.001f) {
            j(solverVariable, true);
            return;
        }
        int i = 0;
        if (this.h == 0) {
            m(0, solverVariable, f);
            l(solverVariable, 0);
            this.i = 0;
            return;
        }
        int n = n(solverVariable);
        if (n != -1) {
            this.e[n] = f;
            return;
        }
        int i2 = this.h + 1;
        int i3 = this.a;
        if (i2 >= i3) {
            int i4 = i3 * 2;
            this.d = Arrays.copyOf(this.d, i4);
            this.e = Arrays.copyOf(this.e, i4);
            this.f = Arrays.copyOf(this.f, i4);
            this.g = Arrays.copyOf(this.g, i4);
            this.c = Arrays.copyOf(this.c, i4);
            for (int i5 = this.a; i5 < i4; i5++) {
                this.d[i5] = -1;
                this.c[i5] = -1;
            }
            this.a = i4;
        }
        int i6 = this.h;
        int i7 = this.i;
        int i8 = -1;
        for (int i9 = 0; i9 < i6; i9++) {
            int i10 = this.d[i7];
            int i11 = solverVariable.b;
            if (i10 == i11) {
                this.e[i7] = f;
                return;
            }
            if (i10 < i11) {
                i8 = i7;
            }
            i7 = this.g[i7];
            if (i7 == -1) {
                break;
            }
        }
        while (true) {
            if (i < this.a) {
                if (this.d[i] == -1) {
                    break;
                } else {
                    i++;
                }
            } else {
                i = -1;
                break;
            }
        }
        m(i, solverVariable, f);
        int[] iArr = this.f;
        if (i8 != -1) {
            iArr[i] = i8;
            int[] iArr2 = this.g;
            iArr2[i] = iArr2[i8];
            iArr2[i8] = i;
        } else {
            iArr[i] = -1;
            int i12 = this.h;
            int[] iArr3 = this.g;
            if (i12 > 0) {
                iArr3[i] = this.i;
                this.i = i;
            } else {
                iArr3[i] = -1;
            }
        }
        int i13 = this.g[i];
        if (i13 != -1) {
            iArr[i13] = i;
        }
        l(solverVariable, i);
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final float j(SolverVariable solverVariable, boolean z) {
        int[] iArr;
        int i;
        int n = n(solverVariable);
        if (n == -1) {
            return 0.0f;
        }
        int i2 = solverVariable.b;
        int i3 = i2 % 16;
        int[] iArr2 = this.b;
        int i4 = iArr2[i3];
        if (i4 != -1) {
            if (this.d[i4] == i2) {
                int[] iArr3 = this.c;
                iArr2[i3] = iArr3[i4];
                iArr3[i4] = -1;
            } else {
                while (true) {
                    iArr = this.c;
                    i = iArr[i4];
                    if (i == -1 || this.d[i] == i2) {
                        break;
                    }
                    i4 = i;
                }
                if (i != -1 && this.d[i] == i2) {
                    iArr[i4] = iArr[i];
                    iArr[i] = -1;
                }
            }
        }
        float f = this.e[n];
        if (this.i == n) {
            this.i = this.g[n];
        }
        this.d[n] = -1;
        int[] iArr4 = this.f;
        int i5 = iArr4[n];
        if (i5 != -1) {
            int[] iArr5 = this.g;
            iArr5[i5] = iArr5[n];
        }
        int i6 = this.g[n];
        if (i6 != -1) {
            iArr4[i6] = iArr4[n];
        }
        this.h--;
        solverVariable.l--;
        if (z) {
            solverVariable.b(this.j);
        }
        return f;
    }

    @Override // androidx.constraintlayout.solver.ArrayRow.ArrayRowVariables
    public final void k(float f) {
        int i = this.h;
        int i2 = this.i;
        for (int i3 = 0; i3 < i; i3++) {
            float[] fArr = this.e;
            fArr[i2] = fArr[i2] / f;
            i2 = this.g[i2];
            if (i2 == -1) {
                return;
            }
        }
    }

    public final void l(SolverVariable solverVariable, int i) {
        int[] iArr;
        int i2 = solverVariable.b % 16;
        int[] iArr2 = this.b;
        int i3 = iArr2[i2];
        if (i3 == -1) {
            iArr2[i2] = i;
        } else {
            while (true) {
                iArr = this.c;
                int i4 = iArr[i3];
                if (i4 == -1) {
                    break;
                } else {
                    i3 = i4;
                }
            }
            iArr[i3] = i;
        }
        this.c[i] = -1;
    }

    public final void m(int i, SolverVariable solverVariable, float f) {
        this.d[i] = solverVariable.b;
        this.e[i] = f;
        this.f[i] = -1;
        this.g[i] = -1;
        solverVariable.a(this.j);
        solverVariable.l++;
        this.h++;
    }

    public final int n(SolverVariable solverVariable) {
        if (this.h != 0) {
            int i = solverVariable.b;
            int i2 = this.b[i % 16];
            if (i2 != -1) {
                if (this.d[i2] == i) {
                    return i2;
                }
                do {
                    i2 = this.c[i2];
                    if (i2 == -1) {
                        break;
                    }
                } while (this.d[i2] != i);
                if (i2 != -1 && this.d[i2] == i) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public final String toString() {
        String concat;
        String concat2;
        String str = hashCode() + " { ";
        int i = this.h;
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable b = b(i2);
            if (b != null) {
                String str2 = str + b + " = " + d(i2) + " ";
                int n = n(b);
                String concat3 = str2.concat("[p: ");
                int i3 = this.f[n];
                Cache cache = this.k;
                if (i3 != -1) {
                    concat = concat3 + cache.d[this.d[this.f[n]]];
                } else {
                    concat = concat3.concat("none");
                }
                String concat4 = concat.concat(", n: ");
                if (this.g[n] != -1) {
                    concat2 = concat4 + cache.d[this.d[this.g[n]]];
                } else {
                    concat2 = concat4.concat("none");
                }
                str = concat2.concat("]");
            }
        }
        return str.concat(" }");
    }
}
