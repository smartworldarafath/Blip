package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.PriorityGoalRow;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LinearSystem {
    public static int o = 1000;
    public static boolean p = true;
    public final PriorityGoalRow b;
    public ArrayRow[] e;
    public final Cache k;
    public ArrayRow n;
    public int a = 0;
    public int c = 32;
    public int d = 32;
    public boolean f = false;
    public boolean[] g = new boolean[32];
    public int h = 1;
    public int i = 0;
    public int j = 32;
    public SolverVariable[] l = new SolverVariable[o];
    public int m = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Row {
        SolverVariable a(boolean[] zArr);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ValuesRow extends ArrayRow {
        public ValuesRow(Cache cache) {
            this.a = null;
            this.b = 0.0f;
            this.c = new ArrayList();
            this.e = false;
            this.d = new SolverVariableValues(this, cache);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.constraintlayout.solver.ArrayRow, androidx.constraintlayout.solver.PriorityGoalRow] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.constraintlayout.solver.Cache, java.lang.Object] */
    public LinearSystem() {
        this.e = null;
        this.e = new ArrayRow[32];
        q();
        ?? obj = new Object();
        obj.a = new Pools$SimplePool();
        obj.b = new Pools$SimplePool();
        obj.c = new Pools$SimplePool();
        obj.d = new SolverVariable[32];
        this.k = obj;
        ?? arrayRow = new ArrayRow(obj);
        arrayRow.f = new SolverVariable[128];
        arrayRow.g = new SolverVariable[128];
        arrayRow.h = 0;
        arrayRow.i = new PriorityGoalRow.GoalVariableAccessor();
        this.b = arrayRow;
        if (p) {
            this.n = new ValuesRow(obj);
        } else {
            this.n = new ArrayRow(obj);
        }
    }

    public static int m(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).g;
        if (solverVariable != null) {
            return (int) (solverVariable.e + 0.5f);
        }
        return 0;
    }

    public final SolverVariable a(SolverVariable.Type type) {
        SolverVariable solverVariable = (SolverVariable) this.k.c.a();
        if (solverVariable == null) {
            solverVariable = new SolverVariable(type);
            solverVariable.i = type;
        } else {
            solverVariable.c();
            solverVariable.i = type;
        }
        int i = this.m;
        int i2 = o;
        if (i >= i2) {
            int i3 = i2 * 2;
            o = i3;
            this.l = (SolverVariable[]) Arrays.copyOf(this.l, i3);
        }
        SolverVariable[] solverVariableArr = this.l;
        int i4 = this.m;
        this.m = i4 + 1;
        solverVariableArr[i4] = solverVariable;
        return solverVariable;
    }

    public final void b(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow k = k();
        if (solverVariable2 == solverVariable3) {
            k.d.i(solverVariable, 1.0f);
            k.d.i(solverVariable4, 1.0f);
            k.d.i(solverVariable2, -2.0f);
        } else {
            ArrayRow.ArrayRowVariables arrayRowVariables = k.d;
            if (f == 0.5f) {
                arrayRowVariables.i(solverVariable, 1.0f);
                k.d.i(solverVariable2, -1.0f);
                k.d.i(solverVariable3, -1.0f);
                k.d.i(solverVariable4, 1.0f);
                if (i > 0 || i2 > 0) {
                    k.b = (-i) + i2;
                }
            } else if (f <= 0.0f) {
                arrayRowVariables.i(solverVariable, -1.0f);
                k.d.i(solverVariable2, 1.0f);
                k.b = i;
            } else if (f >= 1.0f) {
                arrayRowVariables.i(solverVariable4, -1.0f);
                k.d.i(solverVariable3, 1.0f);
                k.b = -i2;
            } else {
                float f2 = 1.0f - f;
                arrayRowVariables.i(solverVariable, f2 * 1.0f);
                k.d.i(solverVariable2, f2 * (-1.0f));
                k.d.i(solverVariable3, (-1.0f) * f);
                k.d.i(solverVariable4, 1.0f * f);
                if (i > 0 || i2 > 0) {
                    k.b = (i2 * f) + ((-i) * f2);
                }
            }
        }
        if (i3 != 8) {
            k.b(this, i3);
        }
        c(k);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00be, code lost:
    
        if (r5.l <= 1) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c1, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00cb, code lost:
    
        if (r5.l <= 1) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00e0, code lost:
    
        if (r5.l <= 1) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00e3, code lost:
    
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00ed, code lost:
    
        if (r5.l <= 1) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(ArrayRow arrayRow) {
        boolean z;
        SolverVariable.Type type;
        boolean z2;
        SolverVariable e;
        boolean z3 = true;
        if (this.i + 1 >= this.j || this.h + 1 >= this.d) {
            n();
        }
        if (!arrayRow.e) {
            ArrayList arrayList = arrayRow.c;
            if (this.e.length != 0) {
                boolean z4 = false;
                while (!z4) {
                    int a = arrayRow.d.a();
                    for (int i = 0; i < a; i++) {
                        SolverVariable b = arrayRow.d.b(i);
                        if (b.c != -1 || b.f) {
                            arrayList.add(b);
                        }
                    }
                    if (arrayList.size() > 0) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            SolverVariable solverVariable = (SolverVariable) it.next();
                            if (solverVariable.f) {
                                arrayRow.g(solverVariable, true);
                            } else {
                                arrayRow.h(this.e[solverVariable.c], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z4 = true;
                    }
                }
            }
            float f = 0.0f;
            if (arrayRow.a != null || arrayRow.b != 0.0f || arrayRow.d.a() != 0) {
                float f2 = arrayRow.b;
                if (f2 < 0.0f) {
                    arrayRow.b = f2 * (-1.0f);
                    arrayRow.d.c();
                }
                int a2 = arrayRow.d.a();
                float f3 = 0.0f;
                float f4 = 0.0f;
                SolverVariable solverVariable2 = null;
                SolverVariable solverVariable3 = null;
                int i2 = 0;
                boolean z5 = false;
                boolean z6 = false;
                while (true) {
                    type = SolverVariable.Type.j;
                    if (i2 >= a2) {
                        break;
                    }
                    float d = arrayRow.d.d(i2);
                    float f5 = f;
                    SolverVariable b2 = arrayRow.d.b(i2);
                    if (b2.i == type) {
                        if (solverVariable2 != null) {
                            if (f3 <= d) {
                                if (!z5) {
                                    if (b2.l > 1) {
                                    }
                                }
                            }
                            z5 = true;
                        }
                        f3 = d;
                        solverVariable2 = b2;
                    } else if (solverVariable2 == null && d < f5) {
                        if (solverVariable3 != null) {
                            if (f4 <= d) {
                                if (!z6) {
                                    if (b2.l > 1) {
                                    }
                                }
                            }
                            z6 = true;
                        }
                        f4 = d;
                        solverVariable3 = b2;
                    }
                    i2++;
                    f = f5;
                }
                float f6 = f;
                if (solverVariable2 == null) {
                    solverVariable2 = solverVariable3;
                }
                if (solverVariable2 == null) {
                    z2 = true;
                } else {
                    arrayRow.f(solverVariable2);
                    z2 = false;
                }
                if (arrayRow.d.a() == 0) {
                    arrayRow.e = true;
                }
                if (z2) {
                    if (this.h + 1 >= this.d) {
                        n();
                    }
                    SolverVariable a3 = a(SolverVariable.Type.k);
                    int i3 = this.a + 1;
                    this.a = i3;
                    this.h++;
                    a3.b = i3;
                    this.k.d[i3] = a3;
                    arrayRow.a = a3;
                    h(arrayRow);
                    ArrayRow arrayRow2 = this.n;
                    arrayRow2.a = null;
                    arrayRow2.d.clear();
                    for (int i4 = 0; i4 < arrayRow.d.a(); i4++) {
                        arrayRow2.d.e(arrayRow.d.b(i4), arrayRow.d.d(i4), true);
                    }
                    p(this.n);
                    if (a3.c == -1) {
                        if (arrayRow.a == a3 && (e = arrayRow.e(null, a3)) != null) {
                            arrayRow.f(e);
                        }
                        if (!arrayRow.e) {
                            arrayRow.a.d(arrayRow);
                        }
                        this.i--;
                    }
                } else {
                    z3 = false;
                }
                SolverVariable solverVariable4 = arrayRow.a;
                if (solverVariable4 != null) {
                    if (solverVariable4.i == type || arrayRow.b >= f6) {
                        z = z3;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        } else {
            z = false;
        }
        if (!z) {
            h(arrayRow);
        }
    }

    public final void d(SolverVariable solverVariable, int i) {
        int i2 = solverVariable.c;
        if (i2 == -1) {
            solverVariable.e = i;
            solverVariable.f = true;
            int i3 = solverVariable.k;
            for (int i4 = 0; i4 < i3; i4++) {
                solverVariable.j[i4].g(solverVariable, false);
            }
            solverVariable.k = 0;
            return;
        }
        if (i2 != -1) {
            ArrayRow arrayRow = this.e[i2];
            if (arrayRow.e) {
                arrayRow.b = i;
                return;
            }
            if (arrayRow.d.a() == 0) {
                arrayRow.e = true;
                arrayRow.b = i;
                return;
            }
            ArrayRow k = k();
            if (i < 0) {
                k.b = i * (-1);
                k.d.i(solverVariable, 1.0f);
            } else {
                k.b = i;
                k.d.i(solverVariable, -1.0f);
            }
            c(k);
            return;
        }
        ArrayRow k2 = k();
        k2.a = solverVariable;
        float f = i;
        solverVariable.e = f;
        k2.b = f;
        k2.e = true;
        c(k2);
    }

    public final void e(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        boolean z = false;
        if (i2 == 8 && solverVariable2.f && solverVariable.c == -1) {
            solverVariable.e = solverVariable2.e + i;
            solverVariable.f = true;
            int i3 = solverVariable.k;
            for (int i4 = 0; i4 < i3; i4++) {
                solverVariable.j[i4].g(solverVariable, false);
            }
            solverVariable.k = 0;
            return;
        }
        ArrayRow k = k();
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            k.b = i;
        }
        ArrayRow.ArrayRowVariables arrayRowVariables = k.d;
        if (!z) {
            arrayRowVariables.i(solverVariable, -1.0f);
            k.d.i(solverVariable2, 1.0f);
        } else {
            arrayRowVariables.i(solverVariable, 1.0f);
            k.d.i(solverVariable2, -1.0f);
        }
        if (i2 != 8) {
            k.b(this, i2);
        }
        c(k);
    }

    public final void f(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow k = k();
        SolverVariable l = l();
        l.d = 0;
        k.c(solverVariable, solverVariable2, l, i);
        if (i2 != 8) {
            k.d.i(i(i2), (int) (k.d.f(l) * (-1.0f)));
        }
        c(k);
    }

    public final void g(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow k = k();
        SolverVariable l = l();
        l.d = 0;
        k.d(solverVariable, solverVariable2, l, i);
        if (i2 != 8) {
            k.d.i(i(i2), (int) (k.d.f(l) * (-1.0f)));
        }
        c(k);
    }

    public final void h(ArrayRow arrayRow) {
        boolean z = p;
        ArrayRow[] arrayRowArr = this.e;
        int i = this.i;
        Cache cache = this.k;
        if (z) {
            ArrayRow arrayRow2 = arrayRowArr[i];
            if (arrayRow2 != null) {
                cache.a.b(arrayRow2);
            }
        } else {
            ArrayRow arrayRow3 = arrayRowArr[i];
            if (arrayRow3 != null) {
                cache.b.b(arrayRow3);
            }
        }
        ArrayRow[] arrayRowArr2 = this.e;
        int i2 = this.i;
        arrayRowArr2[i2] = arrayRow;
        SolverVariable solverVariable = arrayRow.a;
        solverVariable.c = i2;
        this.i = i2 + 1;
        solverVariable.d(arrayRow);
    }

    public final SolverVariable i(int i) {
        if (this.h + 1 >= this.d) {
            n();
        }
        SolverVariable a = a(SolverVariable.Type.l);
        float[] fArr = a.h;
        int i2 = this.a + 1;
        this.a = i2;
        this.h++;
        a.b = i2;
        a.d = i;
        this.k.d[i2] = a;
        PriorityGoalRow priorityGoalRow = this.b;
        priorityGoalRow.i.j = a;
        Arrays.fill(fArr, 0.0f);
        fArr[a.d] = 1.0f;
        priorityGoalRow.i(a);
        return a;
    }

    public final SolverVariable j(Object obj) {
        if (obj != null) {
            if (this.h + 1 >= this.d) {
                n();
            }
            if (obj instanceof ConstraintAnchor) {
                ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
                SolverVariable solverVariable = constraintAnchor.g;
                if (solverVariable == null) {
                    constraintAnchor.f();
                    solverVariable = constraintAnchor.g;
                }
                int i = solverVariable.b;
                Cache cache = this.k;
                if (i != -1 && i <= this.a && cache.d[i] != null) {
                    return solverVariable;
                }
                if (i != -1) {
                    solverVariable.c();
                }
                int i2 = this.a + 1;
                this.a = i2;
                this.h++;
                solverVariable.b = i2;
                solverVariable.i = SolverVariable.Type.j;
                cache.d[i2] = solverVariable;
                return solverVariable;
            }
            return null;
        }
        return null;
    }

    public final ArrayRow k() {
        boolean z = p;
        Cache cache = this.k;
        if (z) {
            ArrayRow arrayRow = (ArrayRow) cache.a.a();
            if (arrayRow == null) {
                return new ValuesRow(cache);
            }
            arrayRow.a = null;
            arrayRow.d.clear();
            arrayRow.b = 0.0f;
            arrayRow.e = false;
            return arrayRow;
        }
        ArrayRow arrayRow2 = (ArrayRow) cache.b.a();
        if (arrayRow2 == null) {
            return new ArrayRow(cache);
        }
        arrayRow2.a = null;
        arrayRow2.d.clear();
        arrayRow2.b = 0.0f;
        arrayRow2.e = false;
        return arrayRow2;
    }

    public final SolverVariable l() {
        if (this.h + 1 >= this.d) {
            n();
        }
        SolverVariable a = a(SolverVariable.Type.k);
        int i = this.a + 1;
        this.a = i;
        this.h++;
        a.b = i;
        this.k.d[i] = a;
        return a;
    }

    public final void n() {
        int i = this.c * 2;
        this.c = i;
        this.e = (ArrayRow[]) Arrays.copyOf(this.e, i);
        Cache cache = this.k;
        cache.d = (SolverVariable[]) Arrays.copyOf(cache.d, this.c);
        int i2 = this.c;
        this.g = new boolean[i2];
        this.d = i2;
        this.j = i2;
    }

    public final void o(PriorityGoalRow priorityGoalRow) {
        Cache cache;
        int i = 0;
        while (true) {
            if (i >= this.i) {
                break;
            }
            ArrayRow arrayRow = this.e[i];
            SolverVariable.Type type = arrayRow.a.i;
            SolverVariable.Type type2 = SolverVariable.Type.j;
            if (type != type2) {
                float f = 0.0f;
                if (arrayRow.b < 0.0f) {
                    boolean z = false;
                    int i2 = 0;
                    while (!z) {
                        int i3 = 1;
                        i2++;
                        float f2 = Float.MAX_VALUE;
                        int i4 = 0;
                        int i5 = -1;
                        int i6 = -1;
                        int i7 = 0;
                        while (true) {
                            int i8 = this.i;
                            cache = this.k;
                            if (i4 >= i8) {
                                break;
                            }
                            ArrayRow arrayRow2 = this.e[i4];
                            if (arrayRow2.a.i != type2 && !arrayRow2.e && arrayRow2.b < f) {
                                int i9 = i3;
                                while (i9 < this.h) {
                                    SolverVariable solverVariable = cache.d[i9];
                                    float f3 = f;
                                    float f4 = arrayRow2.d.f(solverVariable);
                                    if (f4 > f3) {
                                        for (int i10 = 0; i10 < 9; i10++) {
                                            float f5 = solverVariable.g[i10] / f4;
                                            if ((f5 < f2 && i10 == i7) || i10 > i7) {
                                                i7 = i10;
                                                f2 = f5;
                                                i5 = i4;
                                                i6 = i9;
                                            }
                                        }
                                    }
                                    i9++;
                                    f = f3;
                                }
                            }
                            i4++;
                            f = f;
                            i3 = 1;
                        }
                        float f6 = f;
                        if (i5 != -1) {
                            ArrayRow arrayRow3 = this.e[i5];
                            arrayRow3.a.c = -1;
                            arrayRow3.f(cache.d[i6]);
                            SolverVariable solverVariable2 = arrayRow3.a;
                            solverVariable2.c = i5;
                            solverVariable2.d(arrayRow3);
                        } else {
                            z = true;
                        }
                        if (i2 > this.h / 2) {
                            z = true;
                        }
                        f = f6;
                    }
                }
            }
            i++;
        }
        p(priorityGoalRow);
        for (int i11 = 0; i11 < this.i; i11++) {
            ArrayRow arrayRow4 = this.e[i11];
            arrayRow4.a.e = arrayRow4.b;
        }
    }

    public final void p(Row row) {
        for (int i = 0; i < this.h; i++) {
            this.g[i] = false;
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            i2++;
            if (i2 < this.h * 2) {
                if (((ArrayRow) row).a != null) {
                    this.g[((ArrayRow) row).a.b] = true;
                }
                SolverVariable a = row.a(this.g);
                if (a != null) {
                    boolean[] zArr = this.g;
                    int i3 = a.b;
                    if (!zArr[i3]) {
                        zArr[i3] = true;
                    } else {
                        return;
                    }
                }
                if (a != null) {
                    float f = Float.MAX_VALUE;
                    int i4 = -1;
                    for (int i5 = 0; i5 < this.i; i5++) {
                        ArrayRow arrayRow = this.e[i5];
                        if (arrayRow.a.i != SolverVariable.Type.j && !arrayRow.e && arrayRow.d.g(a)) {
                            float f2 = arrayRow.d.f(a);
                            if (f2 < 0.0f) {
                                float f3 = (-arrayRow.b) / f2;
                                if (f3 < f) {
                                    i4 = i5;
                                    f = f3;
                                }
                            }
                        }
                    }
                    if (i4 > -1) {
                        ArrayRow arrayRow2 = this.e[i4];
                        arrayRow2.a.c = -1;
                        arrayRow2.f(a);
                        SolverVariable solverVariable = arrayRow2.a;
                        solverVariable.c = i4;
                        solverVariable.d(arrayRow2);
                    }
                } else {
                    z = true;
                }
            } else {
                return;
            }
        }
    }

    public final void q() {
        boolean z = p;
        Cache cache = this.k;
        int i = 0;
        if (z) {
            while (true) {
                ArrayRow[] arrayRowArr = this.e;
                if (i < arrayRowArr.length) {
                    ArrayRow arrayRow = arrayRowArr[i];
                    if (arrayRow != null) {
                        cache.a.b(arrayRow);
                    }
                    this.e[i] = null;
                    i++;
                } else {
                    return;
                }
            }
        } else {
            while (true) {
                ArrayRow[] arrayRowArr2 = this.e;
                if (i < arrayRowArr2.length) {
                    ArrayRow arrayRow2 = arrayRowArr2[i];
                    if (arrayRow2 != null) {
                        cache.b.b(arrayRow2);
                    }
                    this.e[i] = null;
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void r() {
        Cache cache;
        int i = 0;
        while (true) {
            cache = this.k;
            SolverVariable[] solverVariableArr = cache.d;
            if (i >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i];
            if (solverVariable != null) {
                solverVariable.c();
            }
            i++;
        }
        Pools$SimplePool pools$SimplePool = cache.c;
        SolverVariable[] solverVariableArr2 = this.l;
        int i2 = this.m;
        pools$SimplePool.getClass();
        if (i2 > solverVariableArr2.length) {
            i2 = solverVariableArr2.length;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            SolverVariable solverVariable2 = solverVariableArr2[i3];
            int i4 = pools$SimplePool.b;
            Object[] objArr = pools$SimplePool.a;
            if (i4 < objArr.length) {
                objArr[i4] = solverVariable2;
                pools$SimplePool.b = i4 + 1;
            }
        }
        this.m = 0;
        Arrays.fill(cache.d, (Object) null);
        this.a = 0;
        PriorityGoalRow priorityGoalRow = this.b;
        priorityGoalRow.h = 0;
        priorityGoalRow.b = 0.0f;
        this.h = 1;
        for (int i5 = 0; i5 < this.i; i5++) {
            this.e[i5].getClass();
        }
        q();
        this.i = 0;
        if (p) {
            this.n = new ValuesRow(cache);
        } else {
            this.n = new ArrayRow(cache);
        }
    }
}
