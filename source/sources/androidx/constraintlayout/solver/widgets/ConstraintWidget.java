package androidx.constraintlayout.solver.widgets;

import android.view.View;
import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.analyzer.ChainRun;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.VerticalWidgetRun;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintWidget {
    public final ConstraintAnchor A;
    public final ConstraintAnchor B;
    public final ConstraintAnchor C;
    public final ConstraintAnchor D;
    public final ConstraintAnchor E;
    public final ConstraintAnchor[] F;
    public final ArrayList G;
    public final boolean[] H;
    public final DimensionBehaviour[] I;
    public ConstraintWidget J;
    public int K;
    public int L;
    public float M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public float T;
    public float U;
    public View V;
    public int W;
    public String X;
    public int Y;
    public int Z;
    public final float[] a0;
    public ChainRun b;
    public final ConstraintWidget[] b0;
    public ChainRun c;
    public final ConstraintWidget[] c0;
    public final ConstraintAnchor x;
    public final ConstraintAnchor y;
    public final ConstraintAnchor z;
    public boolean a = false;
    public final HorizontalWidgetRun d = new HorizontalWidgetRun(this);
    public final VerticalWidgetRun e = new VerticalWidgetRun(this);
    public final boolean[] f = {true, true};
    public final int[] g = {0, 0, 0, 0};
    public int h = -1;
    public int i = -1;
    public int j = 0;
    public int k = 0;
    public final int[] l = new int[2];
    public int m = 0;
    public int n = 0;
    public float o = 1.0f;
    public int p = 0;
    public int q = 0;
    public float r = 1.0f;
    public int s = -1;
    public float t = 1.0f;
    public final int[] u = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    public float v = 0.0f;
    public boolean w = false;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DimensionBehaviour {
        public static final DimensionBehaviour j;
        public static final DimensionBehaviour k;
        public static final DimensionBehaviour l;
        public static final DimensionBehaviour m;
        public static final /* synthetic */ DimensionBehaviour[] n;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour] */
        static {
            ?? r0 = new Enum("FIXED", 0);
            j = r0;
            ?? r1 = new Enum("WRAP_CONTENT", 1);
            k = r1;
            ?? r2 = new Enum("MATCH_CONSTRAINT", 2);
            l = r2;
            ?? r3 = new Enum("MATCH_PARENT", 3);
            m = r3;
            n = new DimensionBehaviour[]{r0, r1, r2, r3};
        }

        public static DimensionBehaviour valueOf(String str) {
            return (DimensionBehaviour) Enum.valueOf(DimensionBehaviour.class, str);
        }

        public static DimensionBehaviour[] values() {
            return (DimensionBehaviour[]) n.clone();
        }
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.j);
        this.x = constraintAnchor;
        ConstraintAnchor constraintAnchor2 = new ConstraintAnchor(this, ConstraintAnchor.Type.k);
        this.y = constraintAnchor2;
        ConstraintAnchor constraintAnchor3 = new ConstraintAnchor(this, ConstraintAnchor.Type.l);
        this.z = constraintAnchor3;
        ConstraintAnchor constraintAnchor4 = new ConstraintAnchor(this, ConstraintAnchor.Type.m);
        this.A = constraintAnchor4;
        ConstraintAnchor constraintAnchor5 = new ConstraintAnchor(this, ConstraintAnchor.Type.n);
        this.B = constraintAnchor5;
        ConstraintAnchor constraintAnchor6 = new ConstraintAnchor(this, ConstraintAnchor.Type.p);
        this.C = constraintAnchor6;
        ConstraintAnchor constraintAnchor7 = new ConstraintAnchor(this, ConstraintAnchor.Type.q);
        this.D = constraintAnchor7;
        ConstraintAnchor constraintAnchor8 = new ConstraintAnchor(this, ConstraintAnchor.Type.o);
        this.E = constraintAnchor8;
        this.F = new ConstraintAnchor[]{constraintAnchor, constraintAnchor3, constraintAnchor2, constraintAnchor4, constraintAnchor5, constraintAnchor8};
        ArrayList arrayList = new ArrayList();
        this.G = arrayList;
        this.H = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.j;
        this.I = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.J = null;
        this.K = 0;
        this.L = 0;
        this.M = 0.0f;
        this.N = -1;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.T = 0.5f;
        this.U = 0.5f;
        this.W = 0;
        this.X = null;
        this.Y = 0;
        this.Z = 0;
        this.a0 = new float[]{-1.0f, -1.0f};
        this.b0 = new ConstraintWidget[]{null, null};
        this.c0 = new ConstraintWidget[]{null, null};
        arrayList.add(constraintAnchor);
        arrayList.add(constraintAnchor2);
        arrayList.add(constraintAnchor3);
        arrayList.add(constraintAnchor4);
        arrayList.add(constraintAnchor6);
        arrayList.add(constraintAnchor7);
        arrayList.add(constraintAnchor8);
        arrayList.add(constraintAnchor5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:222:0x04a7, code lost:
    
        if (r61.W == r11) goto L284;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:156:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:233:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x02fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(LinearSystem linearSystem) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable;
        ConstraintAnchor constraintAnchor3;
        boolean[] zArr;
        HorizontalWidgetRun horizontalWidgetRun;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        boolean z5;
        boolean z6;
        SolverVariable solverVariable2;
        boolean z7;
        Object obj;
        int i3;
        int i4;
        boolean z8;
        char c;
        boolean z9;
        int i5;
        boolean z10;
        int i6;
        int i7;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ConstraintAnchor constraintAnchor4;
        DimensionBehaviour dimensionBehaviour;
        ConstraintAnchor constraintAnchor5;
        SolverVariable solverVariable5;
        Object obj2;
        boolean z11;
        SolverVariable solverVariable6;
        SolverVariable solverVariable7;
        boolean z12;
        boolean[] zArr2;
        VerticalWidgetRun verticalWidgetRun;
        DependencyNode dependencyNode;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        SolverVariable solverVariable10;
        int i8;
        int i9;
        int i10;
        int i11;
        SolverVariable solverVariable11;
        SolverVariable solverVariable12;
        int i12;
        int i13;
        boolean z13;
        SolverVariable solverVariable13;
        boolean z14;
        int i14;
        SolverVariable solverVariable14;
        SolverVariable solverVariable15;
        int i15;
        int i16;
        int i17;
        boolean z15;
        boolean o;
        int i18;
        boolean z16;
        boolean p;
        boolean z17;
        boolean z18;
        boolean z19;
        LinearSystem linearSystem2 = linearSystem;
        ConstraintAnchor constraintAnchor6 = this.x;
        SolverVariable j = linearSystem2.j(constraintAnchor6);
        ConstraintAnchor constraintAnchor7 = this.z;
        SolverVariable j2 = linearSystem2.j(constraintAnchor7);
        ConstraintAnchor constraintAnchor8 = this.y;
        SolverVariable j3 = linearSystem2.j(constraintAnchor8);
        ConstraintAnchor constraintAnchor9 = this.A;
        SolverVariable j4 = linearSystem2.j(constraintAnchor9);
        ConstraintAnchor constraintAnchor10 = this.B;
        SolverVariable j5 = linearSystem2.j(constraintAnchor10);
        HorizontalWidgetRun horizontalWidgetRun2 = this.d;
        DependencyNode dependencyNode2 = horizontalWidgetRun2.h;
        DependencyNode dependencyNode3 = horizontalWidgetRun2.i;
        boolean z20 = dependencyNode2.j;
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.k;
        boolean[] zArr3 = this.f;
        VerticalWidgetRun verticalWidgetRun2 = this.e;
        if (z20 && dependencyNode3.j) {
            DependencyNode dependencyNode4 = verticalWidgetRun2.h;
            constraintAnchor = constraintAnchor9;
            DependencyNode dependencyNode5 = verticalWidgetRun2.i;
            if (dependencyNode4.j && dependencyNode5.j) {
                linearSystem2.d(j, dependencyNode2.g);
                linearSystem2.d(j2, dependencyNode3.g);
                linearSystem2.d(j3, verticalWidgetRun2.h.g);
                linearSystem2.d(j4, dependencyNode5.g);
                linearSystem2.d(j5, verticalWidgetRun2.k.g);
                ConstraintWidget constraintWidget = this.J;
                if (constraintWidget != null) {
                    DimensionBehaviour[] dimensionBehaviourArr = constraintWidget.I;
                    if (dimensionBehaviourArr[0] == dimensionBehaviour2) {
                        z18 = true;
                    } else {
                        z18 = false;
                    }
                    if (dimensionBehaviourArr[1] == dimensionBehaviour2) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    if (z18 && zArr3[0] && !o()) {
                        linearSystem2.f(linearSystem2.j(this.J.z), j2, 0, 8);
                    }
                    if (z19 && zArr3[1] && !p()) {
                        linearSystem2.f(linearSystem2.j(this.J.A), j4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
        } else {
            constraintAnchor = constraintAnchor9;
        }
        ConstraintWidget constraintWidget2 = this.J;
        if (constraintWidget2 != null) {
            DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget2.I;
            if (dimensionBehaviourArr2[0] == dimensionBehaviour2) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (dimensionBehaviourArr2[1] == dimensionBehaviour2) {
                z15 = true;
            } else {
                z15 = false;
            }
            if (n(0)) {
                solverVariable = j3;
                ((ConstraintWidgetContainer) this.J).z(this, 0);
                o = true;
                i18 = 1;
            } else {
                solverVariable = j3;
                o = o();
                i18 = 1;
            }
            if (n(i18)) {
                z16 = o;
                ((ConstraintWidgetContainer) this.J).z(this, i18);
                p = true;
            } else {
                z16 = o;
                p = p();
            }
            if (!z16 && z2) {
                z17 = p;
                if (this.W != 8 && constraintAnchor6.d == null && constraintAnchor7.d == null) {
                    constraintAnchor2 = constraintAnchor6;
                    linearSystem2.f(linearSystem2.j(this.J.z), j2, 0, 1);
                } else {
                    constraintAnchor2 = constraintAnchor6;
                }
            } else {
                constraintAnchor2 = constraintAnchor6;
                z17 = p;
            }
            if (!z17 && z15 && this.W != 8 && constraintAnchor8.d == null) {
                ConstraintAnchor constraintAnchor11 = constraintAnchor;
                if (constraintAnchor11.d == null && constraintAnchor10 == null) {
                    constraintAnchor = constraintAnchor11;
                    linearSystem2.f(linearSystem2.j(this.J.A), j4, 0, 1);
                } else {
                    constraintAnchor = constraintAnchor11;
                }
            }
            constraintAnchor3 = constraintAnchor7;
            z = z15;
            zArr = zArr3;
            horizontalWidgetRun = horizontalWidgetRun2;
            z3 = z16;
            z4 = z17;
        } else {
            constraintAnchor2 = constraintAnchor6;
            solverVariable = j3;
            constraintAnchor3 = constraintAnchor7;
            zArr = zArr3;
            horizontalWidgetRun = horizontalWidgetRun2;
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        int i19 = this.K;
        boolean[] zArr4 = zArr;
        int i20 = this.R;
        if (i19 < i20) {
            i = i20;
        } else {
            i = i19;
        }
        int i21 = this.L;
        boolean z21 = z;
        int i22 = this.S;
        if (i21 < i22) {
            i2 = i22;
        } else {
            i2 = i21;
        }
        DimensionBehaviour[] dimensionBehaviourArr3 = this.I;
        DimensionBehaviour dimensionBehaviour3 = dimensionBehaviourArr3[0];
        DimensionBehaviour dimensionBehaviour4 = DimensionBehaviour.l;
        if (dimensionBehaviour3 != dimensionBehaviour4) {
            z5 = true;
        } else {
            z5 = false;
        }
        ConstraintAnchor constraintAnchor12 = constraintAnchor3;
        DimensionBehaviour dimensionBehaviour5 = dimensionBehaviourArr3[1];
        if (dimensionBehaviour5 != dimensionBehaviour4) {
            z6 = true;
        } else {
            z6 = false;
        }
        HorizontalWidgetRun horizontalWidgetRun3 = horizontalWidgetRun;
        int i23 = this.N;
        this.s = i23;
        float f = this.M;
        this.t = f;
        int i24 = this.j;
        int i25 = this.k;
        if (f > 0.0f) {
            solverVariable2 = j5;
            if (this.W != 8) {
                if (dimensionBehaviour3 == dimensionBehaviour4 && i24 == 0) {
                    i15 = 3;
                } else {
                    i15 = i24;
                }
                if (dimensionBehaviour5 == dimensionBehaviour4 && i25 == 0) {
                    i16 = 3;
                } else {
                    i16 = i25;
                }
                if (dimensionBehaviour3 == dimensionBehaviour4 && dimensionBehaviour5 == dimensionBehaviour4 && i15 == 3) {
                    z7 = z2;
                    i17 = i16;
                    if (i17 == 3) {
                        if (i23 == -1) {
                            if (z5 && !z6) {
                                this.s = 0;
                            } else if (!z5 && z6) {
                                this.s = 1;
                                if (i23 == -1) {
                                    this.t = 1.0f / f;
                                }
                            }
                        }
                        if (this.s == 0 && (!constraintAnchor8.d() || !constraintAnchor.d())) {
                            this.s = 1;
                        } else if (this.s == 1 && (!constraintAnchor2.d() || !constraintAnchor12.d())) {
                            this.s = 0;
                        }
                        if (this.s == -1 && (!constraintAnchor8.d() || !constraintAnchor.d() || !constraintAnchor2.d() || !constraintAnchor12.d())) {
                            if (constraintAnchor8.d() && constraintAnchor.d()) {
                                this.s = 0;
                            } else if (constraintAnchor2.d() && constraintAnchor12.d()) {
                                this.t = 1.0f / this.t;
                                this.s = 1;
                            }
                        }
                        if (this.s == -1) {
                            int i26 = this.m;
                            if (i26 > 0 && this.p == 0) {
                                this.s = 0;
                            } else if (i26 == 0 && this.p > 0) {
                                this.t = 1.0f / this.t;
                                this.s = 1;
                            }
                        }
                        i3 = i15;
                        obj = constraintAnchor;
                        z8 = true;
                        i4 = i17;
                        int[] iArr = this.l;
                        iArr[0] = i3;
                        iArr[1] = i4;
                        if (!z8) {
                            int i27 = this.s;
                            c = 65535;
                            if (i27 == 0 || i27 == -1) {
                                z9 = true;
                                if (dimensionBehaviourArr3[0] != dimensionBehaviour2 && (this instanceof ConstraintWidgetContainer)) {
                                    i5 = i3;
                                    z10 = true;
                                } else {
                                    i5 = i3;
                                    z10 = false;
                                }
                                if (z10) {
                                    i6 = 0;
                                } else {
                                    i6 = i;
                                }
                                ConstraintAnchor constraintAnchor13 = this.E;
                                boolean z22 = !constraintAnchor13.d();
                                boolean[] zArr5 = this.H;
                                boolean z23 = zArr5[0];
                                boolean z24 = zArr5[1];
                                i7 = this.h;
                                Object obj3 = obj;
                                int[] iArr2 = this.u;
                                SolverVariable solverVariable16 = null;
                                if (i7 != 2) {
                                    DependencyNode dependencyNode6 = horizontalWidgetRun3.h;
                                    if (dependencyNode6.j && dependencyNode3.j) {
                                        linearSystem2.d(j, dependencyNode6.g);
                                        linearSystem2.d(j2, dependencyNode3.g);
                                        if (this.J != null && z7 && zArr4[0] && !o()) {
                                            linearSystem2.f(linearSystem2.j(this.J.z), j2, 0, 8);
                                        }
                                        solverVariable3 = j;
                                        solverVariable4 = j2;
                                        constraintAnchor4 = constraintAnchor13;
                                        dimensionBehaviour = dimensionBehaviour2;
                                        verticalWidgetRun = verticalWidgetRun2;
                                        constraintAnchor5 = constraintAnchor10;
                                        solverVariable5 = solverVariable;
                                        obj2 = obj3;
                                        z11 = z21;
                                        solverVariable6 = j4;
                                        solverVariable7 = solverVariable2;
                                        z12 = z7;
                                        zArr2 = zArr4;
                                    } else {
                                        ConstraintWidget constraintWidget3 = this.J;
                                        if (constraintWidget3 != null) {
                                            solverVariable14 = linearSystem2.j(constraintWidget3.z);
                                        } else {
                                            solverVariable14 = null;
                                        }
                                        ConstraintWidget constraintWidget4 = this.J;
                                        if (constraintWidget4 != null) {
                                            solverVariable15 = linearSystem2.j(constraintWidget4.x);
                                        } else {
                                            solverVariable15 = null;
                                        }
                                        constraintAnchor4 = constraintAnchor13;
                                        solverVariable3 = j;
                                        boolean z25 = z9;
                                        solverVariable5 = solverVariable;
                                        obj2 = obj3;
                                        z11 = z21;
                                        solverVariable6 = j4;
                                        solverVariable4 = j2;
                                        solverVariable7 = solverVariable2;
                                        z12 = z7;
                                        dimensionBehaviour = dimensionBehaviour2;
                                        constraintAnchor5 = constraintAnchor10;
                                        zArr2 = zArr4;
                                        linearSystem2 = linearSystem;
                                        c(linearSystem2, true, z12, z11, zArr4[0], solverVariable15, solverVariable14, dimensionBehaviourArr3[0], z10, this.x, this.z, this.O, i6, this.R, iArr2[0], this.T, z25, z3, z4, z23, i5, i4, this.m, this.n, this.o, z22);
                                        verticalWidgetRun = verticalWidgetRun2;
                                    }
                                } else {
                                    solverVariable3 = j;
                                    solverVariable4 = j2;
                                    constraintAnchor4 = constraintAnchor13;
                                    dimensionBehaviour = dimensionBehaviour2;
                                    constraintAnchor5 = constraintAnchor10;
                                    solverVariable5 = solverVariable;
                                    obj2 = obj3;
                                    z11 = z21;
                                    solverVariable6 = j4;
                                    solverVariable7 = solverVariable2;
                                    z12 = z7;
                                    zArr2 = zArr4;
                                    verticalWidgetRun = verticalWidgetRun2;
                                }
                                dependencyNode = verticalWidgetRun.h;
                                DependencyNode dependencyNode7 = verticalWidgetRun.i;
                                if (!dependencyNode.j && dependencyNode7.j) {
                                    solverVariable8 = solverVariable5;
                                    linearSystem2.d(solverVariable8, dependencyNode.g);
                                    int i28 = dependencyNode7.g;
                                    solverVariable9 = solverVariable6;
                                    linearSystem2.d(solverVariable9, i28);
                                    solverVariable10 = solverVariable7;
                                    linearSystem2.d(solverVariable10, verticalWidgetRun.k.g);
                                    ConstraintWidget constraintWidget5 = this.J;
                                    if (constraintWidget5 != null && !z4 && z11) {
                                        i8 = 1;
                                        if (zArr2[1]) {
                                            i9 = 0;
                                            i10 = 8;
                                            linearSystem2.f(linearSystem2.j(constraintWidget5.A), solverVariable9, 0, 8);
                                            i11 = i9;
                                        }
                                    } else {
                                        i8 = 1;
                                    }
                                    i9 = 0;
                                    i10 = 8;
                                    i11 = i9;
                                } else {
                                    solverVariable8 = solverVariable5;
                                    solverVariable9 = solverVariable6;
                                    solverVariable10 = solverVariable7;
                                    i8 = 1;
                                    i9 = 0;
                                    i10 = 8;
                                    i11 = 1;
                                }
                                if (this.i == 2) {
                                    i11 = i9;
                                }
                                if (i11 != 0) {
                                    if (dimensionBehaviourArr3[i8] == dimensionBehaviour && (this instanceof ConstraintWidgetContainer)) {
                                        i12 = i8;
                                    } else {
                                        i12 = i9;
                                    }
                                    if (i12 != 0) {
                                        i13 = i9;
                                    } else {
                                        i13 = i2;
                                    }
                                    if (z8 && ((i14 = this.s) == i8 || i14 == -1)) {
                                        z13 = i8;
                                    } else {
                                        z13 = i9;
                                    }
                                    ConstraintWidget constraintWidget6 = this.J;
                                    if (constraintWidget6 != null) {
                                        solverVariable13 = linearSystem2.j(constraintWidget6.A);
                                    } else {
                                        solverVariable13 = null;
                                    }
                                    ConstraintWidget constraintWidget7 = this.J;
                                    if (constraintWidget7 != null) {
                                        solverVariable16 = linearSystem2.j(constraintWidget7.y);
                                    }
                                    int i29 = this.Q;
                                    if (i29 <= 0) {
                                        z14 = z22;
                                    }
                                    linearSystem2.e(solverVariable10, solverVariable8, i29, i10);
                                    Object obj4 = constraintAnchor5.d;
                                    if (obj4 != null) {
                                        linearSystem2.e(solverVariable10, linearSystem2.j(obj4), i9, i10);
                                        if (z11) {
                                            linearSystem2.f(solverVariable13, linearSystem2.j(obj2), i9, 5);
                                        }
                                        z14 = i9;
                                    } else {
                                        z14 = z22;
                                        if (this.W == i10) {
                                            linearSystem2.e(solverVariable10, solverVariable8, i9, i10);
                                            z14 = z22;
                                        }
                                    }
                                    solverVariable11 = solverVariable9;
                                    solverVariable12 = solverVariable8;
                                    linearSystem2 = linearSystem;
                                    c(linearSystem2, false, z11, z12, zArr2[i8], solverVariable16, solverVariable13, dimensionBehaviourArr3[i8], i12, this.y, this.A, this.P, i13, this.S, iArr2[i8], this.U, z13, z4, z3, z24, i4, i5, this.p, this.q, this.r, z14);
                                } else {
                                    solverVariable11 = solverVariable9;
                                    solverVariable12 = solverVariable8;
                                }
                                if (z8) {
                                    int i30 = this.s;
                                    float f2 = this.t;
                                    if (i30 == 1) {
                                        ArrayRow k = linearSystem2.k();
                                        k.d.i(solverVariable11, -1.0f);
                                        k.d.i(solverVariable12, 1.0f);
                                        k.d.i(solverVariable4, f2);
                                        k.d.i(solverVariable3, -f2);
                                        linearSystem2.c(k);
                                    } else {
                                        ArrayRow k2 = linearSystem2.k();
                                        k2.d.i(solverVariable4, -1.0f);
                                        k2.d.i(solverVariable3, 1.0f);
                                        k2.d.i(solverVariable11, f2);
                                        k2.d.i(solverVariable12, -f2);
                                        linearSystem2.c(k2);
                                    }
                                }
                                if (constraintAnchor4.d()) {
                                    ConstraintAnchor constraintAnchor14 = constraintAnchor4;
                                    ConstraintWidget constraintWidget8 = constraintAnchor14.d.b;
                                    float radians = (float) Math.toRadians(this.v + 90.0f);
                                    int b = constraintAnchor14.b();
                                    ConstraintAnchor.Type type = ConstraintAnchor.Type.j;
                                    SolverVariable j6 = linearSystem2.j(e(type));
                                    ConstraintAnchor.Type type2 = ConstraintAnchor.Type.k;
                                    SolverVariable j7 = linearSystem2.j(e(type2));
                                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.l;
                                    SolverVariable j8 = linearSystem2.j(e(type3));
                                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.m;
                                    SolverVariable j9 = linearSystem2.j(e(type4));
                                    SolverVariable j10 = linearSystem2.j(constraintWidget8.e(type));
                                    SolverVariable j11 = linearSystem2.j(constraintWidget8.e(type2));
                                    SolverVariable j12 = linearSystem2.j(constraintWidget8.e(type3));
                                    SolverVariable j13 = linearSystem2.j(constraintWidget8.e(type4));
                                    ArrayRow k3 = linearSystem2.k();
                                    double d = radians;
                                    double sin = Math.sin(d);
                                    double d2 = b;
                                    k3.d.i(j11, 0.5f);
                                    k3.d.i(j13, 0.5f);
                                    k3.d.i(j7, -0.5f);
                                    k3.d.i(j9, -0.5f);
                                    k3.b = -((float) (sin * d2));
                                    linearSystem2.c(k3);
                                    ArrayRow k4 = linearSystem2.k();
                                    float cos = (float) (Math.cos(d) * d2);
                                    k4.d.i(j10, 0.5f);
                                    k4.d.i(j12, 0.5f);
                                    k4.d.i(j6, -0.5f);
                                    k4.d.i(j8, -0.5f);
                                    k4.b = -cos;
                                    linearSystem2.c(k4);
                                    return;
                                }
                                return;
                            }
                        } else {
                            c = 65535;
                        }
                        z9 = false;
                        if (dimensionBehaviourArr3[0] != dimensionBehaviour2) {
                        }
                        i5 = i3;
                        z10 = false;
                        if (z10) {
                        }
                        ConstraintAnchor constraintAnchor132 = this.E;
                        boolean z222 = !constraintAnchor132.d();
                        boolean[] zArr52 = this.H;
                        boolean z232 = zArr52[0];
                        boolean z242 = zArr52[1];
                        i7 = this.h;
                        Object obj32 = obj;
                        int[] iArr22 = this.u;
                        SolverVariable solverVariable162 = null;
                        if (i7 != 2) {
                        }
                        dependencyNode = verticalWidgetRun.h;
                        DependencyNode dependencyNode72 = verticalWidgetRun.i;
                        if (!dependencyNode.j) {
                        }
                        solverVariable8 = solverVariable5;
                        solverVariable9 = solverVariable6;
                        solverVariable10 = solverVariable7;
                        i8 = 1;
                        i9 = 0;
                        i10 = 8;
                        i11 = 1;
                        if (this.i == 2) {
                        }
                        if (i11 != 0) {
                        }
                        if (z8) {
                        }
                        if (constraintAnchor4.d()) {
                        }
                    }
                } else {
                    z7 = z2;
                    i17 = i16;
                }
                if (dimensionBehaviour3 == dimensionBehaviour4 && i15 == 3) {
                    this.s = 0;
                    i = (int) (f * i21);
                    if (dimensionBehaviour5 != dimensionBehaviour4) {
                        obj = constraintAnchor;
                        i3 = 4;
                        z8 = false;
                        i4 = i17;
                        int[] iArr3 = this.l;
                        iArr3[0] = i3;
                        iArr3[1] = i4;
                        if (!z8) {
                        }
                        z9 = false;
                        if (dimensionBehaviourArr3[0] != dimensionBehaviour2) {
                        }
                        i5 = i3;
                        z10 = false;
                        if (z10) {
                        }
                        ConstraintAnchor constraintAnchor1322 = this.E;
                        boolean z2222 = !constraintAnchor1322.d();
                        boolean[] zArr522 = this.H;
                        boolean z2322 = zArr522[0];
                        boolean z2422 = zArr522[1];
                        i7 = this.h;
                        Object obj322 = obj;
                        int[] iArr222 = this.u;
                        SolverVariable solverVariable1622 = null;
                        if (i7 != 2) {
                        }
                        dependencyNode = verticalWidgetRun.h;
                        DependencyNode dependencyNode722 = verticalWidgetRun.i;
                        if (!dependencyNode.j) {
                        }
                        solverVariable8 = solverVariable5;
                        solverVariable9 = solverVariable6;
                        solverVariable10 = solverVariable7;
                        i8 = 1;
                        i9 = 0;
                        i10 = 8;
                        i11 = 1;
                        if (this.i == 2) {
                        }
                        if (i11 != 0) {
                        }
                        if (z8) {
                        }
                        if (constraintAnchor4.d()) {
                        }
                    }
                } else if (dimensionBehaviour5 == dimensionBehaviour4 && i17 == 3) {
                    this.s = 1;
                    if (i23 == -1) {
                        this.t = 1.0f / f;
                    }
                    i2 = (int) (this.t * i19);
                    i3 = i15;
                    obj = constraintAnchor;
                    if (dimensionBehaviour3 != dimensionBehaviour4) {
                        i4 = 4;
                        z8 = false;
                        int[] iArr32 = this.l;
                        iArr32[0] = i3;
                        iArr32[1] = i4;
                        if (!z8) {
                        }
                        z9 = false;
                        if (dimensionBehaviourArr3[0] != dimensionBehaviour2) {
                        }
                        i5 = i3;
                        z10 = false;
                        if (z10) {
                        }
                        ConstraintAnchor constraintAnchor13222 = this.E;
                        boolean z22222 = !constraintAnchor13222.d();
                        boolean[] zArr5222 = this.H;
                        boolean z23222 = zArr5222[0];
                        boolean z24222 = zArr5222[1];
                        i7 = this.h;
                        Object obj3222 = obj;
                        int[] iArr2222 = this.u;
                        SolverVariable solverVariable16222 = null;
                        if (i7 != 2) {
                        }
                        dependencyNode = verticalWidgetRun.h;
                        DependencyNode dependencyNode7222 = verticalWidgetRun.i;
                        if (!dependencyNode.j) {
                        }
                        solverVariable8 = solverVariable5;
                        solverVariable9 = solverVariable6;
                        solverVariable10 = solverVariable7;
                        i8 = 1;
                        i9 = 0;
                        i10 = 8;
                        i11 = 1;
                        if (this.i == 2) {
                        }
                        if (i11 != 0) {
                        }
                        if (z8) {
                        }
                        if (constraintAnchor4.d()) {
                        }
                    }
                    z8 = true;
                    i4 = i17;
                    int[] iArr322 = this.l;
                    iArr322[0] = i3;
                    iArr322[1] = i4;
                    if (!z8) {
                    }
                    z9 = false;
                    if (dimensionBehaviourArr3[0] != dimensionBehaviour2) {
                    }
                    i5 = i3;
                    z10 = false;
                    if (z10) {
                    }
                    ConstraintAnchor constraintAnchor132222 = this.E;
                    boolean z222222 = !constraintAnchor132222.d();
                    boolean[] zArr52222 = this.H;
                    boolean z232222 = zArr52222[0];
                    boolean z242222 = zArr52222[1];
                    i7 = this.h;
                    Object obj32222 = obj;
                    int[] iArr22222 = this.u;
                    SolverVariable solverVariable162222 = null;
                    if (i7 != 2) {
                    }
                    dependencyNode = verticalWidgetRun.h;
                    DependencyNode dependencyNode72222 = verticalWidgetRun.i;
                    if (!dependencyNode.j) {
                    }
                    solverVariable8 = solverVariable5;
                    solverVariable9 = solverVariable6;
                    solverVariable10 = solverVariable7;
                    i8 = 1;
                    i9 = 0;
                    i10 = 8;
                    i11 = 1;
                    if (this.i == 2) {
                    }
                    if (i11 != 0) {
                    }
                    if (z8) {
                    }
                    if (constraintAnchor4.d()) {
                    }
                }
                i3 = i15;
                obj = constraintAnchor;
                z8 = true;
                i4 = i17;
                int[] iArr3222 = this.l;
                iArr3222[0] = i3;
                iArr3222[1] = i4;
                if (!z8) {
                }
                z9 = false;
                if (dimensionBehaviourArr3[0] != dimensionBehaviour2) {
                }
                i5 = i3;
                z10 = false;
                if (z10) {
                }
                ConstraintAnchor constraintAnchor1322222 = this.E;
                boolean z2222222 = !constraintAnchor1322222.d();
                boolean[] zArr522222 = this.H;
                boolean z2322222 = zArr522222[0];
                boolean z2422222 = zArr522222[1];
                i7 = this.h;
                Object obj322222 = obj;
                int[] iArr222222 = this.u;
                SolverVariable solverVariable1622222 = null;
                if (i7 != 2) {
                }
                dependencyNode = verticalWidgetRun.h;
                DependencyNode dependencyNode722222 = verticalWidgetRun.i;
                if (!dependencyNode.j) {
                }
                solverVariable8 = solverVariable5;
                solverVariable9 = solverVariable6;
                solverVariable10 = solverVariable7;
                i8 = 1;
                i9 = 0;
                i10 = 8;
                i11 = 1;
                if (this.i == 2) {
                }
                if (i11 != 0) {
                }
                if (z8) {
                }
                if (constraintAnchor4.d()) {
                }
            }
        } else {
            solverVariable2 = j5;
        }
        z7 = z2;
        obj = constraintAnchor;
        i3 = i24;
        i4 = i25;
        z8 = false;
        int[] iArr32222 = this.l;
        iArr32222[0] = i3;
        iArr32222[1] = i4;
        if (!z8) {
        }
        z9 = false;
        if (dimensionBehaviourArr3[0] != dimensionBehaviour2) {
        }
        i5 = i3;
        z10 = false;
        if (z10) {
        }
        ConstraintAnchor constraintAnchor13222222 = this.E;
        boolean z22222222 = !constraintAnchor13222222.d();
        boolean[] zArr5222222 = this.H;
        boolean z23222222 = zArr5222222[0];
        boolean z24222222 = zArr5222222[1];
        i7 = this.h;
        Object obj3222222 = obj;
        int[] iArr2222222 = this.u;
        SolverVariable solverVariable16222222 = null;
        if (i7 != 2) {
        }
        dependencyNode = verticalWidgetRun.h;
        DependencyNode dependencyNode7222222 = verticalWidgetRun.i;
        if (!dependencyNode.j) {
        }
        solverVariable8 = solverVariable5;
        solverVariable9 = solverVariable6;
        solverVariable10 = solverVariable7;
        i8 = 1;
        i9 = 0;
        i10 = 8;
        i11 = 1;
        if (this.i == 2) {
        }
        if (i11 != 0) {
        }
        if (z8) {
        }
        if (constraintAnchor4.d()) {
        }
    }

    public boolean b() {
        if (this.W != 8) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:182:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x03bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(LinearSystem linearSystem, boolean z, boolean z2, boolean z3, boolean z4, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z5, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z6, boolean z7, boolean z8, boolean z9, int i5, int i6, int i7, int i8, float f2, boolean z10) {
        int i9;
        boolean z11;
        int i10;
        int i11;
        boolean z12;
        boolean z13;
        SolverVariable j;
        SolverVariable j2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        boolean z14;
        SolverVariable solverVariable6;
        int i12;
        boolean z15;
        ConstraintAnchor constraintAnchor3;
        SolverVariable solverVariable7;
        boolean z16;
        int i13;
        int i14;
        boolean z17;
        boolean z18;
        boolean z19;
        int i15;
        int i16;
        boolean z20;
        boolean z21;
        ConstraintWidget constraintWidget;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        SolverVariable solverVariable10;
        int i17;
        boolean z22;
        int i18;
        int i19;
        ConstraintWidget constraintWidget2;
        int i20;
        int i21;
        boolean z23;
        int i22;
        int i23;
        int i24;
        boolean z24;
        int i25;
        LinearSystem linearSystem2 = linearSystem;
        int i26 = i7;
        int i27 = i8;
        SolverVariable j3 = linearSystem2.j(constraintAnchor);
        SolverVariable j4 = linearSystem2.j(constraintAnchor2);
        SolverVariable j5 = linearSystem2.j(constraintAnchor.d);
        SolverVariable j6 = linearSystem2.j(constraintAnchor2.d);
        boolean d = constraintAnchor.d();
        boolean d2 = constraintAnchor2.d();
        boolean d3 = this.E.d();
        int i28 = d2 ? (d ? 1 : 0) + 1 : d ? 1 : 0;
        if (d3) {
            i28++;
        }
        int i29 = i28;
        int i30 = z6 ? 3 : i5;
        int ordinal = dimensionBehaviour.ordinal();
        boolean z25 = (ordinal == 0 || ordinal == 1 || ordinal != 2 || i30 == 4) ? false : true;
        if (this.W == 8) {
            i9 = 0;
            z25 = false;
        } else {
            i9 = i2;
        }
        if (z10) {
            if (!d && !d2 && !d3) {
                linearSystem2.d(j3, i);
            } else if (d && !d2) {
                z11 = z25;
                i10 = 8;
                linearSystem2.e(j3, j5, constraintAnchor.b(), 8);
            }
            z11 = z25;
            i10 = 8;
        } else {
            z11 = z25;
            i10 = 8;
        }
        if (z11) {
            if (i29 == 2 || z6 || !(i30 == 1 || i30 == 0)) {
                if (i26 == -2) {
                    i26 = i9;
                }
                if (i27 == -2) {
                    i27 = i9;
                }
                if (i9 > 0 && i30 != 1) {
                    i9 = 0;
                }
                if (i26 > 0) {
                    linearSystem2.f(j4, j3, i26, 8);
                    i9 = Math.max(i9, i26);
                }
                if (i27 > 0) {
                    if (!z2 || i30 != 1) {
                        linearSystem2.g(j4, j3, i27, 8);
                    }
                    i9 = Math.min(i9, i27);
                }
                if (i30 == 1) {
                    if (z2) {
                        linearSystem2.e(j4, j3, i9, 8);
                    } else if (z7) {
                        linearSystem2.e(j4, j3, i9, 5);
                        linearSystem2.g(j4, j3, i9, 8);
                    } else {
                        linearSystem2.e(j4, j3, i9, 5);
                        linearSystem2.g(j4, j3, i9, 8);
                    }
                } else {
                    if (i30 != 2) {
                        i11 = i26;
                        z12 = z11;
                        z13 = true;
                        if (!z10) {
                            solverVariable3 = solverVariable2;
                            solverVariable4 = j3;
                            solverVariable5 = j4;
                            z14 = z13;
                            solverVariable6 = solverVariable;
                            i12 = 2;
                        } else {
                            if (!z7) {
                                if ((d || d2 || d3) && (!d || d2)) {
                                    if (d || !d2) {
                                        solverVariable7 = j6;
                                        if (d && d2) {
                                            ConstraintWidget constraintWidget3 = constraintAnchor.d.b;
                                            ConstraintWidget constraintWidget4 = constraintAnchor2.d.b;
                                            z16 = z13;
                                            ConstraintWidget constraintWidget5 = this.J;
                                            int i31 = 6;
                                            if (z12) {
                                                if (i30 == 0) {
                                                    if (i27 == 0 && i11 == 0) {
                                                        z18 = false;
                                                        z24 = true;
                                                        i25 = 8;
                                                        i15 = 8;
                                                    } else {
                                                        z18 = true;
                                                        z24 = false;
                                                        i25 = 5;
                                                        i15 = 5;
                                                    }
                                                    if ((constraintWidget3 instanceof Barrier) || (constraintWidget4 instanceof Barrier)) {
                                                        i14 = 6;
                                                        i16 = i25;
                                                        i15 = 4;
                                                    } else {
                                                        i14 = 6;
                                                        i16 = i25;
                                                    }
                                                    z19 = z24;
                                                    i13 = i30;
                                                    z17 = false;
                                                } else {
                                                    if (i30 == 1) {
                                                        i13 = i30;
                                                        i14 = 6;
                                                        z17 = true;
                                                        z18 = true;
                                                        z19 = false;
                                                        i15 = 4;
                                                    } else if (i30 == 3) {
                                                        i13 = i30;
                                                        if (this.s == -1) {
                                                            if (z8) {
                                                                z17 = true;
                                                                i14 = z2 ? 5 : 4;
                                                            } else {
                                                                z17 = true;
                                                                i14 = 8;
                                                            }
                                                            z18 = true;
                                                            z19 = true;
                                                            i15 = 5;
                                                        } else if (z6) {
                                                            if (i6 == 2 || i6 == 1) {
                                                                i23 = 5;
                                                                i24 = 4;
                                                            } else {
                                                                i23 = 8;
                                                                i24 = 5;
                                                            }
                                                            i16 = i23;
                                                            i15 = i24;
                                                            i14 = 6;
                                                            z17 = true;
                                                            z18 = true;
                                                            z19 = true;
                                                        } else {
                                                            if (i27 > 0) {
                                                                i14 = 6;
                                                                z17 = true;
                                                                z18 = true;
                                                                z19 = true;
                                                                i15 = 5;
                                                            } else if (i27 != 0 || i11 != 0) {
                                                                i14 = 6;
                                                                z17 = true;
                                                                z18 = true;
                                                                z19 = true;
                                                                i15 = 4;
                                                            } else if (z8) {
                                                                i16 = (constraintWidget3 == constraintWidget5 || constraintWidget4 == constraintWidget5) ? 5 : 4;
                                                                i14 = 6;
                                                                z17 = true;
                                                                z18 = true;
                                                                z19 = true;
                                                                i15 = 4;
                                                            } else {
                                                                i14 = 6;
                                                                z17 = true;
                                                                z18 = true;
                                                                z19 = true;
                                                                i15 = 8;
                                                            }
                                                            i16 = 5;
                                                        }
                                                    } else {
                                                        i13 = i30;
                                                        i14 = 6;
                                                        z17 = false;
                                                        z18 = false;
                                                    }
                                                    i16 = 8;
                                                }
                                                if (z17 || j5 != solverVariable7 || constraintWidget3 == constraintWidget5) {
                                                    z20 = z17;
                                                    z21 = true;
                                                } else {
                                                    z20 = false;
                                                    z21 = false;
                                                }
                                                if (z18) {
                                                    constraintWidget = constraintWidget3;
                                                    solverVariable8 = j3;
                                                    solverVariable9 = j4;
                                                    solverVariable10 = j5;
                                                    i17 = i11;
                                                    z22 = z12;
                                                    i18 = i13;
                                                    i19 = 8;
                                                    constraintWidget2 = constraintWidget4;
                                                    linearSystem2 = linearSystem;
                                                } else {
                                                    if (this.W == 8) {
                                                        i14 = 4;
                                                    }
                                                    solverVariable8 = j3;
                                                    solverVariable9 = j4;
                                                    solverVariable10 = j5;
                                                    i19 = 8;
                                                    i17 = i11;
                                                    z22 = z12;
                                                    i18 = i13;
                                                    constraintWidget = constraintWidget3;
                                                    constraintWidget2 = constraintWidget4;
                                                    linearSystem2 = linearSystem;
                                                    linearSystem2.b(solverVariable8, solverVariable10, constraintAnchor.b(), f, solverVariable7, solverVariable9, constraintAnchor2.b(), i14);
                                                }
                                                if (this.W != i19) {
                                                    return;
                                                }
                                                if (z20) {
                                                    int i32 = (!z2 || solverVariable10 == solverVariable7 || z22 || !((constraintWidget instanceof Barrier) || (constraintWidget2 instanceof Barrier))) ? i16 : 6;
                                                    linearSystem2.f(solverVariable8, solverVariable10, constraintAnchor.b(), i32);
                                                    linearSystem2.g(solverVariable9, solverVariable7, -constraintAnchor2.b(), i32);
                                                    i16 = i32;
                                                }
                                                if (!z2 || !z9 || (constraintWidget instanceof Barrier) || (constraintWidget2 instanceof Barrier)) {
                                                    i20 = i15;
                                                    i21 = i16;
                                                    z23 = z21;
                                                } else {
                                                    i20 = 6;
                                                    i21 = 6;
                                                    z23 = true;
                                                }
                                                if (z23) {
                                                    if (z19 && (!z8 || z3)) {
                                                        if (constraintWidget != constraintWidget5 && constraintWidget2 != constraintWidget5) {
                                                            i31 = i20;
                                                        }
                                                        if ((constraintWidget instanceof Guideline) || (constraintWidget2 instanceof Guideline)) {
                                                            i31 = 5;
                                                        }
                                                        if ((constraintWidget instanceof Barrier) || (constraintWidget2 instanceof Barrier)) {
                                                            i31 = 5;
                                                        }
                                                        i20 = Math.max(z8 ? 5 : i31, i20);
                                                    }
                                                    if (z2) {
                                                        i20 = Math.min(i21, i20);
                                                        if (z6 && !z8 && (constraintWidget == constraintWidget5 || constraintWidget2 == constraintWidget5)) {
                                                            i22 = 4;
                                                            linearSystem2.e(solverVariable8, solverVariable10, constraintAnchor.b(), i22);
                                                            linearSystem2.e(solverVariable9, solverVariable7, -constraintAnchor2.b(), i22);
                                                        }
                                                    }
                                                    i22 = i20;
                                                    linearSystem2.e(solverVariable8, solverVariable10, constraintAnchor.b(), i22);
                                                    linearSystem2.e(solverVariable9, solverVariable7, -constraintAnchor2.b(), i22);
                                                }
                                                if (z2) {
                                                    int b = solverVariable == solverVariable10 ? constraintAnchor.b() : 0;
                                                    if (solverVariable10 != solverVariable) {
                                                        linearSystem2.f(solverVariable8, solverVariable, b, 5);
                                                    }
                                                }
                                                if (z2 && z22 && i3 == 0 && i17 == 0) {
                                                    if (z22 && i18 == 3) {
                                                        linearSystem2.f(solverVariable9, solverVariable8, 0, 8);
                                                    } else {
                                                        linearSystem2.f(solverVariable9, solverVariable8, 0, 5);
                                                    }
                                                }
                                            } else {
                                                i13 = i30;
                                                i14 = 6;
                                                z17 = true;
                                                z18 = true;
                                            }
                                            z19 = false;
                                            i15 = 4;
                                            i16 = 5;
                                            if (z17) {
                                            }
                                            z20 = z17;
                                            z21 = true;
                                            if (z18) {
                                            }
                                            if (this.W != i19) {
                                            }
                                        }
                                    } else {
                                        solverVariable7 = j6;
                                        linearSystem2.e(j4, solverVariable7, -constraintAnchor2.b(), 8);
                                        if (z2) {
                                            linearSystem2.f(j3, solverVariable, 0, 5);
                                        }
                                    }
                                    solverVariable9 = j4;
                                    z16 = z13;
                                } else {
                                    solverVariable9 = j4;
                                    z16 = z13;
                                    solverVariable7 = j6;
                                }
                                if (z2 && z16) {
                                    int b2 = constraintAnchor2.d != null ? constraintAnchor2.b() : 0;
                                    if (solverVariable7 != solverVariable2) {
                                        linearSystem2.f(solverVariable2, solverVariable9, b2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            solverVariable3 = solverVariable2;
                            solverVariable4 = j3;
                            solverVariable5 = j4;
                            z14 = z13;
                            i12 = 2;
                            solverVariable6 = solverVariable;
                        }
                        if (i29 < i12 && z2 && z14) {
                            linearSystem2.f(solverVariable4, solverVariable6, 0, 8);
                            ConstraintAnchor constraintAnchor4 = this.B;
                            boolean z26 = z || constraintAnchor4.d == null;
                            if (z || (constraintAnchor3 = constraintAnchor4.d) == null) {
                                z15 = z26;
                            } else {
                                ConstraintWidget constraintWidget6 = constraintAnchor3.b;
                                if (constraintWidget6.M != 0.0f) {
                                    DimensionBehaviour[] dimensionBehaviourArr = constraintWidget6.I;
                                    DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[0];
                                    DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.l;
                                    if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                        z15 = true;
                                    }
                                }
                                z15 = false;
                            }
                            if (z15) {
                                linearSystem2.f(solverVariable3, solverVariable5, 0, 8);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    ConstraintAnchor.Type type = constraintAnchor.c;
                    ConstraintAnchor.Type type2 = ConstraintAnchor.Type.m;
                    ConstraintAnchor.Type type3 = ConstraintAnchor.Type.k;
                    if (type != type3 && type != type2) {
                        j = linearSystem2.j(this.J.e(ConstraintAnchor.Type.j));
                        j2 = linearSystem2.j(this.J.e(ConstraintAnchor.Type.l));
                    } else {
                        j = linearSystem2.j(this.J.e(type3));
                        j2 = linearSystem2.j(this.J.e(type2));
                    }
                    ArrayRow k = linearSystem2.k();
                    k.d.i(j4, -1.0f);
                    k.d.i(j3, 1.0f);
                    k.d.i(j2, f2);
                    k.d.i(j, -f2);
                    linearSystem2.c(k);
                    z13 = z4;
                    i11 = i26;
                }
            } else {
                int max = Math.max(i26, i9);
                if (i27 > 0) {
                    max = Math.min(i27, max);
                }
                linearSystem2.e(j4, j3, max, 8);
                z13 = z4;
                i11 = i26;
            }
            z12 = false;
            if (!z10) {
            }
            if (i29 < i12) {
                return;
            } else {
                return;
            }
        }
        if (z5) {
            linearSystem2.e(j4, j3, 0, 3);
            if (i3 > 0) {
                linearSystem2.f(j4, j3, i3, i10);
            }
            if (i4 < Integer.MAX_VALUE) {
                linearSystem2.g(j4, j3, i4, i10);
            }
        } else {
            linearSystem2.e(j4, j3, i9, i10);
        }
        z13 = z4;
        z12 = z11;
        i11 = i26;
        if (!z10) {
        }
        if (i29 < i12) {
        }
    }

    public final void d(LinearSystem linearSystem) {
        linearSystem.j(this.x);
        linearSystem.j(this.y);
        linearSystem.j(this.z);
        linearSystem.j(this.A);
        if (this.Q > 0) {
            linearSystem.j(this.B);
        }
    }

    public ConstraintAnchor e(ConstraintAnchor.Type type) {
        switch (type.ordinal()) {
            case 0:
                return null;
            case 1:
                return this.x;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return this.y;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return this.z;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return this.A;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return this.B;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return this.E;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return this.C;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return this.D;
            default:
                throw new AssertionError(type.name());
        }
    }

    public final DimensionBehaviour f(int i) {
        DimensionBehaviour[] dimensionBehaviourArr = this.I;
        if (i == 0) {
            return dimensionBehaviourArr[0];
        }
        if (i == 1) {
            return dimensionBehaviourArr[1];
        }
        return null;
    }

    public final int g() {
        if (this.W == 8) {
            return 0;
        }
        return this.L;
    }

    public final ConstraintWidget h(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.z;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.d;
            if (constraintAnchor4 != null && constraintAnchor4.d == constraintAnchor3) {
                return constraintAnchor4.b;
            }
            return null;
        }
        if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.A).d) != null && constraintAnchor2.d == constraintAnchor) {
            return constraintAnchor2.b;
        }
        return null;
    }

    public final ConstraintWidget i(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.x;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.d;
            if (constraintAnchor4 != null && constraintAnchor4.d == constraintAnchor3) {
                return constraintAnchor4.b;
            }
            return null;
        }
        if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.y).d) != null && constraintAnchor2.d == constraintAnchor) {
            return constraintAnchor2.b;
        }
        return null;
    }

    public final int j() {
        if (this.W == 8) {
            return 0;
        }
        return this.K;
    }

    public final int k() {
        ConstraintWidget constraintWidget = this.J;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).j0 + this.O;
        }
        return this.O;
    }

    public final int l() {
        ConstraintWidget constraintWidget = this.J;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).k0 + this.P;
        }
        return this.P;
    }

    public final void m(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        e(type).a(constraintWidget.e(type2), i, i2);
    }

    public final boolean n(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.F;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.d;
        if (constraintAnchor4 != null && constraintAnchor4.d != constraintAnchor3 && (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i2 + 1]).d) != null && constraintAnchor2.d == constraintAnchor) {
            return true;
        }
        return false;
    }

    public final boolean o() {
        ConstraintAnchor constraintAnchor = this.x;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.d;
        if (constraintAnchor2 == null || constraintAnchor2.d != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.z;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.d;
            if (constraintAnchor4 != null && constraintAnchor4.d == constraintAnchor3) {
                return true;
            }
            return false;
        }
        return true;
    }

    public final boolean p() {
        ConstraintAnchor constraintAnchor = this.y;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.d;
        if (constraintAnchor2 == null || constraintAnchor2.d != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.A;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.d;
            if (constraintAnchor4 != null && constraintAnchor4.d == constraintAnchor3) {
                return true;
            }
            return false;
        }
        return true;
    }

    public void q() {
        this.x.e();
        this.y.e();
        this.z.e();
        this.A.e();
        this.B.e();
        this.C.e();
        this.D.e();
        this.E.e();
        this.J = null;
        this.v = 0.0f;
        this.K = 0;
        this.L = 0;
        this.M = 0.0f;
        this.N = -1;
        this.O = 0;
        this.P = 0;
        this.Q = 0;
        this.R = 0;
        this.S = 0;
        this.T = 0.5f;
        this.U = 0.5f;
        DimensionBehaviour[] dimensionBehaviourArr = this.I;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.j;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.V = null;
        this.W = 0;
        this.Y = 0;
        this.Z = 0;
        float[] fArr = this.a0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.h = -1;
        this.i = -1;
        int[] iArr = this.u;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.j = 0;
        this.k = 0;
        this.o = 1.0f;
        this.r = 1.0f;
        this.n = Integer.MAX_VALUE;
        this.q = Integer.MAX_VALUE;
        this.m = 0;
        this.p = 0;
        this.s = -1;
        this.t = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        boolean[] zArr2 = this.H;
        zArr2[0] = false;
        zArr2[1] = false;
    }

    public void r(Cache cache) {
        this.x.f();
        this.y.f();
        this.z.f();
        this.A.f();
        this.B.f();
        this.E.f();
        this.C.f();
        this.D.f();
    }

    public final void s(int i) {
        this.L = i;
        int i2 = this.S;
        if (i < i2) {
            this.L = i2;
        }
    }

    public final void t(DimensionBehaviour dimensionBehaviour) {
        this.I[0] = dimensionBehaviour;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = "";
        sb.append("");
        if (this.X != null) {
            str = q.l(new StringBuilder("id: "), this.X, " ");
        }
        sb.append(str);
        sb.append("(");
        sb.append(this.O);
        sb.append(", ");
        sb.append(this.P);
        sb.append(") - (");
        sb.append(this.K);
        sb.append(" x ");
        return jb.i(sb, this.L, ")");
    }

    public final void u(DimensionBehaviour dimensionBehaviour) {
        this.I[1] = dimensionBehaviour;
    }

    public final void v(int i) {
        this.K = i;
        int i2 = this.R;
        if (i < i2) {
            this.K = i2;
        }
    }

    public void w(boolean z, boolean z2) {
        int i;
        int i2;
        HorizontalWidgetRun horizontalWidgetRun = this.d;
        boolean z3 = z & horizontalWidgetRun.g;
        VerticalWidgetRun verticalWidgetRun = this.e;
        boolean z4 = z2 & verticalWidgetRun.g;
        int i3 = horizontalWidgetRun.h.g;
        int i4 = verticalWidgetRun.h.g;
        int i5 = horizontalWidgetRun.i.g;
        int i6 = verticalWidgetRun.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.O = i3;
        }
        if (z4) {
            this.P = i4;
        }
        if (this.W == 8) {
            this.K = 0;
            this.L = 0;
            return;
        }
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.j;
        DimensionBehaviour[] dimensionBehaviourArr = this.I;
        if (z3) {
            if (dimensionBehaviourArr[0] == dimensionBehaviour && i8 < (i2 = this.K)) {
                i8 = i2;
            }
            this.K = i8;
            int i10 = this.R;
            if (i8 < i10) {
                this.K = i10;
            }
        }
        if (z4) {
            if (dimensionBehaviourArr[1] == dimensionBehaviour && i9 < (i = this.L)) {
                i9 = i;
            }
            this.L = i9;
            int i11 = this.S;
            if (i9 < i11) {
                this.L = i11;
            }
        }
    }

    public void x(LinearSystem linearSystem) {
        int i;
        int i2;
        linearSystem.getClass();
        int m = LinearSystem.m(this.x);
        int m2 = LinearSystem.m(this.y);
        int m3 = LinearSystem.m(this.z);
        int m4 = LinearSystem.m(this.A);
        HorizontalWidgetRun horizontalWidgetRun = this.d;
        DependencyNode dependencyNode = horizontalWidgetRun.h;
        if (dependencyNode.j) {
            DependencyNode dependencyNode2 = horizontalWidgetRun.i;
            if (dependencyNode2.j) {
                m = dependencyNode.g;
                m3 = dependencyNode2.g;
            }
        }
        VerticalWidgetRun verticalWidgetRun = this.e;
        DependencyNode dependencyNode3 = verticalWidgetRun.h;
        if (dependencyNode3.j) {
            DependencyNode dependencyNode4 = verticalWidgetRun.i;
            if (dependencyNode4.j) {
                m2 = dependencyNode3.g;
                m4 = dependencyNode4.g;
            }
        }
        int i3 = m4 - m2;
        if (m3 - m < 0 || i3 < 0 || m == Integer.MIN_VALUE || m == Integer.MAX_VALUE || m2 == Integer.MIN_VALUE || m2 == Integer.MAX_VALUE || m3 == Integer.MIN_VALUE || m3 == Integer.MAX_VALUE || m4 == Integer.MIN_VALUE || m4 == Integer.MAX_VALUE) {
            m = 0;
            m2 = 0;
            m3 = 0;
            m4 = 0;
        }
        int i4 = m3 - m;
        int i5 = m4 - m2;
        this.O = m;
        this.P = m2;
        if (this.W == 8) {
            this.K = 0;
            this.L = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.I;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.j;
        if (dimensionBehaviour == dimensionBehaviour2 && i4 < (i2 = this.K)) {
            i4 = i2;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i5 < (i = this.L)) {
            i5 = i;
        }
        this.K = i4;
        this.L = i5;
        int i6 = this.S;
        if (i5 < i6) {
            this.L = i6;
        }
        int i7 = this.R;
        if (i4 < i7) {
            this.K = i7;
        }
    }
}
