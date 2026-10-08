package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Chain {
    /* JADX WARN: Code restructure failed: missing block: B:149:0x026c, code lost:
    
        if (r7.b == r9) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x010f, code lost:
    
        if (r5.b == r8) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x041f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0671 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0685  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x068e  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0695  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x06a5  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x06a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x06c7 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x047c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x056a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0620 A[EDGE_INSN: B:393:0x0620->B:394:0x0620 BREAK  A[LOOP:6: B:348:0x057b->B:381:0x061b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0639  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0119 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        ChainHead[] chainHeadArr;
        int i3;
        ConstraintAnchor[] constraintAnchorArr;
        float f;
        boolean z;
        boolean z2;
        ConstraintAnchor[] constraintAnchorArr2;
        boolean z3;
        boolean z4;
        boolean z5;
        ConstraintWidget constraintWidget;
        boolean z6;
        boolean z7;
        ArrayList arrayList;
        ConstraintWidget constraintWidget2;
        int i4;
        boolean z8;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        LinearSystem linearSystem2;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintWidget constraintWidget5;
        SolverVariable solverVariable;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable2;
        int i5;
        ConstraintWidget constraintWidget6;
        boolean z9;
        int i6;
        SolverVariable solverVariable3;
        ConstraintAnchor[] constraintAnchorArr3;
        ConstraintAnchor constraintAnchor5;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        ConstraintWidget constraintWidget7;
        ConstraintWidget constraintWidget8;
        int i7;
        int i8;
        ConstraintAnchor constraintAnchor6;
        int i9;
        ConstraintAnchor constraintAnchor7;
        ConstraintAnchor constraintAnchor8;
        SolverVariable solverVariable6;
        ConstraintAnchor constraintAnchor9;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        float f2;
        int size;
        int i10;
        ArrayList arrayList2;
        int i11;
        ConstraintWidget constraintWidget9;
        float f3;
        float f4;
        int i12;
        float f5;
        int i13;
        boolean z10;
        ChainHead[] chainHeadArr2;
        ConstraintWidget constraintWidget10;
        int i14;
        int i15;
        boolean z11;
        boolean z12;
        boolean z13;
        int i16;
        ConstraintAnchor[] constraintAnchorArr4;
        ConstraintAnchor constraintAnchor10;
        ConstraintWidget constraintWidget11;
        float f6;
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintWidgetContainer;
        LinearSystem linearSystem3 = linearSystem;
        if (i == 0) {
            i2 = constraintWidgetContainer2.l0;
            chainHeadArr = constraintWidgetContainer2.o0;
            i3 = 0;
        } else {
            i2 = constraintWidgetContainer2.m0;
            chainHeadArr = constraintWidgetContainer2.n0;
            i3 = 2;
        }
        int i17 = i2;
        ChainHead[] chainHeadArr3 = chainHeadArr;
        int i18 = 0;
        while (i18 < i17) {
            ChainHead chainHead = chainHeadArr3[i18];
            boolean z14 = chainHead.q;
            ConstraintWidget constraintWidget12 = chainHead.a;
            ConstraintAnchor[] constraintAnchorArr5 = constraintWidget12.F;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
            SolverVariable solverVariable10 = null;
            int i19 = 8;
            if (!z14) {
                int i20 = chainHead.l;
                int i21 = i20 * 2;
                ConstraintWidget constraintWidget13 = constraintWidget12;
                ConstraintWidget constraintWidget14 = constraintWidget13;
                boolean z15 = false;
                f = 0.0f;
                while (!z15) {
                    chainHead.i++;
                    ConstraintWidget[] constraintWidgetArr = constraintWidget13.c0;
                    ConstraintAnchor[] constraintAnchorArr6 = constraintWidget13.F;
                    constraintWidgetArr[i20] = null;
                    constraintWidget13.b0[i20] = null;
                    if (constraintWidget13.W != i19) {
                        constraintWidget13.f(i20);
                        constraintAnchorArr6[i21].b();
                        int i22 = i21 + 1;
                        constraintAnchorArr6[i22].b();
                        constraintAnchorArr6[i21].b();
                        constraintAnchorArr6[i22].b();
                        if (chainHead.b == null) {
                            chainHead.b = constraintWidget13;
                        }
                        chainHead.d = constraintWidget13;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = constraintWidget13.I[i20];
                        if (dimensionBehaviour2 == dimensionBehaviour) {
                            int i23 = constraintWidget13.l[i20];
                            i16 = i20;
                            if (i23 != 0 && i23 != 3 && i23 != 2) {
                                constraintAnchorArr4 = constraintAnchorArr5;
                            } else {
                                chainHead.j++;
                                float f7 = constraintWidget13.a0[i16];
                                if (f7 > 0.0f) {
                                    f6 = f7;
                                    chainHead.k += f6;
                                } else {
                                    f6 = f7;
                                }
                                constraintAnchorArr4 = constraintAnchorArr5;
                                if (constraintWidget13.W != 8 && dimensionBehaviour2 == dimensionBehaviour && (i23 == 0 || i23 == 3)) {
                                    if (f6 < 0.0f) {
                                        chainHead.n = true;
                                    } else {
                                        chainHead.o = true;
                                    }
                                    if (chainHead.h == null) {
                                        chainHead.h = new ArrayList();
                                    }
                                    chainHead.h.add(constraintWidget13);
                                }
                                if (chainHead.f == null) {
                                    chainHead.f = constraintWidget13;
                                }
                                ConstraintWidget constraintWidget15 = chainHead.g;
                                if (constraintWidget15 != null) {
                                    constraintWidget15.b0[i16] = constraintWidget13;
                                }
                                chainHead.g = constraintWidget13;
                            }
                            if (i16 == 0) {
                                if (constraintWidget13.j == 0 && constraintWidget13.m == 0) {
                                    int i24 = constraintWidget13.n;
                                }
                            } else if (constraintWidget13.k == 0 && constraintWidget13.p == 0) {
                                int i25 = constraintWidget13.q;
                            }
                            if (constraintWidget14 != constraintWidget13) {
                                constraintWidget14.c0[i16] = constraintWidget13;
                            }
                            constraintAnchor10 = constraintAnchorArr6[i21 + 1].d;
                            if (constraintAnchor10 != null) {
                                constraintWidget11 = constraintAnchor10.b;
                                ConstraintAnchor constraintAnchor11 = constraintWidget11.F[i21].d;
                                if (constraintAnchor11 != null) {
                                }
                            }
                            constraintWidget11 = null;
                            if (constraintWidget11 != null) {
                                constraintWidget11 = constraintWidget13;
                                z15 = true;
                            }
                            constraintWidget14 = constraintWidget13;
                            constraintAnchorArr5 = constraintAnchorArr4;
                            i19 = 8;
                            constraintWidget13 = constraintWidget11;
                            i20 = i16;
                        }
                    }
                    i16 = i20;
                    constraintAnchorArr4 = constraintAnchorArr5;
                    if (constraintWidget14 != constraintWidget13) {
                    }
                    constraintAnchor10 = constraintAnchorArr6[i21 + 1].d;
                    if (constraintAnchor10 != null) {
                    }
                    constraintWidget11 = null;
                    if (constraintWidget11 != null) {
                    }
                    constraintWidget14 = constraintWidget13;
                    constraintAnchorArr5 = constraintAnchorArr4;
                    i19 = 8;
                    constraintWidget13 = constraintWidget11;
                    i20 = i16;
                }
                int i26 = i20;
                constraintAnchorArr = constraintAnchorArr5;
                ConstraintWidget constraintWidget16 = chainHead.b;
                if (constraintWidget16 != null) {
                    constraintWidget16.F[i21].b();
                }
                ConstraintWidget constraintWidget17 = chainHead.d;
                if (constraintWidget17 != null) {
                    constraintWidget17.F[i21 + 1].b();
                }
                chainHead.c = constraintWidget13;
                if (i26 == 0 && chainHead.m) {
                    chainHead.e = constraintWidget13;
                } else {
                    chainHead.e = constraintWidget12;
                }
                if (chainHead.o && chainHead.n) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                chainHead.p = z13;
            } else {
                constraintAnchorArr = constraintAnchorArr5;
                f = 0.0f;
            }
            chainHead.q = true;
            ConstraintWidget constraintWidget18 = chainHead.c;
            ConstraintWidget constraintWidget19 = chainHead.b;
            ConstraintWidget constraintWidget20 = chainHead.d;
            ConstraintWidget constraintWidget21 = chainHead.e;
            float f8 = chainHead.k;
            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidgetContainer2.I;
            ConstraintAnchor[] constraintAnchorArr7 = constraintWidgetContainer2.F;
            float f9 = f8;
            if (dimensionBehaviourArr[i] == ConstraintWidget.DimensionBehaviour.k) {
                z = true;
            } else {
                z = false;
            }
            if (i == 0) {
                int i27 = constraintWidget21.Y;
                if (i27 == 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                z2 = z;
                if (i27 == 1) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                constraintAnchorArr2 = constraintAnchorArr7;
                if (i27 == 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                constraintWidget = constraintWidget12;
                z6 = z12;
                z7 = false;
                z3 = z11;
            } else {
                z2 = z;
                constraintAnchorArr2 = constraintAnchorArr7;
                int i28 = constraintWidget21.Z;
                if (i28 == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i28 == 1) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (i28 == 2) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                constraintWidget = constraintWidget12;
                z6 = z4;
                z7 = false;
            }
            while (!z7) {
                ConstraintAnchor[] constraintAnchorArr8 = constraintWidget.F;
                ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget.I;
                ConstraintAnchor constraintAnchor12 = constraintAnchorArr8[i3];
                if (z5) {
                    i13 = 1;
                } else {
                    i13 = 4;
                }
                int b = constraintAnchor12.b();
                boolean z16 = z5;
                if (dimensionBehaviourArr2[i] == dimensionBehaviour && constraintWidget.l[i] == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                ConstraintAnchor constraintAnchor13 = constraintAnchor12.d;
                if (constraintAnchor13 != null && constraintWidget != constraintWidget12) {
                    b = constraintAnchor13.b() + b;
                }
                int i29 = b;
                if (z16 && constraintWidget != constraintWidget12 && constraintWidget != constraintWidget19) {
                    i13 = 5;
                }
                ConstraintWidget constraintWidget22 = constraintWidget12;
                ConstraintAnchor constraintAnchor14 = constraintAnchor12.d;
                int i30 = i17;
                if (constraintAnchor14 != null) {
                    SolverVariable solverVariable11 = constraintAnchor12.g;
                    SolverVariable solverVariable12 = constraintAnchor14.g;
                    if (constraintWidget == constraintWidget19) {
                        chainHeadArr2 = chainHeadArr3;
                        linearSystem3.f(solverVariable11, solverVariable12, i29, 6);
                    } else {
                        chainHeadArr2 = chainHeadArr3;
                        linearSystem3.f(solverVariable11, solverVariable12, i29, 8);
                    }
                    if (z10 && !z16) {
                        i15 = 5;
                    } else {
                        i15 = i13;
                    }
                    linearSystem3.e(constraintAnchor12.g, constraintAnchor12.d.g, i29, i15);
                } else {
                    chainHeadArr2 = chainHeadArr3;
                }
                if (z2) {
                    if (constraintWidget.W != 8 && dimensionBehaviourArr2[i] == dimensionBehaviour) {
                        i14 = 0;
                        linearSystem3.f(constraintAnchorArr8[i3 + 1].g, constraintAnchorArr8[i3].g, 0, 5);
                    } else {
                        i14 = 0;
                    }
                    linearSystem3.f(constraintAnchorArr8[i3].g, constraintAnchorArr2[i3].g, i14, 8);
                }
                ConstraintAnchor constraintAnchor15 = constraintAnchorArr8[i3 + 1].d;
                if (constraintAnchor15 != null) {
                    constraintWidget10 = constraintAnchor15.b;
                    ConstraintAnchor constraintAnchor16 = constraintWidget10.F[i3].d;
                    if (constraintAnchor16 != null) {
                    }
                }
                constraintWidget10 = null;
                if (constraintWidget10 != null) {
                    constraintWidget = constraintWidget10;
                } else {
                    z7 = true;
                }
                constraintWidget12 = constraintWidget22;
                z5 = z16;
                i17 = i30;
                chainHeadArr3 = chainHeadArr2;
            }
            boolean z17 = z5;
            int i31 = i17;
            ChainHead[] chainHeadArr4 = chainHeadArr3;
            if (constraintWidget20 != null) {
                int i32 = i3 + 1;
                if (constraintWidget18.F[i32].d != null) {
                    ConstraintAnchor constraintAnchor17 = constraintWidget20.F[i32];
                    if (constraintWidget20.I[i] == dimensionBehaviour && constraintWidget20.l[i] == 0 && !z17) {
                        ConstraintAnchor constraintAnchor18 = constraintAnchor17.d;
                        if (constraintAnchor18.b == constraintWidgetContainer2) {
                            linearSystem3.e(constraintAnchor17.g, constraintAnchor18.g, -constraintAnchor17.b(), 5);
                            linearSystem3.g(constraintAnchor17.g, constraintWidget18.F[i32].d.g, -constraintAnchor17.b(), 6);
                            if (z2) {
                                int i33 = i3 + 1;
                                SolverVariable solverVariable13 = constraintAnchorArr2[i33].g;
                                ConstraintAnchor constraintAnchor19 = constraintWidget18.F[i33];
                                linearSystem3.f(solverVariable13, constraintAnchor19.g, constraintAnchor19.b(), 8);
                            }
                            arrayList = chainHead.h;
                            if (arrayList != null && (size = arrayList.size()) > 1) {
                                if (chainHead.n && !chainHead.p) {
                                    f9 = chainHead.j;
                                }
                                ConstraintWidget constraintWidget23 = null;
                                float f10 = f;
                                i10 = 0;
                                while (i10 < size) {
                                    ConstraintWidget constraintWidget24 = (ConstraintWidget) arrayList.get(i10);
                                    float[] fArr = constraintWidget24.a0;
                                    ConstraintAnchor[] constraintAnchorArr9 = constraintWidget24.F;
                                    float f11 = fArr[i];
                                    if (f11 < f) {
                                        if (chainHead.p) {
                                            arrayList2 = arrayList;
                                            linearSystem3.e(constraintAnchorArr9[i3 + 1].g, constraintAnchorArr9[i3].g, 0, 4);
                                            f5 = f10;
                                            i11 = size;
                                            f4 = f;
                                            f10 = f5;
                                            i12 = i10;
                                            i10 = i12 + 1;
                                            arrayList = arrayList2;
                                            size = i11;
                                            f = f4;
                                        } else {
                                            f11 = 1.0f;
                                        }
                                    }
                                    arrayList2 = arrayList;
                                    if (f11 == f) {
                                        f5 = f10;
                                        linearSystem3.e(constraintAnchorArr9[i3 + 1].g, constraintAnchorArr9[i3].g, 0, 8);
                                        i11 = size;
                                        f4 = f;
                                        f10 = f5;
                                        i12 = i10;
                                        i10 = i12 + 1;
                                        arrayList = arrayList2;
                                        size = i11;
                                        f = f4;
                                    } else {
                                        float f12 = f10;
                                        if (constraintWidget23 != null) {
                                            ConstraintAnchor[] constraintAnchorArr10 = constraintWidget23.F;
                                            SolverVariable solverVariable14 = constraintAnchorArr10[i3].g;
                                            int i34 = i3 + 1;
                                            SolverVariable solverVariable15 = constraintAnchorArr10[i34].g;
                                            SolverVariable solverVariable16 = constraintAnchorArr9[i3].g;
                                            SolverVariable solverVariable17 = constraintAnchorArr9[i34].g;
                                            i11 = size;
                                            ArrayRow k = linearSystem3.k();
                                            constraintWidget9 = constraintWidget24;
                                            float f13 = f;
                                            k.b = f13;
                                            f4 = f13;
                                            if (f9 == f13 || f12 == f11) {
                                                i12 = i10;
                                                f3 = f11;
                                                k.d.i(solverVariable14, 1.0f);
                                                k.d.i(solverVariable15, -1.0f);
                                                k.d.i(solverVariable17, 1.0f);
                                                k.d.i(solverVariable16, -1.0f);
                                            } else {
                                                ArrayRow.ArrayRowVariables arrayRowVariables = k.d;
                                                if (f12 == f4) {
                                                    i12 = i10;
                                                    arrayRowVariables.i(solverVariable14, 1.0f);
                                                    k.d.i(solverVariable15, -1.0f);
                                                    f3 = f11;
                                                } else {
                                                    i12 = i10;
                                                    f3 = f11;
                                                    if (f11 == f) {
                                                        arrayRowVariables.i(solverVariable16, 1.0f);
                                                        k.d.i(solverVariable17, -1.0f);
                                                    } else {
                                                        float f14 = (f12 / f9) / (f3 / f9);
                                                        arrayRowVariables.i(solverVariable14, 1.0f);
                                                        k.d.i(solverVariable15, -1.0f);
                                                        k.d.i(solverVariable17, f14);
                                                        k.d.i(solverVariable16, -f14);
                                                    }
                                                }
                                            }
                                            linearSystem3.c(k);
                                        } else {
                                            i11 = size;
                                            constraintWidget9 = constraintWidget24;
                                            f3 = f11;
                                            f4 = f;
                                            i12 = i10;
                                        }
                                        constraintWidget23 = constraintWidget9;
                                        f10 = f3;
                                        i10 = i12 + 1;
                                        arrayList = arrayList2;
                                        size = i11;
                                        f = f4;
                                    }
                                }
                            }
                            if (constraintWidget19 != null || (constraintWidget19 != constraintWidget20 && !z17)) {
                                constraintWidget2 = constraintWidget20;
                                if (!z3 && constraintWidget19 != null) {
                                    int i35 = chainHead.j;
                                    if (i35 > 0 && chainHead.i == i35) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    ConstraintWidget constraintWidget25 = constraintWidget19;
                                    ConstraintWidget constraintWidget26 = constraintWidget25;
                                    while (true) {
                                        ConstraintAnchor[] constraintAnchorArr11 = constraintWidget26.F;
                                        if (constraintWidget25 == null) {
                                            break;
                                        }
                                        ConstraintAnchor[] constraintAnchorArr12 = constraintWidget25.F;
                                        ConstraintWidget constraintWidget27 = constraintWidget25.c0[i];
                                        while (true) {
                                            if (constraintWidget27 != null) {
                                                i6 = 8;
                                                if (constraintWidget27.W != 8) {
                                                    break;
                                                } else {
                                                    constraintWidget27 = constraintWidget27.c0[i];
                                                }
                                            } else {
                                                i6 = 8;
                                                break;
                                            }
                                        }
                                        if (constraintWidget27 == null && constraintWidget25 != constraintWidget2) {
                                            constraintWidget7 = constraintWidget27;
                                            constraintWidget8 = constraintWidget26;
                                            i7 = i6;
                                        } else {
                                            ConstraintAnchor constraintAnchor20 = constraintAnchorArr12[i3];
                                            SolverVariable solverVariable18 = constraintAnchor20.g;
                                            ConstraintAnchor constraintAnchor21 = constraintAnchor20.d;
                                            if (constraintAnchor21 != null) {
                                                solverVariable3 = constraintAnchor21.g;
                                            } else {
                                                solverVariable3 = null;
                                            }
                                            if (constraintWidget26 != constraintWidget25) {
                                                solverVariable3 = constraintAnchorArr11[i3 + 1].g;
                                            } else if (constraintWidget25 == constraintWidget19 && constraintWidget26 == constraintWidget25) {
                                                ConstraintAnchor constraintAnchor22 = constraintAnchorArr[i3].d;
                                                if (constraintAnchor22 != null) {
                                                    solverVariable3 = constraintAnchor22.g;
                                                } else {
                                                    solverVariable3 = null;
                                                }
                                            }
                                            int b2 = constraintAnchor20.b();
                                            int i36 = i3 + 1;
                                            int b3 = constraintAnchorArr12[i36].b();
                                            if (constraintWidget27 != null) {
                                                constraintAnchor5 = constraintWidget27.F[i3];
                                                constraintAnchorArr3 = constraintAnchorArr11;
                                                solverVariable4 = constraintAnchor5.g;
                                                solverVariable5 = constraintAnchorArr12[i36].g;
                                            } else {
                                                constraintAnchorArr3 = constraintAnchorArr11;
                                                constraintAnchor5 = constraintWidget18.F[i36].d;
                                                if (constraintAnchor5 != null) {
                                                    solverVariable4 = constraintAnchor5.g;
                                                } else {
                                                    solverVariable4 = null;
                                                }
                                                solverVariable5 = constraintAnchorArr12[i36].g;
                                            }
                                            SolverVariable solverVariable19 = solverVariable5;
                                            SolverVariable solverVariable20 = solverVariable4;
                                            ConstraintWidget constraintWidget28 = constraintWidget27;
                                            SolverVariable solverVariable21 = solverVariable3;
                                            if (constraintAnchor5 != null) {
                                                b3 += constraintAnchor5.b();
                                            }
                                            int b4 = constraintAnchorArr3[i36].b() + b2;
                                            if (solverVariable18 != null && solverVariable21 != null && solverVariable20 != null && solverVariable19 != null) {
                                                if (constraintWidget25 == constraintWidget19) {
                                                    b4 = constraintWidget19.F[i3].b();
                                                }
                                                int i37 = b4;
                                                if (constraintWidget25 == constraintWidget2) {
                                                    b3 = constraintWidget2.F[i36].b();
                                                }
                                                int i38 = b3;
                                                if (z9) {
                                                    i8 = 8;
                                                } else {
                                                    i8 = 5;
                                                }
                                                constraintWidget7 = constraintWidget28;
                                                constraintWidget8 = constraintWidget26;
                                                i7 = 8;
                                                linearSystem.b(solverVariable18, solverVariable21, i37, 0.5f, solverVariable20, solverVariable19, i38, i8);
                                            } else {
                                                constraintWidget7 = constraintWidget28;
                                                constraintWidget8 = constraintWidget26;
                                                i7 = 8;
                                            }
                                        }
                                        if (constraintWidget25.W != i7) {
                                            constraintWidget8 = constraintWidget25;
                                        }
                                        constraintWidget25 = constraintWidget7;
                                        constraintWidget26 = constraintWidget8;
                                    }
                                } else {
                                    int i39 = 8;
                                    if (z6 && constraintWidget19 != null) {
                                        i4 = chainHead.j;
                                        if (i4 <= 0 && chainHead.i == i4) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        constraintWidget3 = constraintWidget19;
                                        constraintWidget4 = constraintWidget3;
                                        while (true) {
                                            ConstraintAnchor[] constraintAnchorArr13 = constraintWidget3.F;
                                            if (constraintWidget4 != null) {
                                                break;
                                            }
                                            ConstraintAnchor[] constraintAnchorArr14 = constraintWidget4.F;
                                            ConstraintWidget constraintWidget29 = constraintWidget4.c0[i];
                                            while (constraintWidget29 != null && constraintWidget29.W == i39) {
                                                constraintWidget29 = constraintWidget29.c0[i];
                                            }
                                            if (constraintWidget4 != constraintWidget19 && constraintWidget4 != constraintWidget2 && constraintWidget29 != null) {
                                                if (constraintWidget29 == constraintWidget2) {
                                                    constraintWidget29 = null;
                                                }
                                                ConstraintAnchor constraintAnchor23 = constraintAnchorArr14[i3];
                                                SolverVariable solverVariable22 = constraintAnchor23.g;
                                                int i40 = i3 + 1;
                                                SolverVariable solverVariable23 = constraintAnchorArr13[i40].g;
                                                int b5 = constraintAnchor23.b();
                                                int b6 = constraintAnchorArr14[i40].b();
                                                if (constraintWidget29 != null) {
                                                    constraintAnchor4 = constraintWidget29.F[i3];
                                                    solverVariable = constraintAnchor4.g;
                                                    constraintWidget5 = constraintWidget3;
                                                    ConstraintAnchor constraintAnchor24 = constraintAnchor4.d;
                                                    if (constraintAnchor24 != null) {
                                                        solverVariable2 = constraintAnchor24.g;
                                                    } else {
                                                        solverVariable2 = null;
                                                    }
                                                } else {
                                                    constraintWidget5 = constraintWidget3;
                                                    ConstraintAnchor constraintAnchor25 = constraintWidget2.F[i3];
                                                    if (constraintAnchor25 != null) {
                                                        solverVariable = constraintAnchor25.g;
                                                    } else {
                                                        solverVariable = null;
                                                    }
                                                    SolverVariable solverVariable24 = constraintAnchorArr14[i40].g;
                                                    constraintAnchor4 = constraintAnchor25;
                                                    solverVariable2 = solverVariable24;
                                                }
                                                if (constraintAnchor4 != null) {
                                                    b6 += constraintAnchor4.b();
                                                }
                                                int b7 = constraintAnchorArr13[i40].b() + b5;
                                                if (z8) {
                                                    i5 = 8;
                                                } else {
                                                    i5 = 4;
                                                }
                                                if (solverVariable22 != null && solverVariable23 != null && solverVariable != null && solverVariable2 != null) {
                                                    SolverVariable solverVariable25 = solverVariable;
                                                    constraintWidget6 = constraintWidget29;
                                                    linearSystem.b(solverVariable22, solverVariable23, b7, 0.5f, solverVariable25, solverVariable2, b6, i5);
                                                } else {
                                                    constraintWidget6 = constraintWidget29;
                                                }
                                                constraintWidget29 = constraintWidget6;
                                            } else {
                                                constraintWidget5 = constraintWidget3;
                                            }
                                            i39 = 8;
                                            if (constraintWidget4.W != 8) {
                                                constraintWidget5 = constraintWidget4;
                                            }
                                            constraintWidget4 = constraintWidget29;
                                            constraintWidget3 = constraintWidget5;
                                        }
                                        linearSystem2 = linearSystem;
                                        ConstraintAnchor constraintAnchor26 = constraintWidget19.F[i3];
                                        constraintAnchor = constraintAnchorArr[i3].d;
                                        int i41 = i3 + 1;
                                        constraintAnchor2 = constraintWidget2.F[i41];
                                        constraintAnchor3 = constraintWidget18.F[i41].d;
                                        if (constraintAnchor != null) {
                                            if (constraintWidget19 != constraintWidget2) {
                                                linearSystem2.e(constraintAnchor26.g, constraintAnchor.g, constraintAnchor26.b(), 5);
                                            } else if (constraintAnchor3 != null) {
                                                linearSystem2.b(constraintAnchor26.g, constraintAnchor.g, constraintAnchor26.b(), 0.5f, constraintAnchor2.g, constraintAnchor3.g, constraintAnchor2.b(), 5);
                                            }
                                        }
                                        if (constraintAnchor3 != null && constraintWidget19 != constraintWidget2) {
                                            linearSystem2.e(constraintAnchor2.g, constraintAnchor3.g, -constraintAnchor2.b(), 5);
                                        }
                                        if ((!z3 || z6) && constraintWidget19 != null && constraintWidget19 != constraintWidget2) {
                                            ConstraintAnchor[] constraintAnchorArr15 = constraintWidget19.F;
                                            constraintAnchor6 = constraintAnchorArr15[i3];
                                            i9 = i3 + 1;
                                            constraintAnchor7 = constraintWidget2.F[i9];
                                            constraintAnchor8 = constraintAnchor6.d;
                                            if (constraintAnchor8 != null) {
                                                solverVariable6 = constraintAnchor8.g;
                                            } else {
                                                solverVariable6 = null;
                                            }
                                            constraintAnchor9 = constraintAnchor7.d;
                                            if (constraintAnchor9 != null) {
                                                solverVariable7 = constraintAnchor9.g;
                                            } else {
                                                solverVariable7 = null;
                                            }
                                            if (constraintWidget18 != constraintWidget2) {
                                                ConstraintAnchor constraintAnchor27 = constraintWidget18.F[i9].d;
                                                if (constraintAnchor27 != null) {
                                                    solverVariable10 = constraintAnchor27.g;
                                                }
                                                solverVariable7 = solverVariable10;
                                            }
                                            if (constraintWidget19 == constraintWidget2) {
                                                constraintAnchor7 = constraintAnchorArr15[i9];
                                            }
                                            if (solverVariable6 == null && solverVariable7 != null) {
                                                linearSystem2.b(constraintAnchor6.g, solverVariable6, constraintAnchor6.b(), 0.5f, solverVariable7, constraintAnchor7.g, constraintWidget2.F[i9].b(), 5);
                                            }
                                        }
                                        i18++;
                                        constraintWidgetContainer2 = constraintWidgetContainer;
                                        linearSystem3 = linearSystem;
                                        i17 = i31;
                                        chainHeadArr3 = chainHeadArr4;
                                    }
                                }
                            } else {
                                ConstraintAnchor constraintAnchor28 = constraintAnchorArr[i3];
                                int i42 = i3 + 1;
                                ConstraintAnchor constraintAnchor29 = constraintWidget18.F[i42];
                                ConstraintAnchor constraintAnchor30 = constraintAnchor28.d;
                                if (constraintAnchor30 != null) {
                                    solverVariable8 = constraintAnchor30.g;
                                } else {
                                    solverVariable8 = null;
                                }
                                ConstraintAnchor constraintAnchor31 = constraintAnchor29.d;
                                if (constraintAnchor31 != null) {
                                    solverVariable9 = constraintAnchor31.g;
                                } else {
                                    solverVariable9 = null;
                                }
                                ConstraintAnchor constraintAnchor32 = constraintWidget19.F[i3];
                                ConstraintAnchor constraintAnchor33 = constraintWidget20.F[i42];
                                if (solverVariable8 != null && solverVariable9 != null) {
                                    if (i == 0) {
                                        f2 = constraintWidget21.T;
                                    } else {
                                        f2 = constraintWidget21.U;
                                    }
                                    SolverVariable solverVariable26 = solverVariable8;
                                    constraintWidget2 = constraintWidget20;
                                    linearSystem3.b(constraintAnchor32.g, solverVariable26, constraintAnchor32.b(), f2, solverVariable9, constraintAnchor33.g, constraintAnchor33.b(), 7);
                                } else {
                                    constraintWidget2 = constraintWidget20;
                                }
                            }
                            linearSystem2 = linearSystem;
                            if (!z3) {
                            }
                            ConstraintAnchor[] constraintAnchorArr152 = constraintWidget19.F;
                            constraintAnchor6 = constraintAnchorArr152[i3];
                            i9 = i3 + 1;
                            constraintAnchor7 = constraintWidget2.F[i9];
                            constraintAnchor8 = constraintAnchor6.d;
                            if (constraintAnchor8 != null) {
                            }
                            constraintAnchor9 = constraintAnchor7.d;
                            if (constraintAnchor9 != null) {
                            }
                            if (constraintWidget18 != constraintWidget2) {
                            }
                            if (constraintWidget19 == constraintWidget2) {
                            }
                            if (solverVariable6 == null) {
                                linearSystem2.b(constraintAnchor6.g, solverVariable6, constraintAnchor6.b(), 0.5f, solverVariable7, constraintAnchor7.g, constraintWidget2.F[i9].b(), 5);
                            }
                            i18++;
                            constraintWidgetContainer2 = constraintWidgetContainer;
                            linearSystem3 = linearSystem;
                            i17 = i31;
                            chainHeadArr3 = chainHeadArr4;
                        }
                    }
                    if (z17) {
                        ConstraintAnchor constraintAnchor34 = constraintAnchor17.d;
                        if (constraintAnchor34.b == constraintWidgetContainer2) {
                            linearSystem3.e(constraintAnchor17.g, constraintAnchor34.g, -constraintAnchor17.b(), 4);
                        }
                    }
                    linearSystem3.g(constraintAnchor17.g, constraintWidget18.F[i32].d.g, -constraintAnchor17.b(), 6);
                    if (z2) {
                    }
                    arrayList = chainHead.h;
                    if (arrayList != null) {
                        if (chainHead.n) {
                            f9 = chainHead.j;
                        }
                        ConstraintWidget constraintWidget232 = null;
                        float f102 = f;
                        i10 = 0;
                        while (i10 < size) {
                        }
                    }
                    if (constraintWidget19 != null) {
                    }
                    constraintWidget2 = constraintWidget20;
                    if (!z3) {
                    }
                    int i392 = 8;
                    if (z6) {
                        i4 = chainHead.j;
                        if (i4 <= 0) {
                        }
                        z8 = false;
                        constraintWidget3 = constraintWidget19;
                        constraintWidget4 = constraintWidget3;
                        while (true) {
                            ConstraintAnchor[] constraintAnchorArr132 = constraintWidget3.F;
                            if (constraintWidget4 != null) {
                            }
                            constraintWidget4 = constraintWidget29;
                            constraintWidget3 = constraintWidget5;
                        }
                        linearSystem2 = linearSystem;
                        ConstraintAnchor constraintAnchor262 = constraintWidget19.F[i3];
                        constraintAnchor = constraintAnchorArr[i3].d;
                        int i412 = i3 + 1;
                        constraintAnchor2 = constraintWidget2.F[i412];
                        constraintAnchor3 = constraintWidget18.F[i412].d;
                        if (constraintAnchor != null) {
                        }
                        if (constraintAnchor3 != null) {
                            linearSystem2.e(constraintAnchor2.g, constraintAnchor3.g, -constraintAnchor2.b(), 5);
                        }
                        if (!z3) {
                        }
                        ConstraintAnchor[] constraintAnchorArr1522 = constraintWidget19.F;
                        constraintAnchor6 = constraintAnchorArr1522[i3];
                        i9 = i3 + 1;
                        constraintAnchor7 = constraintWidget2.F[i9];
                        constraintAnchor8 = constraintAnchor6.d;
                        if (constraintAnchor8 != null) {
                        }
                        constraintAnchor9 = constraintAnchor7.d;
                        if (constraintAnchor9 != null) {
                        }
                        if (constraintWidget18 != constraintWidget2) {
                        }
                        if (constraintWidget19 == constraintWidget2) {
                        }
                        if (solverVariable6 == null) {
                        }
                        i18++;
                        constraintWidgetContainer2 = constraintWidgetContainer;
                        linearSystem3 = linearSystem;
                        i17 = i31;
                        chainHeadArr3 = chainHeadArr4;
                    }
                    linearSystem2 = linearSystem;
                    if (!z3) {
                    }
                    ConstraintAnchor[] constraintAnchorArr15222 = constraintWidget19.F;
                    constraintAnchor6 = constraintAnchorArr15222[i3];
                    i9 = i3 + 1;
                    constraintAnchor7 = constraintWidget2.F[i9];
                    constraintAnchor8 = constraintAnchor6.d;
                    if (constraintAnchor8 != null) {
                    }
                    constraintAnchor9 = constraintAnchor7.d;
                    if (constraintAnchor9 != null) {
                    }
                    if (constraintWidget18 != constraintWidget2) {
                    }
                    if (constraintWidget19 == constraintWidget2) {
                    }
                    if (solverVariable6 == null) {
                    }
                    i18++;
                    constraintWidgetContainer2 = constraintWidgetContainer;
                    linearSystem3 = linearSystem;
                    i17 = i31;
                    chainHeadArr3 = chainHeadArr4;
                }
            }
            if (z2) {
            }
            arrayList = chainHead.h;
            if (arrayList != null) {
            }
            if (constraintWidget19 != null) {
            }
            constraintWidget2 = constraintWidget20;
            if (!z3) {
            }
            int i3922 = 8;
            if (z6) {
            }
            linearSystem2 = linearSystem;
            if (!z3) {
            }
            ConstraintAnchor[] constraintAnchorArr152222 = constraintWidget19.F;
            constraintAnchor6 = constraintAnchorArr152222[i3];
            i9 = i3 + 1;
            constraintAnchor7 = constraintWidget2.F[i9];
            constraintAnchor8 = constraintAnchor6.d;
            if (constraintAnchor8 != null) {
            }
            constraintAnchor9 = constraintAnchor7.d;
            if (constraintAnchor9 != null) {
            }
            if (constraintWidget18 != constraintWidget2) {
            }
            if (constraintWidget19 == constraintWidget2) {
            }
            if (solverVariable6 == null) {
            }
            i18++;
            constraintWidgetContainer2 = constraintWidgetContainer;
            linearSystem3 = linearSystem;
            i17 = i31;
            chainHeadArr3 = chainHeadArr4;
        }
    }
}
