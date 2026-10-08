package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.solver.widgets.WidgetContainer;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.solver.widgets.analyzer.DependencyGraph;
import androidx.constraintlayout.solver.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.solver.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public final SparseArray j;
    public final ArrayList k;
    public final ConstraintWidgetContainer l;
    public int m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public int r;
    public ConstraintSet s;
    public ConstraintLayoutStates t;
    public int u;
    public HashMap v;
    public final SparseArray w;
    public final Measurer x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        public int C;
        public float D;
        public float E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public float N;
        public float O;
        public int P;
        public int Q;
        public int R;
        public boolean S;
        public boolean T;
        public String U;
        public boolean V;
        public boolean W;
        public boolean X;
        public boolean Y;
        public boolean Z;
        public int a;
        public int a0;
        public int b;
        public int b0;
        public float c;
        public int c0;
        public int d;
        public int d0;
        public int e;
        public int e0;
        public int f;
        public int f0;
        public int g;
        public float g0;
        public int h;
        public int h0;
        public int i;
        public int i0;
        public int j;
        public float j0;
        public int k;
        public ConstraintWidget k0;
        public int l;
        public int m;
        public int n;
        public float o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public float z;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class Table {
            public static final SparseIntArray a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                a = sparseIntArray;
                sparseIntArray.append(63, 8);
                sparseIntArray.append(64, 9);
                sparseIntArray.append(66, 10);
                sparseIntArray.append(67, 11);
                sparseIntArray.append(73, 12);
                sparseIntArray.append(72, 13);
                sparseIntArray.append(45, 14);
                sparseIntArray.append(44, 15);
                sparseIntArray.append(42, 16);
                sparseIntArray.append(46, 2);
                sparseIntArray.append(48, 3);
                sparseIntArray.append(47, 4);
                sparseIntArray.append(81, 49);
                sparseIntArray.append(82, 50);
                sparseIntArray.append(52, 5);
                sparseIntArray.append(53, 6);
                sparseIntArray.append(54, 7);
                sparseIntArray.append(0, 1);
                sparseIntArray.append(68, 17);
                sparseIntArray.append(69, 18);
                sparseIntArray.append(51, 19);
                sparseIntArray.append(50, 20);
                sparseIntArray.append(85, 21);
                sparseIntArray.append(88, 22);
                sparseIntArray.append(86, 23);
                sparseIntArray.append(83, 24);
                sparseIntArray.append(87, 25);
                sparseIntArray.append(84, 26);
                sparseIntArray.append(59, 29);
                sparseIntArray.append(74, 30);
                sparseIntArray.append(49, 44);
                sparseIntArray.append(61, 45);
                sparseIntArray.append(76, 46);
                sparseIntArray.append(60, 47);
                sparseIntArray.append(75, 48);
                sparseIntArray.append(40, 27);
                sparseIntArray.append(39, 28);
                sparseIntArray.append(77, 31);
                sparseIntArray.append(55, 32);
                sparseIntArray.append(79, 33);
                sparseIntArray.append(78, 34);
                sparseIntArray.append(80, 35);
                sparseIntArray.append(57, 36);
                sparseIntArray.append(56, 37);
                sparseIntArray.append(58, 38);
                sparseIntArray.append(62, 39);
                sparseIntArray.append(71, 40);
                sparseIntArray.append(65, 41);
                sparseIntArray.append(43, 42);
                sparseIntArray.append(41, 43);
                sparseIntArray.append(70, 51);
            }
        }

        public final void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.S) {
                this.V = false;
                if (this.H == 0) {
                    this.H = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.V = false;
                if (i == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.W = false;
                if (i2 == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.c == -1.0f && this.a == -1 && this.b == -1) {
                return;
            }
            this.Y = true;
            this.V = true;
            this.W = true;
            if (!(this.k0 instanceof androidx.constraintlayout.solver.widgets.Guideline)) {
                this.k0 = new androidx.constraintlayout.solver.widgets.Guideline();
            }
            ((androidx.constraintlayout.solver.widgets.Guideline) this.k0).y(this.R);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x007c  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void resolveLayoutDirection(int i) {
            boolean z;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i7 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i);
            boolean z2 = false;
            if (1 == getLayoutDirection()) {
                z = true;
            } else {
                z = false;
            }
            this.c0 = -1;
            this.d0 = -1;
            this.a0 = -1;
            this.b0 = -1;
            this.e0 = this.t;
            this.f0 = this.v;
            float f = this.z;
            this.g0 = f;
            int i8 = this.a;
            this.h0 = i8;
            int i9 = this.b;
            this.i0 = i9;
            float f2 = this.c;
            this.j0 = f2;
            int i10 = this.p;
            if (z) {
                if (i10 != -1) {
                    this.c0 = i10;
                } else {
                    int i11 = this.q;
                    if (i11 != -1) {
                        this.d0 = i11;
                    }
                    i2 = this.r;
                    if (i2 != -1) {
                        this.b0 = i2;
                        z2 = true;
                    }
                    i3 = this.s;
                    if (i3 != -1) {
                        this.a0 = i3;
                        z2 = true;
                    }
                    i4 = this.x;
                    if (i4 != -1) {
                        this.f0 = i4;
                    }
                    i5 = this.y;
                    if (i5 != -1) {
                        this.e0 = i5;
                    }
                    if (z2) {
                        this.g0 = 1.0f - f;
                    }
                    if (this.Y && this.R == 1) {
                        if (f2 == -1.0f) {
                            this.j0 = 1.0f - f2;
                            this.h0 = -1;
                            this.i0 = -1;
                        } else if (i8 != -1) {
                            this.i0 = i8;
                            this.h0 = -1;
                            this.j0 = -1.0f;
                        } else if (i9 != -1) {
                            this.h0 = i9;
                            this.i0 = -1;
                            this.j0 = -1.0f;
                        }
                    }
                }
                z2 = true;
                i2 = this.r;
                if (i2 != -1) {
                }
                i3 = this.s;
                if (i3 != -1) {
                }
                i4 = this.x;
                if (i4 != -1) {
                }
                i5 = this.y;
                if (i5 != -1) {
                }
                if (z2) {
                }
                if (this.Y) {
                    if (f2 == -1.0f) {
                    }
                }
            } else {
                if (i10 != -1) {
                    this.b0 = i10;
                }
                int i12 = this.q;
                if (i12 != -1) {
                    this.a0 = i12;
                }
                int i13 = this.r;
                if (i13 != -1) {
                    this.c0 = i13;
                }
                int i14 = this.s;
                if (i14 != -1) {
                    this.d0 = i14;
                }
                int i15 = this.x;
                if (i15 != -1) {
                    this.e0 = i15;
                }
                int i16 = this.y;
                if (i16 != -1) {
                    this.f0 = i16;
                }
            }
            if (this.r == -1 && this.s == -1 && this.q == -1 && i10 == -1) {
                int i17 = this.f;
                if (i17 != -1) {
                    this.c0 = i17;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                    }
                } else {
                    int i18 = this.g;
                    if (i18 != -1) {
                        this.d0 = i18;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i7 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i7;
                        }
                    }
                }
                int i19 = this.d;
                if (i19 != -1) {
                    this.a0 = i19;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin <= 0 && i6 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                        return;
                    }
                    return;
                }
                int i20 = this.e;
                if (i20 != -1) {
                    this.b0 = i20;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin <= 0 && i6 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).leftMargin = i6;
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class Measurer implements BasicMeasure.Measurer {
        public final ConstraintLayout a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;

        public Measurer(ConstraintLayout constraintLayout) {
            this.a = constraintLayout;
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x0207 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:104:0x01ef  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x01dd  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x01ce  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x01bf  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x0156  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0150  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x014e  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0154  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x015e A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0167 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0171  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x017d  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0193 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x024d  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0251  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0237  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x01b8  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x01c7  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01d8  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01e2  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01ea  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x01f4  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x01fc A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0211 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x0217  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x021d  */
        @Override // androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure.Measurer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a(ConstraintWidget constraintWidget, BasicMeasure.Measure measure) {
            int i;
            int i2;
            boolean z;
            int ordinal;
            int makeMeasureSpec;
            boolean z2;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour;
            boolean z3;
            boolean z4;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
            boolean z5;
            boolean z6;
            boolean z7;
            boolean z8;
            LayoutParams layoutParams;
            int measuredWidth;
            int measuredHeight;
            int baseline;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            boolean z9;
            boolean z10;
            boolean z11;
            boolean z12;
            int i9;
            boolean z13;
            boolean z14;
            int i10;
            ConstraintAnchor constraintAnchor = constraintWidget.z;
            ConstraintAnchor constraintAnchor2 = constraintWidget.x;
            int[] iArr = constraintWidget.g;
            if (constraintWidget.W == 8) {
                measure.e = 0;
                measure.f = 0;
                measure.g = 0;
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = measure.a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = measure.b;
            int i11 = measure.c;
            int i12 = measure.d;
            int i13 = this.b + this.c;
            int i14 = this.d;
            View view = constraintWidget.V;
            int ordinal2 = dimensionBehaviour3.ordinal();
            if (ordinal2 != 0) {
                if (ordinal2 != 1) {
                    if (ordinal2 != 2) {
                        if (ordinal2 != 3) {
                            i = 2;
                            i2 = 0;
                            z = false;
                            ordinal = dimensionBehaviour4.ordinal();
                            if (ordinal != 0) {
                                if (ordinal != 1) {
                                    if (ordinal != i) {
                                        if (ordinal != 3) {
                                            makeMeasureSpec = 0;
                                            z2 = false;
                                            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
                                            if (dimensionBehaviour3 == dimensionBehaviour) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            if (dimensionBehaviour4 == dimensionBehaviour) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.j;
                                            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.m;
                                            if (dimensionBehaviour4 == dimensionBehaviour2 && dimensionBehaviour4 != dimensionBehaviour5) {
                                                z5 = false;
                                            } else {
                                                z5 = true;
                                            }
                                            if (dimensionBehaviour3 == dimensionBehaviour2 && dimensionBehaviour3 != dimensionBehaviour5) {
                                                z6 = false;
                                            } else {
                                                z6 = true;
                                            }
                                            if (!z3 && constraintWidget.M > 0.0f) {
                                                z7 = true;
                                            } else {
                                                z7 = false;
                                            }
                                            if (!z4 && constraintWidget.M > 0.0f) {
                                                z8 = true;
                                            } else {
                                                z8 = false;
                                            }
                                            layoutParams = (LayoutParams) view.getLayoutParams();
                                            if (measure.j && z3 && constraintWidget.j == 0 && z4 && constraintWidget.k == 0) {
                                                i4 = 0;
                                                i7 = 0;
                                                baseline = 0;
                                            } else {
                                                view.measure(i2, makeMeasureSpec);
                                                measuredWidth = view.getMeasuredWidth();
                                                measuredHeight = view.getMeasuredHeight();
                                                baseline = view.getBaseline();
                                                if (z) {
                                                    iArr[0] = measuredWidth;
                                                    iArr[2] = measuredHeight;
                                                } else {
                                                    iArr[0] = 0;
                                                    iArr[2] = 0;
                                                }
                                                if (z2) {
                                                    iArr[1] = measuredHeight;
                                                    iArr[3] = measuredWidth;
                                                } else {
                                                    iArr[1] = 0;
                                                    iArr[3] = 0;
                                                }
                                                i3 = constraintWidget.m;
                                                if (i3 > 0) {
                                                    i4 = Math.max(i3, measuredWidth);
                                                } else {
                                                    i4 = measuredWidth;
                                                }
                                                i5 = constraintWidget.n;
                                                if (i5 > 0) {
                                                    i4 = Math.min(i5, i4);
                                                }
                                                i6 = constraintWidget.p;
                                                if (i6 > 0) {
                                                    i7 = Math.max(i6, measuredHeight);
                                                } else {
                                                    i7 = measuredHeight;
                                                }
                                                i8 = constraintWidget.q;
                                                if (i8 > 0) {
                                                    i7 = Math.min(i8, i7);
                                                }
                                                if (!z7 && z5) {
                                                    i4 = (int) ((i7 * constraintWidget.M) + 0.5f);
                                                } else if (z8 && z6) {
                                                    i7 = (int) ((i4 / constraintWidget.M) + 0.5f);
                                                }
                                                if (measuredWidth == i4 || measuredHeight != i7) {
                                                    if (measuredWidth != i4) {
                                                        i2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                                                    }
                                                    if (measuredHeight != i7) {
                                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                                                    }
                                                    view.measure(i2, makeMeasureSpec);
                                                    i4 = view.getMeasuredWidth();
                                                    i7 = view.getMeasuredHeight();
                                                    baseline = view.getBaseline();
                                                }
                                            }
                                            if (baseline != -1) {
                                                z9 = true;
                                            } else {
                                                z9 = false;
                                            }
                                            if (i4 != measure.c && i7 == measure.d) {
                                                z10 = false;
                                            } else {
                                                z10 = true;
                                            }
                                            measure.i = z10;
                                            if (layoutParams.X) {
                                                z9 = true;
                                            }
                                            if (z9 && baseline != -1 && constraintWidget.Q != baseline) {
                                                measure.i = true;
                                            }
                                            measure.e = i4;
                                            measure.f = i7;
                                            measure.h = z9;
                                            measure.g = baseline;
                                        }
                                        int i15 = this.g;
                                        if (constraintAnchor2 != null) {
                                            i9 = constraintWidget.y.e;
                                        } else {
                                            i9 = 0;
                                        }
                                        if (constraintAnchor != null) {
                                            i9 += constraintWidget.A.e;
                                        }
                                        makeMeasureSpec = ViewGroup.getChildMeasureSpec(i15, i13 + i9, -1);
                                        iArr[3] = -1;
                                    } else {
                                        makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
                                        if (constraintWidget.k == 1) {
                                            z11 = true;
                                        } else {
                                            z11 = false;
                                        }
                                        iArr[3] = 0;
                                        if (measure.j) {
                                            if (z11 && iArr[2] != 0 && iArr[1] != constraintWidget.g()) {
                                                z12 = true;
                                            } else {
                                                z12 = false;
                                            }
                                            if (!z11 || z12) {
                                                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.g(), 1073741824);
                                            }
                                        }
                                    }
                                } else {
                                    makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
                                    iArr[3] = -2;
                                }
                                z2 = true;
                                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
                                if (dimensionBehaviour3 == dimensionBehaviour) {
                                }
                                if (dimensionBehaviour4 == dimensionBehaviour) {
                                }
                                ConstraintWidget.DimensionBehaviour dimensionBehaviour52 = ConstraintWidget.DimensionBehaviour.j;
                                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.m;
                                if (dimensionBehaviour4 == dimensionBehaviour2) {
                                }
                                z5 = true;
                                if (dimensionBehaviour3 == dimensionBehaviour2) {
                                }
                                z6 = true;
                                if (!z3) {
                                }
                                z7 = false;
                                if (!z4) {
                                }
                                z8 = false;
                                layoutParams = (LayoutParams) view.getLayoutParams();
                                if (measure.j) {
                                }
                                view.measure(i2, makeMeasureSpec);
                                measuredWidth = view.getMeasuredWidth();
                                measuredHeight = view.getMeasuredHeight();
                                baseline = view.getBaseline();
                                if (z) {
                                }
                                if (z2) {
                                }
                                i3 = constraintWidget.m;
                                if (i3 > 0) {
                                }
                                i5 = constraintWidget.n;
                                if (i5 > 0) {
                                }
                                i6 = constraintWidget.p;
                                if (i6 > 0) {
                                }
                                i8 = constraintWidget.q;
                                if (i8 > 0) {
                                }
                                if (!z7) {
                                }
                                if (z8) {
                                    i7 = (int) ((i4 / constraintWidget.M) + 0.5f);
                                }
                                if (measuredWidth == i4) {
                                }
                                if (measuredWidth != i4) {
                                }
                                if (measuredHeight != i7) {
                                }
                                view.measure(i2, makeMeasureSpec);
                                i4 = view.getMeasuredWidth();
                                i7 = view.getMeasuredHeight();
                                baseline = view.getBaseline();
                                if (baseline != -1) {
                                }
                                if (i4 != measure.c) {
                                }
                                z10 = true;
                                measure.i = z10;
                                if (layoutParams.X) {
                                }
                                if (z9) {
                                    measure.i = true;
                                }
                                measure.e = i4;
                                measure.f = i7;
                                measure.h = z9;
                                measure.g = baseline;
                            }
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                            iArr[3] = i12;
                            z2 = false;
                            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
                            if (dimensionBehaviour3 == dimensionBehaviour) {
                            }
                            if (dimensionBehaviour4 == dimensionBehaviour) {
                            }
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour522 = ConstraintWidget.DimensionBehaviour.j;
                            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.m;
                            if (dimensionBehaviour4 == dimensionBehaviour2) {
                            }
                            z5 = true;
                            if (dimensionBehaviour3 == dimensionBehaviour2) {
                            }
                            z6 = true;
                            if (!z3) {
                            }
                            z7 = false;
                            if (!z4) {
                            }
                            z8 = false;
                            layoutParams = (LayoutParams) view.getLayoutParams();
                            if (measure.j) {
                            }
                            view.measure(i2, makeMeasureSpec);
                            measuredWidth = view.getMeasuredWidth();
                            measuredHeight = view.getMeasuredHeight();
                            baseline = view.getBaseline();
                            if (z) {
                            }
                            if (z2) {
                            }
                            i3 = constraintWidget.m;
                            if (i3 > 0) {
                            }
                            i5 = constraintWidget.n;
                            if (i5 > 0) {
                            }
                            i6 = constraintWidget.p;
                            if (i6 > 0) {
                            }
                            i8 = constraintWidget.q;
                            if (i8 > 0) {
                            }
                            if (!z7) {
                            }
                            if (z8) {
                            }
                            if (measuredWidth == i4) {
                            }
                            if (measuredWidth != i4) {
                            }
                            if (measuredHeight != i7) {
                            }
                            view.measure(i2, makeMeasureSpec);
                            i4 = view.getMeasuredWidth();
                            i7 = view.getMeasuredHeight();
                            baseline = view.getBaseline();
                            if (baseline != -1) {
                            }
                            if (i4 != measure.c) {
                            }
                            z10 = true;
                            measure.i = z10;
                            if (layoutParams.X) {
                            }
                            if (z9) {
                            }
                            measure.e = i4;
                            measure.f = i7;
                            measure.h = z9;
                            measure.g = baseline;
                        }
                        int i16 = this.f;
                        if (constraintAnchor2 != null) {
                            i10 = constraintAnchor2.e;
                        } else {
                            i10 = 0;
                        }
                        if (constraintAnchor != null) {
                            i = 2;
                            i10 += constraintAnchor.e;
                        } else {
                            i = 2;
                        }
                        i2 = ViewGroup.getChildMeasureSpec(i16, i14 + i10, -1);
                        iArr[i] = -1;
                    } else {
                        i = 2;
                        i2 = ViewGroup.getChildMeasureSpec(this.f, i14, -2);
                        if (constraintWidget.j == 1) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        iArr[2] = 0;
                        if (measure.j) {
                            if (z13 && iArr[3] != 0 && iArr[0] != constraintWidget.j()) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            if (!z13 || z14) {
                                i2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.j(), 1073741824);
                            }
                        }
                    }
                } else {
                    i = 2;
                    i2 = ViewGroup.getChildMeasureSpec(this.f, i14, -2);
                    iArr[2] = -2;
                }
                z = true;
                ordinal = dimensionBehaviour4.ordinal();
                if (ordinal != 0) {
                }
                z2 = false;
                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
                if (dimensionBehaviour3 == dimensionBehaviour) {
                }
                if (dimensionBehaviour4 == dimensionBehaviour) {
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5222 = ConstraintWidget.DimensionBehaviour.j;
                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.m;
                if (dimensionBehaviour4 == dimensionBehaviour2) {
                }
                z5 = true;
                if (dimensionBehaviour3 == dimensionBehaviour2) {
                }
                z6 = true;
                if (!z3) {
                }
                z7 = false;
                if (!z4) {
                }
                z8 = false;
                layoutParams = (LayoutParams) view.getLayoutParams();
                if (measure.j) {
                }
                view.measure(i2, makeMeasureSpec);
                measuredWidth = view.getMeasuredWidth();
                measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                if (z) {
                }
                if (z2) {
                }
                i3 = constraintWidget.m;
                if (i3 > 0) {
                }
                i5 = constraintWidget.n;
                if (i5 > 0) {
                }
                i6 = constraintWidget.p;
                if (i6 > 0) {
                }
                i8 = constraintWidget.q;
                if (i8 > 0) {
                }
                if (!z7) {
                }
                if (z8) {
                }
                if (measuredWidth == i4) {
                }
                if (measuredWidth != i4) {
                }
                if (measuredHeight != i7) {
                }
                view.measure(i2, makeMeasureSpec);
                i4 = view.getMeasuredWidth();
                i7 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                if (baseline != -1) {
                }
                if (i4 != measure.c) {
                }
                z10 = true;
                measure.i = z10;
                if (layoutParams.X) {
                }
                if (z9) {
                }
                measure.e = i4;
                measure.f = i7;
                measure.h = z9;
                measure.g = baseline;
            }
            i = 2;
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
            iArr[2] = i11;
            i2 = makeMeasureSpec2;
            z = false;
            ordinal = dimensionBehaviour4.ordinal();
            if (ordinal != 0) {
            }
            z2 = false;
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.l;
            if (dimensionBehaviour3 == dimensionBehaviour) {
            }
            if (dimensionBehaviour4 == dimensionBehaviour) {
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour52222 = ConstraintWidget.DimensionBehaviour.j;
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.m;
            if (dimensionBehaviour4 == dimensionBehaviour2) {
            }
            z5 = true;
            if (dimensionBehaviour3 == dimensionBehaviour2) {
            }
            z6 = true;
            if (!z3) {
            }
            z7 = false;
            if (!z4) {
            }
            z8 = false;
            layoutParams = (LayoutParams) view.getLayoutParams();
            if (measure.j) {
            }
            view.measure(i2, makeMeasureSpec);
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            baseline = view.getBaseline();
            if (z) {
            }
            if (z2) {
            }
            i3 = constraintWidget.m;
            if (i3 > 0) {
            }
            i5 = constraintWidget.n;
            if (i5 > 0) {
            }
            i6 = constraintWidget.p;
            if (i6 > 0) {
            }
            i8 = constraintWidget.q;
            if (i8 > 0) {
            }
            if (!z7) {
            }
            if (z8) {
            }
            if (measuredWidth == i4) {
            }
            if (measuredWidth != i4) {
            }
            if (measuredHeight != i7) {
            }
            view.measure(i2, makeMeasureSpec);
            i4 = view.getMeasuredWidth();
            i7 = view.getMeasuredHeight();
            baseline = view.getBaseline();
            if (baseline != -1) {
            }
            if (i4 != measure.c) {
            }
            z10 = true;
            measure.i = z10;
            if (layoutParams.X) {
            }
            if (z9) {
            }
            measure.e = i4;
            measure.f = i7;
            measure.h = z9;
            measure.g = baseline;
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.j = new SparseArray();
        this.k = new ArrayList(4);
        this.l = new ConstraintWidgetContainer();
        this.m = 0;
        this.n = 0;
        this.o = Integer.MAX_VALUE;
        this.p = Integer.MAX_VALUE;
        this.q = true;
        this.r = 263;
        this.s = null;
        this.t = null;
        this.u = -1;
        this.v = new HashMap();
        this.w = new SparseArray();
        this.x = new Measurer(this);
        c(attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$MarginLayoutParams, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams] */
    public static LayoutParams a() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.a = -1;
        marginLayoutParams.b = -1;
        marginLayoutParams.c = -1.0f;
        marginLayoutParams.d = -1;
        marginLayoutParams.e = -1;
        marginLayoutParams.f = -1;
        marginLayoutParams.g = -1;
        marginLayoutParams.h = -1;
        marginLayoutParams.i = -1;
        marginLayoutParams.j = -1;
        marginLayoutParams.k = -1;
        marginLayoutParams.l = -1;
        marginLayoutParams.m = -1;
        marginLayoutParams.n = 0;
        marginLayoutParams.o = 0.0f;
        marginLayoutParams.p = -1;
        marginLayoutParams.q = -1;
        marginLayoutParams.r = -1;
        marginLayoutParams.s = -1;
        marginLayoutParams.t = -1;
        marginLayoutParams.u = -1;
        marginLayoutParams.v = -1;
        marginLayoutParams.w = -1;
        marginLayoutParams.x = -1;
        marginLayoutParams.y = -1;
        marginLayoutParams.z = 0.5f;
        marginLayoutParams.A = 0.5f;
        marginLayoutParams.B = null;
        marginLayoutParams.C = 1;
        marginLayoutParams.D = -1.0f;
        marginLayoutParams.E = -1.0f;
        marginLayoutParams.F = 0;
        marginLayoutParams.G = 0;
        marginLayoutParams.H = 0;
        marginLayoutParams.I = 0;
        marginLayoutParams.J = 0;
        marginLayoutParams.K = 0;
        marginLayoutParams.L = 0;
        marginLayoutParams.M = 0;
        marginLayoutParams.N = 1.0f;
        marginLayoutParams.O = 1.0f;
        marginLayoutParams.P = -1;
        marginLayoutParams.Q = -1;
        marginLayoutParams.R = -1;
        marginLayoutParams.S = false;
        marginLayoutParams.T = false;
        marginLayoutParams.U = null;
        marginLayoutParams.V = true;
        marginLayoutParams.W = true;
        marginLayoutParams.X = false;
        marginLayoutParams.Y = false;
        marginLayoutParams.Z = false;
        marginLayoutParams.a0 = -1;
        marginLayoutParams.b0 = -1;
        marginLayoutParams.c0 = -1;
        marginLayoutParams.d0 = -1;
        marginLayoutParams.e0 = -1;
        marginLayoutParams.f0 = -1;
        marginLayoutParams.g0 = 0.5f;
        marginLayoutParams.k0 = new ConstraintWidget();
        return marginLayoutParams;
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        if (max2 > 0) {
            return max2;
        }
        return max;
    }

    public final ConstraintWidget b(View view) {
        if (view == this) {
            return this.l;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).k0;
    }

    public final void c(AttributeSet attributeSet, int i) {
        ConstraintWidgetContainer constraintWidgetContainer = this.l;
        constraintWidgetContainer.V = this;
        Measurer measurer = this.x;
        constraintWidgetContainer.g0 = measurer;
        constraintWidgetContainer.f0.f = measurer;
        this.j.put(getId(), this);
        this.s = null;
        boolean z = false;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.b, i, 0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == 9) {
                    this.m = obtainStyledAttributes.getDimensionPixelOffset(index, this.m);
                } else if (index == 10) {
                    this.n = obtainStyledAttributes.getDimensionPixelOffset(index, this.n);
                } else if (index == 7) {
                    this.o = obtainStyledAttributes.getDimensionPixelOffset(index, this.o);
                } else if (index == 8) {
                    this.p = obtainStyledAttributes.getDimensionPixelOffset(index, this.p);
                } else if (index == 89) {
                    this.r = obtainStyledAttributes.getInt(index, this.r);
                } else if (index == 38) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            d(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.t = null;
                        }
                    }
                } else if (index == 18) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.s = constraintSet;
                        constraintSet.e(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.s = null;
                    }
                    this.u = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        int i3 = this.r;
        constraintWidgetContainer.p0 = i3;
        if ((i3 & 256) == 256) {
            z = true;
        }
        LinearSystem.p = z;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintLayoutStates] */
    public final void d(int i) {
        Context context = getContext();
        ?? obj = new Object();
        obj.a = new SparseArray();
        obj.b = new SparseArray();
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            ConstraintLayoutStates.State state = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        switch (name.hashCode()) {
                            case -1349929691:
                                if (name.equals("ConstraintSet")) {
                                    obj.a(context, xml);
                                    break;
                                }
                                break;
                            case 80204913:
                                if (name.equals("State")) {
                                    state = new ConstraintLayoutStates.State(context, xml);
                                    obj.a.put(state.a, state);
                                    break;
                                }
                                break;
                            case 1382829617:
                                if (name.equals("StateSet")) {
                                    break;
                                }
                                break;
                            case 1657696882:
                                if (name.equals("layoutDescription")) {
                                    break;
                                }
                                break;
                            case 1901439077:
                                if (name.equals("Variant")) {
                                    ConstraintLayoutStates.Variant variant = new ConstraintLayoutStates.Variant(context, xml);
                                    if (state != null) {
                                        state.b.add(variant);
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                                break;
                        }
                        Log.v("ConstraintLayoutStates", "unknown tag " + name);
                    }
                } else {
                    xml.getName();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
        this.t = obj;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.k;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                ((ConstraintHelper) arrayList.get(i)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + ((int) ((parseInt3 / 1080.0f) * width));
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float parseInt4 = i4 + ((int) ((Integer.parseInt(split[3]) / 1920.0f) * height));
                        canvas.drawLine(f3, f2, f3, parseInt4, paint);
                        canvas.drawLine(f3, parseInt4, f, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, parseInt4, paint);
                        canvas.drawLine(f, parseInt4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public final void e(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        Measurer measurer = this.x;
        int i5 = measurer.e;
        int resolveSizeAndState = View.resolveSizeAndState(i3 + measurer.d, i, 0);
        int resolveSizeAndState2 = View.resolveSizeAndState(i4 + i5, i2, 0) & 16777215;
        int min = Math.min(this.o, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.p, resolveSizeAndState2);
        if (z) {
            min |= 16777216;
        }
        if (z2) {
            min2 |= 16777216;
        }
        setMeasuredDimension(min, min2);
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.q = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        int i;
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.a = -1;
        marginLayoutParams.b = -1;
        marginLayoutParams.c = -1.0f;
        marginLayoutParams.d = -1;
        marginLayoutParams.e = -1;
        marginLayoutParams.f = -1;
        marginLayoutParams.g = -1;
        marginLayoutParams.h = -1;
        marginLayoutParams.i = -1;
        marginLayoutParams.j = -1;
        marginLayoutParams.k = -1;
        marginLayoutParams.l = -1;
        marginLayoutParams.m = -1;
        marginLayoutParams.n = 0;
        marginLayoutParams.o = 0.0f;
        marginLayoutParams.p = -1;
        marginLayoutParams.q = -1;
        marginLayoutParams.r = -1;
        marginLayoutParams.s = -1;
        marginLayoutParams.t = -1;
        marginLayoutParams.u = -1;
        marginLayoutParams.v = -1;
        marginLayoutParams.w = -1;
        marginLayoutParams.x = -1;
        marginLayoutParams.y = -1;
        marginLayoutParams.z = 0.5f;
        marginLayoutParams.A = 0.5f;
        marginLayoutParams.B = null;
        marginLayoutParams.C = 1;
        marginLayoutParams.D = -1.0f;
        marginLayoutParams.E = -1.0f;
        marginLayoutParams.F = 0;
        marginLayoutParams.G = 0;
        marginLayoutParams.H = 0;
        marginLayoutParams.I = 0;
        marginLayoutParams.J = 0;
        marginLayoutParams.K = 0;
        marginLayoutParams.L = 0;
        marginLayoutParams.M = 0;
        marginLayoutParams.N = 1.0f;
        marginLayoutParams.O = 1.0f;
        marginLayoutParams.P = -1;
        marginLayoutParams.Q = -1;
        marginLayoutParams.R = -1;
        marginLayoutParams.S = false;
        marginLayoutParams.T = false;
        marginLayoutParams.U = null;
        marginLayoutParams.V = true;
        marginLayoutParams.W = true;
        marginLayoutParams.X = false;
        marginLayoutParams.Y = false;
        marginLayoutParams.Z = false;
        marginLayoutParams.a0 = -1;
        marginLayoutParams.b0 = -1;
        marginLayoutParams.c0 = -1;
        marginLayoutParams.d0 = -1;
        marginLayoutParams.e0 = -1;
        marginLayoutParams.f0 = -1;
        marginLayoutParams.g0 = 0.5f;
        marginLayoutParams.k0 = new ConstraintWidget();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.b);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            int i3 = LayoutParams.Table.a.get(index);
            switch (i3) {
                case 1:
                    marginLayoutParams.R = obtainStyledAttributes.getInt(index, marginLayoutParams.R);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    int resourceId = obtainStyledAttributes.getResourceId(index, marginLayoutParams.m);
                    marginLayoutParams.m = resourceId;
                    if (resourceId == -1) {
                        marginLayoutParams.m = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    marginLayoutParams.n = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.n);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    float f = obtainStyledAttributes.getFloat(index, marginLayoutParams.o) % 360.0f;
                    marginLayoutParams.o = f;
                    if (f < 0.0f) {
                        marginLayoutParams.o = (360.0f - f) % 360.0f;
                        break;
                    } else {
                        break;
                    }
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    marginLayoutParams.a = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.a);
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    marginLayoutParams.b = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.b);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    marginLayoutParams.c = obtainStyledAttributes.getFloat(index, marginLayoutParams.c);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.d);
                    marginLayoutParams.d = resourceId2;
                    if (resourceId2 == -1) {
                        marginLayoutParams.d = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case KeyModifiers.a /* 9 */:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.e);
                    marginLayoutParams.e = resourceId3;
                    if (resourceId3 == -1) {
                        marginLayoutParams.e = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case KeyModifiers.b /* 10 */:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.f);
                    marginLayoutParams.f = resourceId4;
                    if (resourceId4 == -1) {
                        marginLayoutParams.f = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.g);
                    marginLayoutParams.g = resourceId5;
                    if (resourceId5 == -1) {
                        marginLayoutParams.g = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case KeyModifiers.c /* 12 */:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.h);
                    marginLayoutParams.h = resourceId6;
                    if (resourceId6 == -1) {
                        marginLayoutParams.h = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.i);
                    marginLayoutParams.i = resourceId7;
                    if (resourceId7 == -1) {
                        marginLayoutParams.i = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.j);
                    marginLayoutParams.j = resourceId8;
                    if (resourceId8 == -1) {
                        marginLayoutParams.j = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.k);
                    marginLayoutParams.k = resourceId9;
                    if (resourceId9 == -1) {
                        marginLayoutParams.k = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.l);
                    marginLayoutParams.l = resourceId10;
                    if (resourceId10 == -1) {
                        marginLayoutParams.l = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.p);
                    marginLayoutParams.p = resourceId11;
                    if (resourceId11 == -1) {
                        marginLayoutParams.p = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 18:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.q);
                    marginLayoutParams.q = resourceId12;
                    if (resourceId12 == -1) {
                        marginLayoutParams.q = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 19:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.r);
                    marginLayoutParams.r = resourceId13;
                    if (resourceId13 == -1) {
                        marginLayoutParams.r = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 20:
                    int resourceId14 = obtainStyledAttributes.getResourceId(index, marginLayoutParams.s);
                    marginLayoutParams.s = resourceId14;
                    if (resourceId14 == -1) {
                        marginLayoutParams.s = obtainStyledAttributes.getInt(index, -1);
                        break;
                    } else {
                        break;
                    }
                case 21:
                    marginLayoutParams.t = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.t);
                    break;
                case 22:
                    marginLayoutParams.u = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.u);
                    break;
                case 23:
                    marginLayoutParams.v = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.v);
                    break;
                case 24:
                    marginLayoutParams.w = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.w);
                    break;
                case 25:
                    marginLayoutParams.x = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.x);
                    break;
                case 26:
                    marginLayoutParams.y = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.y);
                    break;
                case 27:
                    marginLayoutParams.S = obtainStyledAttributes.getBoolean(index, marginLayoutParams.S);
                    break;
                case 28:
                    marginLayoutParams.T = obtainStyledAttributes.getBoolean(index, marginLayoutParams.T);
                    break;
                case 29:
                    marginLayoutParams.z = obtainStyledAttributes.getFloat(index, marginLayoutParams.z);
                    break;
                case 30:
                    marginLayoutParams.A = obtainStyledAttributes.getFloat(index, marginLayoutParams.A);
                    break;
                case 31:
                    int i4 = obtainStyledAttributes.getInt(index, 0);
                    marginLayoutParams.H = i4;
                    if (i4 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 32:
                    int i5 = obtainStyledAttributes.getInt(index, 0);
                    marginLayoutParams.I = i5;
                    if (i5 == 1) {
                        Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        break;
                    } else {
                        break;
                    }
                case 33:
                    try {
                        marginLayoutParams.J = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.J);
                        break;
                    } catch (Exception unused) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.J) == -2) {
                            marginLayoutParams.J = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 34:
                    try {
                        marginLayoutParams.L = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.L);
                        break;
                    } catch (Exception unused2) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.L) == -2) {
                            marginLayoutParams.L = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 35:
                    marginLayoutParams.N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, marginLayoutParams.N));
                    marginLayoutParams.H = 2;
                    break;
                case 36:
                    try {
                        marginLayoutParams.K = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.K);
                        break;
                    } catch (Exception unused3) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.K) == -2) {
                            marginLayoutParams.K = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 37:
                    try {
                        marginLayoutParams.M = obtainStyledAttributes.getDimensionPixelSize(index, marginLayoutParams.M);
                        break;
                    } catch (Exception unused4) {
                        if (obtainStyledAttributes.getInt(index, marginLayoutParams.M) == -2) {
                            marginLayoutParams.M = -2;
                            break;
                        } else {
                            break;
                        }
                    }
                case 38:
                    marginLayoutParams.O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, marginLayoutParams.O));
                    marginLayoutParams.I = 2;
                    break;
                default:
                    switch (i3) {
                        case 44:
                            String string = obtainStyledAttributes.getString(index);
                            marginLayoutParams.B = string;
                            marginLayoutParams.C = -1;
                            if (string != null) {
                                int length = string.length();
                                int indexOf = marginLayoutParams.B.indexOf(44);
                                if (indexOf > 0 && indexOf < length - 1) {
                                    String substring = marginLayoutParams.B.substring(0, indexOf);
                                    if (substring.equalsIgnoreCase("W")) {
                                        marginLayoutParams.C = 0;
                                    } else if (substring.equalsIgnoreCase("H")) {
                                        marginLayoutParams.C = 1;
                                    }
                                    i = indexOf + 1;
                                } else {
                                    i = 0;
                                }
                                int indexOf2 = marginLayoutParams.B.indexOf(58);
                                if (indexOf2 >= 0 && indexOf2 < length - 1) {
                                    String substring2 = marginLayoutParams.B.substring(i, indexOf2);
                                    String substring3 = marginLayoutParams.B.substring(indexOf2 + 1);
                                    if (substring2.length() > 0 && substring3.length() > 0) {
                                        try {
                                            float parseFloat = Float.parseFloat(substring2);
                                            float parseFloat2 = Float.parseFloat(substring3);
                                            if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                if (marginLayoutParams.C == 1) {
                                                    Math.abs(parseFloat2 / parseFloat);
                                                    break;
                                                } else {
                                                    Math.abs(parseFloat / parseFloat2);
                                                    break;
                                                }
                                            }
                                        } catch (NumberFormatException unused5) {
                                            break;
                                        }
                                    }
                                } else {
                                    String substring4 = marginLayoutParams.B.substring(i);
                                    if (substring4.length() > 0) {
                                        Float.parseFloat(substring4);
                                        break;
                                    } else {
                                        break;
                                    }
                                }
                            } else {
                                break;
                            }
                            break;
                        case 45:
                            marginLayoutParams.D = obtainStyledAttributes.getFloat(index, marginLayoutParams.D);
                            break;
                        case 46:
                            marginLayoutParams.E = obtainStyledAttributes.getFloat(index, marginLayoutParams.E);
                            break;
                        case 47:
                            marginLayoutParams.F = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 48:
                            marginLayoutParams.G = obtainStyledAttributes.getInt(index, 0);
                            break;
                        case 49:
                            marginLayoutParams.P = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.P);
                            break;
                        case 50:
                            marginLayoutParams.Q = obtainStyledAttributes.getDimensionPixelOffset(index, marginLayoutParams.Q);
                            break;
                        case 51:
                            marginLayoutParams.U = obtainStyledAttributes.getString(index);
                            break;
                    }
            }
        }
        obtainStyledAttributes.recycle();
        marginLayoutParams.a();
        return marginLayoutParams;
    }

    public int getMaxHeight() {
        return this.p;
    }

    public int getMaxWidth() {
        return this.o;
    }

    public int getMinHeight() {
        return this.n;
    }

    public int getMinWidth() {
        return this.m;
    }

    public int getOptimizationLevel() {
        return this.l.p0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.k0;
            if (childAt.getVisibility() != 8 || layoutParams.Y || layoutParams.Z || isInEditMode) {
                int k = constraintWidget.k();
                int l = constraintWidget.l();
                childAt.layout(k, l, constraintWidget.j() + k, constraintWidget.g() + l);
            }
        }
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((ConstraintHelper) arrayList.get(i6)).getClass();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:190:0x0544  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x063e  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0662  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x07d7  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0827  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0862  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x086d  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0890  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0895  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x08a0  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x090b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0916  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x0a0b  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0a10  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0a87  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0a8c  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x0bfe  */
    /* JADX WARN: Removed duplicated region for block: B:571:0x0c00  */
    /* JADX WARN: Removed duplicated region for block: B:574:0x0bf5  */
    /* JADX WARN: Removed duplicated region for block: B:593:0x0a03  */
    /* JADX WARN: Removed duplicated region for block: B:614:0x0892  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x0870  */
    /* JADX WARN: Removed duplicated region for block: B:616:0x0865  */
    /* JADX WARN: Removed duplicated region for block: B:625:0x080d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        ConstraintAnchor.Type type;
        BasicMeasure basicMeasure;
        DependencyGraph dependencyGraph;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3;
        int i4;
        int i5;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour4;
        int i6;
        ConstraintAnchor.Type type2;
        int i7;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour5;
        int i8;
        int i9;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour6;
        int j;
        char c;
        int i10;
        int i11;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        boolean z4;
        int[] iArr;
        int i12;
        boolean z5;
        BasicMeasure.Measurer measurer;
        int i13;
        boolean z6;
        int i14;
        int i15;
        int size;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        ArrayList arrayList2;
        int i16;
        boolean z13;
        boolean z14;
        BasicMeasure.Measurer measurer2;
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z15;
        int i17;
        int i18;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour7;
        int i19;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour8;
        ConstraintAnchor.Type type5;
        SparseArray sparseArray;
        ConstraintWidget constraintWidget;
        ConstraintAnchor.Type type6;
        ConstraintWidget constraintWidget2;
        int i20;
        ConstraintAnchor.Type type7;
        ConstraintWidget constraintWidget3;
        ConstraintAnchor.Type type8;
        int i21;
        ConstraintAnchor.Type type9;
        BasicMeasure basicMeasure2;
        int i22;
        ConstraintWidgetContainer constraintWidgetContainer;
        DependencyGraph dependencyGraph2;
        int i23;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour9;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour11;
        SparseArray sparseArray2;
        ConstraintWidget constraintWidget4;
        int i24;
        ConstraintWidget constraintWidget5;
        ConstraintWidget constraintWidget6;
        ConstraintAnchor.Type type10;
        int i25;
        float f;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour12;
        int i26;
        String str;
        int i27;
        float f2;
        int i28;
        float f3;
        int i29;
        int i30;
        float parseFloat;
        int i31;
        ConstraintWidget constraintWidget7;
        char c2;
        int i32;
        int i33;
        boolean z24;
        int i34;
        boolean z25;
        HashMap hashMap;
        int i35;
        String resourceName;
        int id;
        ConstraintWidget constraintWidget8;
        String str2;
        ConstraintLayout constraintLayout = this;
        if ((constraintLayout.getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == constraintLayout.getLayoutDirection()) {
            z = true;
        } else {
            z = false;
        }
        ConstraintWidgetContainer constraintWidgetContainer2 = constraintLayout.l;
        constraintWidgetContainer2.h0 = z;
        BasicMeasure basicMeasure3 = constraintWidgetContainer2.e0;
        DependencyGraph dependencyGraph3 = constraintWidgetContainer2.f0;
        boolean z26 = constraintLayout.q;
        ConstraintAnchor.Type type11 = ConstraintAnchor.Type.m;
        ConstraintAnchor.Type type12 = ConstraintAnchor.Type.l;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour13 = ConstraintWidget.DimensionBehaviour.j;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour14 = ConstraintWidget.DimensionBehaviour.k;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour15 = ConstraintWidget.DimensionBehaviour.l;
        if (z26) {
            constraintLayout.q = false;
            int childCount = constraintLayout.getChildCount();
            int i36 = 0;
            while (true) {
                if (i36 < childCount) {
                    if (constraintLayout.getChildAt(i36).isLayoutRequested()) {
                        z22 = true;
                        break;
                    }
                    i36++;
                } else {
                    z22 = false;
                    break;
                }
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour16 = ConstraintWidget.DimensionBehaviour.m;
            if (z22) {
                boolean isInEditMode = constraintLayout.isInEditMode();
                int childCount2 = constraintLayout.getChildCount();
                i3 = 4194304;
                for (int i37 = 0; i37 < childCount2; i37++) {
                    ConstraintWidget b = constraintLayout.b(constraintLayout.getChildAt(i37));
                    if (b != null) {
                        b.q();
                    }
                }
                SparseArray sparseArray3 = constraintLayout.j;
                float f4 = 0.0f;
                int i38 = 1;
                if (isInEditMode) {
                    for (int i39 = 0; i39 < childCount2; i39 = i35 + 1) {
                        View childAt = constraintLayout.getChildAt(i39);
                        try {
                            resourceName = constraintLayout.getResources().getResourceName(childAt.getId());
                            Integer valueOf = Integer.valueOf(childAt.getId());
                            if (resourceName != null) {
                                if (constraintLayout.v == null) {
                                    constraintLayout.v = new HashMap();
                                }
                                int indexOf = resourceName.indexOf("/");
                                i35 = i39;
                                if (indexOf != -1) {
                                    try {
                                        str2 = resourceName.substring(indexOf + 1);
                                    } catch (Resources.NotFoundException unused) {
                                    }
                                } else {
                                    str2 = resourceName;
                                }
                                constraintLayout.v.put(str2, valueOf);
                            } else {
                                i35 = i39;
                            }
                            int indexOf2 = resourceName.indexOf(47);
                            if (indexOf2 != -1) {
                                resourceName = resourceName.substring(indexOf2 + 1);
                            }
                            id = childAt.getId();
                        } catch (Resources.NotFoundException unused2) {
                            i35 = i39;
                        }
                        if (id != 0) {
                            View view = (View) sparseArray3.get(id);
                            if (view == null && (view = constraintLayout.findViewById(id)) != null && view != constraintLayout && view.getParent() == constraintLayout) {
                                constraintLayout.onViewAdded(view);
                            }
                            if (view != constraintLayout) {
                                if (view == null) {
                                    constraintWidget8 = null;
                                } else {
                                    constraintWidget8 = ((LayoutParams) view.getLayoutParams()).k0;
                                }
                                constraintWidget8.X = resourceName;
                            }
                        }
                        constraintWidget8 = constraintWidgetContainer2;
                        constraintWidget8.X = resourceName;
                    }
                }
                if (constraintLayout.u != -1) {
                    for (int i40 = 0; i40 < childCount2; i40++) {
                        constraintLayout.getChildAt(i40).getId();
                    }
                }
                ConstraintSet constraintSet = constraintLayout.s;
                if (constraintSet != null) {
                    constraintSet.a(constraintLayout);
                }
                constraintWidgetContainer2.d0.clear();
                ArrayList arrayList3 = constraintLayout.k;
                int size2 = arrayList3.size();
                if (size2 > 0) {
                    int i41 = 0;
                    while (i41 < size2) {
                        ConstraintHelper constraintHelper = (ConstraintHelper) arrayList3.get(i41);
                        ArrayList arrayList4 = arrayList3;
                        HashMap hashMap2 = constraintHelper.o;
                        if (constraintHelper.isInEditMode()) {
                            i32 = size2;
                            constraintHelper.setIds(constraintHelper.n);
                        } else {
                            i32 = size2;
                        }
                        androidx.constraintlayout.solver.widgets.Barrier barrier = constraintHelper.m;
                        if (barrier == null) {
                            i33 = i41;
                            z24 = z22;
                        } else {
                            i33 = i41;
                            barrier.e0 = 0;
                            Arrays.fill(barrier.d0, (Object) null);
                            int i42 = 0;
                            while (i42 < constraintHelper.k) {
                                int i43 = constraintHelper.j[i42];
                                View view2 = (View) sparseArray3.get(i43);
                                if (view2 == null) {
                                    String str3 = (String) hashMap2.get(Integer.valueOf(i43));
                                    i34 = i42;
                                    int c3 = constraintHelper.c(constraintLayout, str3);
                                    z25 = z22;
                                    if (c3 != 0) {
                                        constraintHelper.j[i34] = c3;
                                        hashMap2.put(Integer.valueOf(c3), str3);
                                        view2 = (View) sparseArray3.get(c3);
                                    }
                                } else {
                                    i34 = i42;
                                    z25 = z22;
                                }
                                View view3 = view2;
                                if (view3 != null) {
                                    androidx.constraintlayout.solver.widgets.Barrier barrier2 = constraintHelper.m;
                                    ConstraintWidget b2 = constraintLayout.b(view3);
                                    barrier2.getClass();
                                    if (b2 != barrier2 && b2 != null) {
                                        int i44 = barrier2.e0 + 1;
                                        hashMap = hashMap2;
                                        ConstraintWidget[] constraintWidgetArr = barrier2.d0;
                                        if (i44 > constraintWidgetArr.length) {
                                            barrier2.d0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
                                        }
                                        ConstraintWidget[] constraintWidgetArr2 = barrier2.d0;
                                        int i45 = barrier2.e0;
                                        constraintWidgetArr2[i45] = b2;
                                        barrier2.e0 = i45 + 1;
                                        i42 = i34 + 1;
                                        hashMap2 = hashMap;
                                        z22 = z25;
                                    }
                                }
                                hashMap = hashMap2;
                                i42 = i34 + 1;
                                hashMap2 = hashMap;
                                z22 = z25;
                            }
                            z24 = z22;
                            constraintHelper.m.getClass();
                        }
                        i41 = i33 + 1;
                        arrayList3 = arrayList4;
                        size2 = i32;
                        z22 = z24;
                    }
                }
                z23 = z22;
                for (int i46 = 0; i46 < childCount2; i46++) {
                    constraintLayout.getChildAt(i46);
                }
                SparseArray sparseArray4 = constraintLayout.w;
                sparseArray4.clear();
                sparseArray4.put(0, constraintWidgetContainer2);
                sparseArray4.put(constraintLayout.getId(), constraintWidgetContainer2);
                for (int i47 = 0; i47 < childCount2; i47++) {
                    View childAt2 = constraintLayout.getChildAt(i47);
                    sparseArray4.put(childAt2.getId(), constraintLayout.b(childAt2));
                }
                int i48 = 0;
                while (i48 < childCount2) {
                    View childAt3 = constraintLayout.getChildAt(i48);
                    ConstraintWidget b3 = constraintLayout.b(childAt3);
                    if (b3 == null) {
                        ConstraintAnchor.Type type13 = type12;
                        i22 = childCount2;
                        type8 = type13;
                        basicMeasure2 = basicMeasure3;
                        i19 = i48;
                        constraintWidgetContainer = constraintWidgetContainer2;
                        dependencyGraph2 = dependencyGraph3;
                        dimensionBehaviour11 = dimensionBehaviour13;
                        dimensionBehaviour12 = dimensionBehaviour14;
                        sparseArray = sparseArray3;
                        dimensionBehaviour9 = dimensionBehaviour15;
                        dimensionBehaviour10 = dimensionBehaviour16;
                    } else {
                        LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                        i19 = i48;
                        constraintWidgetContainer2.d0.add(b3);
                        ConstraintWidget constraintWidget9 = b3.J;
                        if (constraintWidget9 != null) {
                            ((WidgetContainer) constraintWidget9).d0.remove(b3);
                            b3.J = null;
                        }
                        b3.J = constraintWidgetContainer2;
                        layoutParams.a();
                        b3.W = childAt3.getVisibility();
                        b3.V = childAt3;
                        if (childAt3 instanceof ConstraintHelper) {
                            boolean z27 = constraintWidgetContainer2.h0;
                            Barrier barrier3 = (Barrier) ((ConstraintHelper) childAt3);
                            int i49 = barrier3.p;
                            barrier3.q = i49;
                            dimensionBehaviour8 = dimensionBehaviour13;
                            if (z27) {
                                if (i49 == 5) {
                                    barrier3.q = i38;
                                } else if (i49 == 6) {
                                    barrier3.q = 0;
                                }
                                type5 = type11;
                            } else {
                                type5 = type11;
                                if (i49 == 5) {
                                    barrier3.q = 0;
                                } else if (i49 == 6) {
                                    barrier3.q = 1;
                                }
                            }
                            if (b3 instanceof androidx.constraintlayout.solver.widgets.Barrier) {
                                ((androidx.constraintlayout.solver.widgets.Barrier) b3).f0 = barrier3.q;
                            }
                        } else {
                            dimensionBehaviour8 = dimensionBehaviour13;
                            type5 = type11;
                        }
                        if (layoutParams.Y) {
                            androidx.constraintlayout.solver.widgets.Guideline guideline = (androidx.constraintlayout.solver.widgets.Guideline) b3;
                            int i50 = layoutParams.h0;
                            int i51 = layoutParams.i0;
                            float f5 = layoutParams.j0;
                            if (f5 != -1.0f) {
                                if (f5 > -1.0f) {
                                    guideline.d0 = f5;
                                    c2 = 65535;
                                    guideline.e0 = -1;
                                    guideline.f0 = -1;
                                    ConstraintAnchor.Type type14 = type12;
                                    i22 = childCount2;
                                    type8 = type14;
                                    basicMeasure2 = basicMeasure3;
                                    constraintWidgetContainer = constraintWidgetContainer2;
                                    dependencyGraph2 = dependencyGraph3;
                                    dimensionBehaviour12 = dimensionBehaviour14;
                                    sparseArray = sparseArray3;
                                    dimensionBehaviour9 = dimensionBehaviour15;
                                    dimensionBehaviour10 = dimensionBehaviour16;
                                    dimensionBehaviour11 = dimensionBehaviour8;
                                    type11 = type5;
                                }
                                ConstraintAnchor.Type type15 = type12;
                                i22 = childCount2;
                                type8 = type15;
                                basicMeasure2 = basicMeasure3;
                                constraintWidgetContainer = constraintWidgetContainer2;
                                dependencyGraph2 = dependencyGraph3;
                                dimensionBehaviour12 = dimensionBehaviour14;
                                sparseArray = sparseArray3;
                                dimensionBehaviour9 = dimensionBehaviour15;
                                dimensionBehaviour10 = dimensionBehaviour16;
                                dimensionBehaviour11 = dimensionBehaviour8;
                                type11 = type5;
                            } else {
                                c2 = 65535;
                                if (i50 != -1) {
                                    if (i50 > -1) {
                                        guideline.d0 = -1.0f;
                                        guideline.e0 = i50;
                                        guideline.f0 = -1;
                                    }
                                } else if (i51 != -1 && i51 > -1) {
                                    guideline.d0 = -1.0f;
                                    guideline.e0 = -1;
                                    guideline.f0 = i51;
                                    ConstraintAnchor.Type type152 = type12;
                                    i22 = childCount2;
                                    type8 = type152;
                                    basicMeasure2 = basicMeasure3;
                                    constraintWidgetContainer = constraintWidgetContainer2;
                                    dependencyGraph2 = dependencyGraph3;
                                    dimensionBehaviour12 = dimensionBehaviour14;
                                    sparseArray = sparseArray3;
                                    dimensionBehaviour9 = dimensionBehaviour15;
                                    dimensionBehaviour10 = dimensionBehaviour16;
                                    dimensionBehaviour11 = dimensionBehaviour8;
                                    type11 = type5;
                                }
                                ConstraintAnchor.Type type142 = type12;
                                i22 = childCount2;
                                type8 = type142;
                                basicMeasure2 = basicMeasure3;
                                constraintWidgetContainer = constraintWidgetContainer2;
                                dependencyGraph2 = dependencyGraph3;
                                dimensionBehaviour12 = dimensionBehaviour14;
                                sparseArray = sparseArray3;
                                dimensionBehaviour9 = dimensionBehaviour15;
                                dimensionBehaviour10 = dimensionBehaviour16;
                                dimensionBehaviour11 = dimensionBehaviour8;
                                type11 = type5;
                            }
                        } else {
                            int i52 = layoutParams.a0;
                            int i53 = layoutParams.b0;
                            int i54 = layoutParams.c0;
                            int i55 = layoutParams.d0;
                            int i56 = layoutParams.e0;
                            int i57 = layoutParams.f0;
                            float f6 = layoutParams.g0;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour17 = dimensionBehaviour14;
                            int i58 = layoutParams.m;
                            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.j;
                            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.k;
                            sparseArray = sparseArray3;
                            if (i58 != -1) {
                                ConstraintWidget constraintWidget10 = (ConstraintWidget) sparseArray4.get(i58);
                                if (constraintWidget10 != null) {
                                    float f7 = layoutParams.o;
                                    int i59 = layoutParams.n;
                                    ConstraintAnchor.Type type18 = ConstraintAnchor.Type.o;
                                    b3.m(type18, constraintWidget10, type18, i59, 0);
                                    constraintWidget7 = b3;
                                    constraintWidget7.v = f7;
                                } else {
                                    constraintWidget7 = b3;
                                }
                                ConstraintAnchor.Type type19 = type12;
                                i22 = childCount2;
                                type8 = type19;
                                basicMeasure2 = basicMeasure3;
                                dependencyGraph2 = dependencyGraph3;
                                constraintWidget6 = constraintWidget7;
                                dimensionBehaviour9 = dimensionBehaviour15;
                                dimensionBehaviour10 = dimensionBehaviour16;
                                type7 = type16;
                                dimensionBehaviour11 = dimensionBehaviour8;
                                type11 = type5;
                                constraintWidgetContainer = constraintWidgetContainer2;
                                type10 = type17;
                            } else {
                                if (i52 != -1) {
                                    ConstraintWidget constraintWidget11 = (ConstraintWidget) sparseArray4.get(i52);
                                    if (constraintWidget11 != null) {
                                        constraintWidget = b3;
                                        type6 = type16;
                                        constraintWidget.m(type6, constraintWidget11, type16, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i56);
                                    } else {
                                        constraintWidget = b3;
                                        type6 = type16;
                                    }
                                } else {
                                    constraintWidget = b3;
                                    type6 = type16;
                                    if (i53 != -1 && (constraintWidget2 = (ConstraintWidget) sparseArray4.get(i53)) != null) {
                                        i20 = childCount2;
                                        ConstraintAnchor.Type type20 = type12;
                                        constraintWidget.m(type6, constraintWidget2, type20, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i56);
                                        type12 = type20;
                                        if (i54 == -1) {
                                            ConstraintWidget constraintWidget12 = (ConstraintWidget) sparseArray4.get(i54);
                                            if (constraintWidget12 != null) {
                                                ConstraintAnchor.Type type21 = type6;
                                                constraintWidget.m(type12, constraintWidget12, type21, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i57);
                                                type7 = type21;
                                            } else {
                                                type7 = type6;
                                            }
                                        } else {
                                            type7 = type6;
                                            if (i55 != -1 && (constraintWidget3 = (ConstraintWidget) sparseArray4.get(i55)) != null) {
                                                constraintWidget.m(type12, constraintWidget3, type12, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i57);
                                            }
                                        }
                                        type8 = type12;
                                        i21 = layoutParams.h;
                                        if (i21 == -1) {
                                            ConstraintWidget constraintWidget13 = (ConstraintWidget) sparseArray4.get(i21);
                                            if (constraintWidget13 != null) {
                                                type9 = type17;
                                                constraintWidget.m(type9, constraintWidget13, type17, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.u);
                                            } else {
                                                type9 = type17;
                                            }
                                            basicMeasure2 = basicMeasure3;
                                            i22 = i20;
                                            constraintWidgetContainer = constraintWidgetContainer2;
                                            dependencyGraph2 = dependencyGraph3;
                                            dimensionBehaviour9 = dimensionBehaviour15;
                                            dimensionBehaviour10 = dimensionBehaviour16;
                                            dimensionBehaviour11 = dimensionBehaviour8;
                                            type11 = type5;
                                            sparseArray2 = sparseArray;
                                            i23 = -1;
                                        } else {
                                            type9 = type17;
                                            int i60 = layoutParams.i;
                                            if (i60 != -1 && (constraintWidget4 = (ConstraintWidget) sparseArray4.get(i60)) != null) {
                                                basicMeasure2 = basicMeasure3;
                                                i22 = i20;
                                                constraintWidgetContainer = constraintWidgetContainer2;
                                                dependencyGraph2 = dependencyGraph3;
                                                dimensionBehaviour9 = dimensionBehaviour15;
                                                i23 = -1;
                                                dimensionBehaviour10 = dimensionBehaviour16;
                                                dimensionBehaviour11 = dimensionBehaviour8;
                                                ConstraintAnchor.Type type22 = type5;
                                                sparseArray2 = sparseArray;
                                                constraintWidget.m(type9, constraintWidget4, type22, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.u);
                                                type11 = type22;
                                            } else {
                                                basicMeasure2 = basicMeasure3;
                                                i22 = i20;
                                                constraintWidgetContainer = constraintWidgetContainer2;
                                                dependencyGraph2 = dependencyGraph3;
                                                i23 = -1;
                                                dimensionBehaviour9 = dimensionBehaviour15;
                                                dimensionBehaviour10 = dimensionBehaviour16;
                                                dimensionBehaviour11 = dimensionBehaviour8;
                                                type11 = type5;
                                                sparseArray2 = sparseArray;
                                            }
                                        }
                                        i24 = layoutParams.j;
                                        if (i24 == i23) {
                                            ConstraintWidget constraintWidget14 = (ConstraintWidget) sparseArray4.get(i24);
                                            if (constraintWidget14 != null) {
                                                constraintWidget.m(type11, constraintWidget14, type9, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.w);
                                            }
                                        } else {
                                            int i61 = layoutParams.k;
                                            if (i61 != i23 && (constraintWidget5 = (ConstraintWidget) sparseArray4.get(i61)) != null) {
                                                constraintWidget6 = constraintWidget;
                                                type10 = type9;
                                                constraintWidget6.m(type11, constraintWidget5, type11, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.w);
                                                i25 = layoutParams.l;
                                                if (i25 != -1) {
                                                    View view4 = (View) sparseArray2.get(i25);
                                                    ConstraintWidget constraintWidget15 = (ConstraintWidget) sparseArray4.get(layoutParams.l);
                                                    if (constraintWidget15 != null && view4 != null && (view4.getLayoutParams() instanceof LayoutParams)) {
                                                        LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                                                        layoutParams.X = true;
                                                        layoutParams2.X = true;
                                                        ConstraintAnchor.Type type23 = ConstraintAnchor.Type.n;
                                                        sparseArray = sparseArray2;
                                                        constraintWidget6.e(type23).a(constraintWidget15.e(type23), 0, -1);
                                                        constraintWidget6.w = true;
                                                        layoutParams2.k0.w = true;
                                                        constraintWidget6.e(type10).e();
                                                        constraintWidget6.e(type11).e();
                                                        if (f6 >= f4) {
                                                            constraintWidget6.T = f6;
                                                        }
                                                        f = layoutParams.A;
                                                        if (f >= f4) {
                                                            constraintWidget6.U = f;
                                                        }
                                                    }
                                                }
                                                sparseArray = sparseArray2;
                                                if (f6 >= f4) {
                                                }
                                                f = layoutParams.A;
                                                if (f >= f4) {
                                                }
                                            }
                                        }
                                        constraintWidget6 = constraintWidget;
                                        type10 = type9;
                                        i25 = layoutParams.l;
                                        if (i25 != -1) {
                                        }
                                        sparseArray = sparseArray2;
                                        if (f6 >= f4) {
                                        }
                                        f = layoutParams.A;
                                        if (f >= f4) {
                                        }
                                    }
                                }
                                i20 = childCount2;
                                if (i54 == -1) {
                                }
                                type8 = type12;
                                i21 = layoutParams.h;
                                if (i21 == -1) {
                                }
                                i24 = layoutParams.j;
                                if (i24 == i23) {
                                }
                                constraintWidget6 = constraintWidget;
                                type10 = type9;
                                i25 = layoutParams.l;
                                if (i25 != -1) {
                                }
                                sparseArray = sparseArray2;
                                if (f6 >= f4) {
                                }
                                f = layoutParams.A;
                                if (f >= f4) {
                                }
                            }
                            if (isInEditMode && ((i31 = layoutParams.P) != -1 || layoutParams.Q != -1)) {
                                int i62 = layoutParams.Q;
                                constraintWidget6.O = i31;
                                constraintWidget6.P = i62;
                            }
                            if (!layoutParams.V) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                                    if (layoutParams.S) {
                                        constraintWidget6.t(dimensionBehaviour9);
                                    } else {
                                        constraintWidget6.t(dimensionBehaviour10);
                                    }
                                    constraintWidget6.e(type7).e = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                                    constraintWidget6.e(type8).e = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                                } else {
                                    constraintWidget6.t(dimensionBehaviour9);
                                    constraintWidget6.v(0);
                                }
                            } else {
                                constraintWidget6.t(dimensionBehaviour11);
                                constraintWidget6.v(((ViewGroup.MarginLayoutParams) layoutParams).width);
                                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -2) {
                                    dimensionBehaviour12 = dimensionBehaviour17;
                                    constraintWidget6.t(dimensionBehaviour12);
                                    if (layoutParams.W) {
                                        i26 = -1;
                                        if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                                            if (layoutParams.T) {
                                                constraintWidget6.u(dimensionBehaviour9);
                                            } else {
                                                constraintWidget6.u(dimensionBehaviour10);
                                            }
                                            constraintWidget6.e(type10).e = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                                            constraintWidget6.e(type11).e = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                                        } else {
                                            constraintWidget6.u(dimensionBehaviour9);
                                            constraintWidget6.s(0);
                                        }
                                    } else {
                                        i26 = -1;
                                        constraintWidget6.u(dimensionBehaviour11);
                                        constraintWidget6.s(((ViewGroup.MarginLayoutParams) layoutParams).height);
                                        if (((ViewGroup.MarginLayoutParams) layoutParams).height == -2) {
                                            constraintWidget6.u(dimensionBehaviour12);
                                        }
                                    }
                                    str = layoutParams.B;
                                    if (str == null && str.length() != 0) {
                                        int length = str.length();
                                        int indexOf3 = str.indexOf(44);
                                        if (indexOf3 > 0 && indexOf3 < length - 1) {
                                            String substring = str.substring(0, indexOf3);
                                            if (substring.equalsIgnoreCase("W")) {
                                                i29 = 0;
                                            } else if (substring.equalsIgnoreCase("H")) {
                                                i29 = 1;
                                            } else {
                                                i29 = i26;
                                            }
                                            i30 = indexOf3 + 1;
                                        } else {
                                            i29 = i26;
                                            i30 = 0;
                                        }
                                        int indexOf4 = str.indexOf(58);
                                        if (indexOf4 >= 0 && indexOf4 < length - 1) {
                                            String substring2 = str.substring(i30, indexOf4);
                                            String substring3 = str.substring(indexOf4 + 1);
                                            if (substring2.length() > 0 && substring3.length() > 0) {
                                                try {
                                                    float parseFloat2 = Float.parseFloat(substring2);
                                                    float parseFloat3 = Float.parseFloat(substring3);
                                                    if (parseFloat2 > f4 && parseFloat3 > f4) {
                                                        if (i29 == 1) {
                                                            parseFloat = Math.abs(parseFloat3 / parseFloat2);
                                                        } else {
                                                            parseFloat = Math.abs(parseFloat2 / parseFloat3);
                                                        }
                                                    }
                                                } catch (NumberFormatException unused3) {
                                                }
                                            }
                                            parseFloat = f4;
                                        } else {
                                            String substring4 = str.substring(i30);
                                            if (substring4.length() > 0) {
                                                parseFloat = Float.parseFloat(substring4);
                                            }
                                            parseFloat = f4;
                                        }
                                        if (parseFloat > f4) {
                                            constraintWidget6.M = parseFloat;
                                            constraintWidget6.N = i29;
                                        }
                                    } else {
                                        constraintWidget6.M = f4;
                                    }
                                    float f8 = layoutParams.D;
                                    float[] fArr = constraintWidget6.a0;
                                    fArr[0] = f8;
                                    fArr[1] = layoutParams.E;
                                    constraintWidget6.Y = layoutParams.F;
                                    constraintWidget6.Z = layoutParams.G;
                                    int i63 = layoutParams.H;
                                    int i64 = layoutParams.J;
                                    i27 = layoutParams.L;
                                    f2 = layoutParams.N;
                                    constraintWidget6.j = i63;
                                    constraintWidget6.m = i64;
                                    if (i27 == Integer.MAX_VALUE) {
                                        i27 = 0;
                                    }
                                    constraintWidget6.n = i27;
                                    constraintWidget6.o = f2;
                                    if (f2 > 0.0f && f2 < 1.0f && i63 == 0) {
                                        constraintWidget6.j = 2;
                                    }
                                    int i65 = layoutParams.I;
                                    int i66 = layoutParams.K;
                                    i28 = layoutParams.M;
                                    f3 = layoutParams.O;
                                    constraintWidget6.k = i65;
                                    constraintWidget6.p = i66;
                                    if (i28 == Integer.MAX_VALUE) {
                                        i28 = 0;
                                    }
                                    constraintWidget6.q = i28;
                                    constraintWidget6.r = f3;
                                    if (f3 > 0.0f && f3 < 1.0f && i65 == 0) {
                                        constraintWidget6.k = 2;
                                    }
                                }
                            }
                            dimensionBehaviour12 = dimensionBehaviour17;
                            if (layoutParams.W) {
                            }
                            str = layoutParams.B;
                            if (str == null) {
                            }
                            constraintWidget6.M = f4;
                            float f82 = layoutParams.D;
                            float[] fArr2 = constraintWidget6.a0;
                            fArr2[0] = f82;
                            fArr2[1] = layoutParams.E;
                            constraintWidget6.Y = layoutParams.F;
                            constraintWidget6.Z = layoutParams.G;
                            int i632 = layoutParams.H;
                            int i642 = layoutParams.J;
                            i27 = layoutParams.L;
                            f2 = layoutParams.N;
                            constraintWidget6.j = i632;
                            constraintWidget6.m = i642;
                            if (i27 == Integer.MAX_VALUE) {
                            }
                            constraintWidget6.n = i27;
                            constraintWidget6.o = f2;
                            if (f2 > 0.0f) {
                                constraintWidget6.j = 2;
                            }
                            int i652 = layoutParams.I;
                            int i662 = layoutParams.K;
                            i28 = layoutParams.M;
                            f3 = layoutParams.O;
                            constraintWidget6.k = i652;
                            constraintWidget6.p = i662;
                            if (i28 == Integer.MAX_VALUE) {
                            }
                            constraintWidget6.q = i28;
                            constraintWidget6.r = f3;
                            if (f3 > 0.0f) {
                                constraintWidget6.k = 2;
                            }
                        }
                        int i67 = i22;
                        type12 = type8;
                        childCount2 = i67;
                        i38 = 1;
                        dimensionBehaviour14 = dimensionBehaviour12;
                        dimensionBehaviour15 = dimensionBehaviour9;
                        dimensionBehaviour13 = dimensionBehaviour11;
                        i48 = i19 + 1;
                        dimensionBehaviour16 = dimensionBehaviour10;
                        dependencyGraph3 = dependencyGraph2;
                        constraintWidgetContainer2 = constraintWidgetContainer;
                        basicMeasure3 = basicMeasure2;
                        sparseArray3 = sparseArray;
                        f4 = 0.0f;
                        constraintLayout = this;
                    }
                    int i672 = i22;
                    type12 = type8;
                    childCount2 = i672;
                    i38 = 1;
                    dimensionBehaviour14 = dimensionBehaviour12;
                    dimensionBehaviour15 = dimensionBehaviour9;
                    dimensionBehaviour13 = dimensionBehaviour11;
                    i48 = i19 + 1;
                    dimensionBehaviour16 = dimensionBehaviour10;
                    dependencyGraph3 = dependencyGraph2;
                    constraintWidgetContainer2 = constraintWidgetContainer;
                    basicMeasure3 = basicMeasure2;
                    sparseArray3 = sparseArray;
                    f4 = 0.0f;
                    constraintLayout = this;
                }
            } else {
                i3 = 4194304;
                z23 = z22;
            }
            BasicMeasure basicMeasure4 = basicMeasure3;
            ConstraintWidgetContainer constraintWidgetContainer3 = constraintWidgetContainer2;
            DependencyGraph dependencyGraph4 = dependencyGraph3;
            dimensionBehaviour = dimensionBehaviour13;
            dimensionBehaviour2 = dimensionBehaviour14;
            dimensionBehaviour3 = dimensionBehaviour15;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour18 = dimensionBehaviour16;
            type = type12;
            if (z23) {
                basicMeasure = basicMeasure4;
                ArrayList arrayList5 = basicMeasure.a;
                arrayList5.clear();
                constraintWidgetContainer2 = constraintWidgetContainer3;
                int size3 = constraintWidgetContainer2.d0.size();
                for (int i68 = 0; i68 < size3; i68++) {
                    ConstraintWidget constraintWidget16 = (ConstraintWidget) constraintWidgetContainer2.d0.get(i68);
                    ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr = constraintWidget16.I;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour19 = dimensionBehaviourArr[0];
                    if (dimensionBehaviour19 == dimensionBehaviour3 || dimensionBehaviour19 == dimensionBehaviour18 || (dimensionBehaviour7 = dimensionBehaviourArr[1]) == dimensionBehaviour3 || dimensionBehaviour7 == dimensionBehaviour18) {
                        arrayList5.add(constraintWidget16);
                    }
                }
                dependencyGraph = dependencyGraph4;
                dependencyGraph.b = true;
            } else {
                dependencyGraph = dependencyGraph4;
                constraintWidgetContainer2 = constraintWidgetContainer3;
                basicMeasure = basicMeasure4;
            }
        } else {
            i3 = 4194304;
            dimensionBehaviour = dimensionBehaviour13;
            dimensionBehaviour2 = dimensionBehaviour14;
            type = type12;
            basicMeasure = basicMeasure3;
            dependencyGraph = dependencyGraph3;
            dimensionBehaviour3 = dimensionBehaviour15;
        }
        int i69 = this.r;
        int mode = View.MeasureSpec.getMode(i);
        int size4 = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size5 = View.MeasureSpec.getSize(i2);
        int max = Math.max(0, getPaddingTop());
        ConstraintWidget.DimensionBehaviour dimensionBehaviour20 = dimensionBehaviour;
        int max2 = Math.max(0, getPaddingBottom());
        int i70 = max + max2;
        int paddingWidth = getPaddingWidth();
        Measurer measurer3 = this.x;
        measurer3.b = max;
        measurer3.c = max2;
        measurer3.d = paddingWidth;
        measurer3.e = i70;
        measurer3.f = i;
        measurer3.g = i2;
        int max3 = Math.max(0, getPaddingStart());
        int max4 = Math.max(0, getPaddingEnd());
        if (max3 <= 0 && max4 <= 0) {
            i4 = Math.max(0, getPaddingLeft());
        } else if ((getContext().getApplicationInfo().flags & i3) != 0 && 1 == getLayoutDirection()) {
            i4 = max4;
        } else {
            i4 = max3;
        }
        int i71 = size4 - paddingWidth;
        int i72 = size5 - i70;
        ConstraintAnchor.Type type24 = type11;
        int i73 = measurer3.e;
        int i74 = measurer3.d;
        int childCount3 = getChildCount();
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode != 1073741824) {
                    i5 = i74;
                    type2 = type;
                    dimensionBehaviour4 = dimensionBehaviour20;
                    i6 = 0;
                } else {
                    i5 = i74;
                    type2 = type;
                    i7 = Integer.MIN_VALUE;
                    i6 = Math.min(this.o - i74, i71);
                    dimensionBehaviour4 = dimensionBehaviour20;
                    if (mode2 != i7) {
                        if (mode2 != 0) {
                            if (mode2 != 1073741824) {
                                dimensionBehaviour5 = dimensionBehaviour2;
                                i9 = i72;
                                dimensionBehaviour6 = dimensionBehaviour20;
                                i8 = 0;
                            } else {
                                i8 = Math.min(this.p - i73, i72);
                                dimensionBehaviour5 = dimensionBehaviour2;
                                i9 = i72;
                                dimensionBehaviour6 = dimensionBehaviour20;
                            }
                        } else if (childCount3 == 0) {
                            dimensionBehaviour5 = dimensionBehaviour2;
                            i9 = i72;
                            i8 = Math.max(0, this.n);
                            dimensionBehaviour6 = dimensionBehaviour5;
                        } else {
                            dimensionBehaviour5 = dimensionBehaviour2;
                            i8 = 0;
                            i9 = i72;
                            dimensionBehaviour6 = dimensionBehaviour5;
                        }
                    } else {
                        dimensionBehaviour5 = dimensionBehaviour2;
                        if (childCount3 == 0) {
                            i8 = Math.max(0, this.n);
                            i9 = i72;
                            dimensionBehaviour6 = dimensionBehaviour5;
                        } else {
                            i8 = i72;
                            i9 = i8;
                            dimensionBehaviour6 = dimensionBehaviour5;
                        }
                    }
                    j = constraintWidgetContainer2.j();
                    int[] iArr2 = constraintWidgetContainer2.u;
                    if (i6 != j && i8 == constraintWidgetContainer2.g()) {
                        c = 1;
                    } else {
                        dependencyGraph.c = true;
                        c = 1;
                    }
                    constraintWidgetContainer2.O = 0;
                    constraintWidgetContainer2.P = 0;
                    iArr2[0] = this.o - i5;
                    iArr2[c] = this.p - i73;
                    constraintWidgetContainer2.R = 0;
                    constraintWidgetContainer2.S = 0;
                    constraintWidgetContainer2.t(dimensionBehaviour4);
                    constraintWidgetContainer2.v(i6);
                    constraintWidgetContainer2.u(dimensionBehaviour6);
                    constraintWidgetContainer2.s(i8);
                    i10 = this.m - i5;
                    if (i10 < 0) {
                        constraintWidgetContainer2.R = 0;
                    } else {
                        constraintWidgetContainer2.R = i10;
                    }
                    i11 = this.n - i73;
                    if (i11 < 0) {
                        constraintWidgetContainer2.S = 0;
                    } else {
                        constraintWidgetContainer2.S = i11;
                    }
                    constraintWidgetContainer2.j0 = i4;
                    constraintWidgetContainer2.k0 = max;
                    ConstraintWidgetContainer constraintWidgetContainer4 = basicMeasure.c;
                    arrayList = basicMeasure.a;
                    BasicMeasure.Measurer measurer4 = constraintWidgetContainer2.g0;
                    int size6 = constraintWidgetContainer2.d0.size();
                    int j2 = constraintWidgetContainer2.j();
                    int g = constraintWidgetContainer2.g();
                    if ((i69 & 128) == 128) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && (i69 & 64) != 64) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (z3) {
                        int i75 = 0;
                        while (i75 < size6) {
                            boolean z28 = z3;
                            ConstraintWidget constraintWidget17 = (ConstraintWidget) constraintWidgetContainer2.d0.get(i75);
                            iArr = iArr2;
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr2 = constraintWidget17.I;
                            if (dimensionBehaviourArr2[0] == dimensionBehaviour3) {
                                z19 = true;
                            } else {
                                z19 = false;
                            }
                            if (dimensionBehaviourArr2[1] == dimensionBehaviour3) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            if (z19 && z20) {
                                if (constraintWidget17.M > 0.0f) {
                                    z21 = true;
                                    if ((!constraintWidget17.o() && z21) || ((constraintWidget17.p() && z21) || constraintWidget17.o() || constraintWidget17.p())) {
                                        i12 = 1073741824;
                                        z4 = false;
                                        break;
                                    } else {
                                        i75++;
                                        z3 = z28;
                                        iArr2 = iArr;
                                    }
                                }
                            }
                            z21 = false;
                            if (!constraintWidget17.o()) {
                            }
                            i75++;
                            z3 = z28;
                            iArr2 = iArr;
                        }
                    }
                    z4 = z3;
                    iArr = iArr2;
                    i12 = 1073741824;
                    if ((mode != i12 && mode2 == i12) || z2) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (z4 & z5) {
                        int min = Math.min(iArr[0], i71);
                        int min2 = Math.min(iArr[1], i9);
                        int i76 = 1073741824;
                        if (mode == 1073741824) {
                            if (constraintWidgetContainer2.j() != min) {
                                constraintWidgetContainer2.v(min);
                                z15 = true;
                                dependencyGraph.b = true;
                            } else {
                                z15 = true;
                            }
                            i76 = 1073741824;
                        } else {
                            z15 = true;
                        }
                        if (mode2 == i76) {
                            if (constraintWidgetContainer2.g() != min2) {
                                constraintWidgetContainer2.s(min2);
                                dependencyGraph.b = z15;
                            }
                            i76 = 1073741824;
                        }
                        if (mode == i76 && mode2 == i76) {
                            z6 = dependencyGraph.e(z2);
                            measurer = measurer4;
                            i13 = size6;
                            i14 = 2;
                            i18 = 1073741824;
                        } else {
                            ConstraintWidgetContainer constraintWidgetContainer5 = dependencyGraph.a;
                            if (dependencyGraph.b) {
                                Iterator it = constraintWidgetContainer5.d0.iterator();
                                while (it.hasNext()) {
                                    ConstraintWidget constraintWidget18 = (ConstraintWidget) it.next();
                                    constraintWidget18.a = false;
                                    int i77 = size6;
                                    HorizontalWidgetRun horizontalWidgetRun = constraintWidget18.d;
                                    BasicMeasure.Measurer measurer5 = measurer4;
                                    horizontalWidgetRun.e.j = false;
                                    horizontalWidgetRun.g = false;
                                    horizontalWidgetRun.n();
                                    VerticalWidgetRun verticalWidgetRun = constraintWidget18.e;
                                    verticalWidgetRun.e.j = false;
                                    verticalWidgetRun.g = false;
                                    verticalWidgetRun.m();
                                    it = it;
                                    size6 = i77;
                                    measurer4 = measurer5;
                                }
                                measurer = measurer4;
                                i13 = size6;
                                i17 = 0;
                                constraintWidgetContainer5.a = false;
                                HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer5.d;
                                horizontalWidgetRun2.e.j = false;
                                horizontalWidgetRun2.g = false;
                                horizontalWidgetRun2.n();
                                VerticalWidgetRun verticalWidgetRun2 = constraintWidgetContainer5.e;
                                verticalWidgetRun2.e.j = false;
                                verticalWidgetRun2.g = false;
                                verticalWidgetRun2.m();
                                dependencyGraph.c();
                            } else {
                                measurer = measurer4;
                                i13 = size6;
                                i17 = 0;
                            }
                            dependencyGraph.b(dependencyGraph.d);
                            constraintWidgetContainer5.O = i17;
                            constraintWidgetContainer5.P = i17;
                            constraintWidgetContainer5.d.h.d(i17);
                            constraintWidgetContainer5.e.h.d(i17);
                            i18 = 1073741824;
                            if (mode == 1073741824) {
                                z16 = dependencyGraph.f(i17, z2);
                                i14 = 1;
                            } else {
                                i14 = 0;
                                z16 = true;
                            }
                            if (mode2 == 1073741824) {
                                z6 = dependencyGraph.f(1, z2) & z16;
                                i14++;
                            } else {
                                z6 = z16;
                            }
                        }
                        if (z6) {
                            if (mode == i18) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            if (mode2 == i18) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            constraintWidgetContainer2.w(z17, z18);
                        }
                    } else {
                        measurer = measurer4;
                        i13 = size6;
                        z6 = false;
                        i14 = 0;
                    }
                    if (z6 || i14 != 2) {
                        if (i13 > 0) {
                            int size7 = constraintWidgetContainer2.d0.size();
                            BasicMeasure.Measurer measurer6 = constraintWidgetContainer2.g0;
                            for (int i78 = 0; i78 < size7; i78++) {
                                ConstraintWidget constraintWidget19 = (ConstraintWidget) constraintWidgetContainer2.d0.get(i78);
                                if (!(constraintWidget19 instanceof androidx.constraintlayout.solver.widgets.Guideline) && (!constraintWidget19.d.e.j || !constraintWidget19.e.e.j)) {
                                    ConstraintWidget.DimensionBehaviour f9 = constraintWidget19.f(0);
                                    ConstraintWidget.DimensionBehaviour f10 = constraintWidget19.f(1);
                                    if (f9 != dimensionBehaviour3 || constraintWidget19.j == 1 || f10 != dimensionBehaviour3 || constraintWidget19.k == 1) {
                                        basicMeasure.a(measurer6, constraintWidget19, false);
                                    }
                                }
                            }
                            ConstraintLayout constraintLayout2 = ((Measurer) measurer6).a;
                            ArrayList arrayList6 = constraintLayout2.k;
                            int childCount4 = constraintLayout2.getChildCount();
                            for (int i79 = 0; i79 < childCount4; i79++) {
                                constraintLayout2.getChildAt(i79);
                            }
                            int size8 = arrayList6.size();
                            if (size8 > 0) {
                                for (int i80 = 0; i80 < size8; i80++) {
                                    ((ConstraintHelper) arrayList6.get(i80)).getClass();
                                }
                            }
                        }
                        i15 = constraintWidgetContainer2.p0;
                        size = arrayList.size();
                        if (i13 > 0) {
                            basicMeasure.b(constraintWidgetContainer2, j2, g);
                        }
                        if (size > 0) {
                            ConstraintWidget.DimensionBehaviour[] dimensionBehaviourArr3 = constraintWidgetContainer2.I;
                            z7 = false;
                            ConstraintWidget.DimensionBehaviour dimensionBehaviour21 = dimensionBehaviour5;
                            if (dimensionBehaviourArr3[0] == dimensionBehaviour21) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            if (dimensionBehaviourArr3[1] == dimensionBehaviour21) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            int max5 = Math.max(constraintWidgetContainer2.j(), constraintWidgetContainer4.R);
                            int max6 = Math.max(constraintWidgetContainer2.g(), constraintWidgetContainer4.S);
                            for (int i81 = 0; i81 < size; i81++) {
                            }
                            int i82 = max5;
                            int i83 = 0;
                            boolean z29 = false;
                            while (i83 < 2) {
                                int i84 = i82;
                                boolean z30 = z29;
                                int i85 = 0;
                                while (i85 < size) {
                                    ConstraintWidget constraintWidget20 = (ConstraintWidget) arrayList.get(i85);
                                    if ((constraintWidget20 instanceof Helper) || (constraintWidget20 instanceof androidx.constraintlayout.solver.widgets.Guideline)) {
                                        arrayList2 = arrayList;
                                    } else {
                                        arrayList2 = arrayList;
                                        if (constraintWidget20.W != 8 && (!constraintWidget20.d.e.j || !constraintWidget20.e.e.j)) {
                                            int j3 = constraintWidget20.j();
                                            int g2 = constraintWidget20.g();
                                            i16 = size;
                                            int i86 = constraintWidget20.Q;
                                            BasicMeasure.Measurer measurer7 = measurer;
                                            z13 = z9;
                                            z14 = z10;
                                            z30 |= basicMeasure.a(measurer7, constraintWidget20, true);
                                            int j4 = constraintWidget20.j();
                                            measurer2 = measurer7;
                                            int g3 = constraintWidget20.g();
                                            if (j4 != j3) {
                                                constraintWidget20.v(j4);
                                                if (z13 && constraintWidget20.k() + constraintWidget20.K > i84) {
                                                    type3 = type2;
                                                    i84 = Math.max(i84, constraintWidget20.e(type3).b() + constraintWidget20.k() + constraintWidget20.K);
                                                } else {
                                                    type3 = type2;
                                                }
                                                z30 = true;
                                            } else {
                                                type3 = type2;
                                            }
                                            if (g3 != g2) {
                                                constraintWidget20.s(g3);
                                                if (z14 && constraintWidget20.l() + constraintWidget20.L > max6) {
                                                    type4 = type24;
                                                    max6 = Math.max(max6, constraintWidget20.e(type4).b() + constraintWidget20.l() + constraintWidget20.L);
                                                } else {
                                                    type4 = type24;
                                                }
                                                z30 = true;
                                            } else {
                                                type4 = type24;
                                            }
                                            if (constraintWidget20.w && i86 != constraintWidget20.Q) {
                                                z30 = true;
                                            }
                                            i85++;
                                            type2 = type3;
                                            type24 = type4;
                                            arrayList = arrayList2;
                                            size = i16;
                                            z10 = z14;
                                            z9 = z13;
                                            measurer = measurer2;
                                        }
                                    }
                                    i16 = size;
                                    z14 = z10;
                                    type3 = type2;
                                    measurer2 = measurer;
                                    type4 = type24;
                                    z13 = z9;
                                    i85++;
                                    type2 = type3;
                                    type24 = type4;
                                    arrayList = arrayList2;
                                    size = i16;
                                    z10 = z14;
                                    z9 = z13;
                                    measurer = measurer2;
                                }
                                ArrayList arrayList7 = arrayList;
                                int i87 = size;
                                boolean z31 = z10;
                                ConstraintAnchor.Type type25 = type2;
                                BasicMeasure.Measurer measurer8 = measurer;
                                ConstraintAnchor.Type type26 = type24;
                                boolean z32 = z9;
                                if (z30) {
                                    basicMeasure.b(constraintWidgetContainer2, j2, g);
                                    z29 = false;
                                } else {
                                    z29 = z30;
                                }
                                i83++;
                                type2 = type25;
                                type24 = type26;
                                i82 = i84;
                                arrayList = arrayList7;
                                size = i87;
                                z10 = z31;
                                z9 = z32;
                                measurer = measurer8;
                            }
                            if (z29) {
                                basicMeasure.b(constraintWidgetContainer2, j2, g);
                                if (constraintWidgetContainer2.j() < i82) {
                                    constraintWidgetContainer2.v(i82);
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (constraintWidgetContainer2.g() < max6) {
                                    constraintWidgetContainer2.s(max6);
                                    z12 = true;
                                } else {
                                    z12 = z11;
                                }
                                if (z12) {
                                    basicMeasure.b(constraintWidgetContainer2, j2, g);
                                }
                            }
                        } else {
                            z7 = false;
                        }
                        constraintWidgetContainer2.p0 = i15;
                        if ((i15 & 256) == 256) {
                            z8 = true;
                        } else {
                            z8 = z7;
                        }
                        LinearSystem.p = z8;
                    }
                    e(i, i2, constraintWidgetContainer2.j(), constraintWidgetContainer2.g(), constraintWidgetContainer2.q0, constraintWidgetContainer2.r0);
                }
            } else if (childCount3 == 0) {
                i5 = i74;
                dimensionBehaviour4 = dimensionBehaviour2;
                type2 = type;
                i6 = Math.max(0, this.m);
            } else {
                i5 = i74;
                i6 = 0;
                dimensionBehaviour4 = dimensionBehaviour2;
                type2 = type;
            }
        } else {
            i5 = i74;
            if (childCount3 == 0) {
                i6 = Math.max(0, this.m);
                type2 = type;
                i7 = Integer.MIN_VALUE;
                dimensionBehaviour4 = dimensionBehaviour2;
                if (mode2 != i7) {
                }
                j = constraintWidgetContainer2.j();
                int[] iArr22 = constraintWidgetContainer2.u;
                if (i6 != j) {
                }
                dependencyGraph.c = true;
                c = 1;
                constraintWidgetContainer2.O = 0;
                constraintWidgetContainer2.P = 0;
                iArr22[0] = this.o - i5;
                iArr22[c] = this.p - i73;
                constraintWidgetContainer2.R = 0;
                constraintWidgetContainer2.S = 0;
                constraintWidgetContainer2.t(dimensionBehaviour4);
                constraintWidgetContainer2.v(i6);
                constraintWidgetContainer2.u(dimensionBehaviour6);
                constraintWidgetContainer2.s(i8);
                i10 = this.m - i5;
                if (i10 < 0) {
                }
                i11 = this.n - i73;
                if (i11 < 0) {
                }
                constraintWidgetContainer2.j0 = i4;
                constraintWidgetContainer2.k0 = max;
                ConstraintWidgetContainer constraintWidgetContainer42 = basicMeasure.c;
                arrayList = basicMeasure.a;
                BasicMeasure.Measurer measurer42 = constraintWidgetContainer2.g0;
                int size62 = constraintWidgetContainer2.d0.size();
                int j22 = constraintWidgetContainer2.j();
                int g4 = constraintWidgetContainer2.g();
                if ((i69 & 128) == 128) {
                }
                if (z2) {
                }
                z3 = true;
                if (z3) {
                }
                z4 = z3;
                iArr = iArr22;
                i12 = 1073741824;
                if (mode != i12) {
                }
                z5 = false;
                if (z4 & z5) {
                }
                if (z6) {
                }
                if (i13 > 0) {
                }
                i15 = constraintWidgetContainer2.p0;
                size = arrayList.size();
                if (i13 > 0) {
                }
                if (size > 0) {
                }
                constraintWidgetContainer2.p0 = i15;
                if ((i15 & 256) == 256) {
                }
                LinearSystem.p = z8;
                e(i, i2, constraintWidgetContainer2.j(), constraintWidgetContainer2.g(), constraintWidgetContainer2.q0, constraintWidgetContainer2.r0);
            }
            dimensionBehaviour4 = dimensionBehaviour2;
            i6 = i71;
            type2 = type;
        }
        i7 = Integer.MIN_VALUE;
        if (mode2 != i7) {
        }
        j = constraintWidgetContainer2.j();
        int[] iArr222 = constraintWidgetContainer2.u;
        if (i6 != j) {
        }
        dependencyGraph.c = true;
        c = 1;
        constraintWidgetContainer2.O = 0;
        constraintWidgetContainer2.P = 0;
        iArr222[0] = this.o - i5;
        iArr222[c] = this.p - i73;
        constraintWidgetContainer2.R = 0;
        constraintWidgetContainer2.S = 0;
        constraintWidgetContainer2.t(dimensionBehaviour4);
        constraintWidgetContainer2.v(i6);
        constraintWidgetContainer2.u(dimensionBehaviour6);
        constraintWidgetContainer2.s(i8);
        i10 = this.m - i5;
        if (i10 < 0) {
        }
        i11 = this.n - i73;
        if (i11 < 0) {
        }
        constraintWidgetContainer2.j0 = i4;
        constraintWidgetContainer2.k0 = max;
        ConstraintWidgetContainer constraintWidgetContainer422 = basicMeasure.c;
        arrayList = basicMeasure.a;
        BasicMeasure.Measurer measurer422 = constraintWidgetContainer2.g0;
        int size622 = constraintWidgetContainer2.d0.size();
        int j222 = constraintWidgetContainer2.j();
        int g42 = constraintWidgetContainer2.g();
        if ((i69 & 128) == 128) {
        }
        if (z2) {
        }
        z3 = true;
        if (z3) {
        }
        z4 = z3;
        iArr = iArr222;
        i12 = 1073741824;
        if (mode != i12) {
        }
        z5 = false;
        if (z4 & z5) {
        }
        if (z6) {
        }
        if (i13 > 0) {
        }
        i15 = constraintWidgetContainer2.p0;
        size = arrayList.size();
        if (i13 > 0) {
        }
        if (size > 0) {
        }
        constraintWidgetContainer2.p0 = i15;
        if ((i15 & 256) == 256) {
        }
        LinearSystem.p = z8;
        e(i, i2, constraintWidgetContainer2.j(), constraintWidgetContainer2.g(), constraintWidgetContainer2.q0, constraintWidgetContainer2.r0);
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget b = b(view);
        if ((view instanceof Guideline) && !(b instanceof androidx.constraintlayout.solver.widgets.Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.solver.widgets.Guideline guideline = new androidx.constraintlayout.solver.widgets.Guideline();
            layoutParams.k0 = guideline;
            layoutParams.Y = true;
            guideline.y(layoutParams.R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.d();
            ((LayoutParams) view.getLayoutParams()).Z = true;
            ArrayList arrayList = this.k;
            if (!arrayList.contains(constraintHelper)) {
                arrayList.add(constraintHelper);
            }
        }
        this.j.put(view.getId(), view);
        this.q = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.j.remove(view.getId());
        ConstraintWidget b = b(view);
        this.l.d0.remove(b);
        b.J = null;
        this.k.remove(view);
        this.q = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.q = true;
        super.requestLayout();
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.s = constraintSet;
    }

    @Override // android.view.View
    public void setId(int i) {
        int id = getId();
        SparseArray sparseArray = this.j;
        sparseArray.remove(id);
        super.setId(i);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.p) {
            return;
        }
        this.p = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.o) {
            return;
        }
        this.o = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.n) {
            return;
        }
        this.n = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.m) {
            return;
        }
        this.m = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        ConstraintLayoutStates constraintLayoutStates = this.t;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.getClass();
        }
    }

    public void setOptimizationLevel(int i) {
        boolean z;
        this.r = i;
        this.l.p0 = i;
        if ((i & 256) == 256) {
            z = true;
        } else {
            z = false;
        }
        LinearSystem.p = z;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new SparseArray();
        this.k = new ArrayList(4);
        this.l = new ConstraintWidgetContainer();
        this.m = 0;
        this.n = 0;
        this.o = Integer.MAX_VALUE;
        this.p = Integer.MAX_VALUE;
        this.q = true;
        this.r = 263;
        this.s = null;
        this.t = null;
        this.u = -1;
        this.v = new HashMap();
        this.w = new SparseArray();
        this.x = new Measurer(this);
        c(attributeSet, i);
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams.a = -1;
        marginLayoutParams.b = -1;
        marginLayoutParams.c = -1.0f;
        marginLayoutParams.d = -1;
        marginLayoutParams.e = -1;
        marginLayoutParams.f = -1;
        marginLayoutParams.g = -1;
        marginLayoutParams.h = -1;
        marginLayoutParams.i = -1;
        marginLayoutParams.j = -1;
        marginLayoutParams.k = -1;
        marginLayoutParams.l = -1;
        marginLayoutParams.m = -1;
        marginLayoutParams.n = 0;
        marginLayoutParams.o = 0.0f;
        marginLayoutParams.p = -1;
        marginLayoutParams.q = -1;
        marginLayoutParams.r = -1;
        marginLayoutParams.s = -1;
        marginLayoutParams.t = -1;
        marginLayoutParams.u = -1;
        marginLayoutParams.v = -1;
        marginLayoutParams.w = -1;
        marginLayoutParams.x = -1;
        marginLayoutParams.y = -1;
        marginLayoutParams.z = 0.5f;
        marginLayoutParams.A = 0.5f;
        marginLayoutParams.B = null;
        marginLayoutParams.C = 1;
        marginLayoutParams.D = -1.0f;
        marginLayoutParams.E = -1.0f;
        marginLayoutParams.F = 0;
        marginLayoutParams.G = 0;
        marginLayoutParams.H = 0;
        marginLayoutParams.I = 0;
        marginLayoutParams.J = 0;
        marginLayoutParams.K = 0;
        marginLayoutParams.L = 0;
        marginLayoutParams.M = 0;
        marginLayoutParams.N = 1.0f;
        marginLayoutParams.O = 1.0f;
        marginLayoutParams.P = -1;
        marginLayoutParams.Q = -1;
        marginLayoutParams.R = -1;
        marginLayoutParams.S = false;
        marginLayoutParams.T = false;
        marginLayoutParams.U = null;
        marginLayoutParams.V = true;
        marginLayoutParams.W = true;
        marginLayoutParams.X = false;
        marginLayoutParams.Y = false;
        marginLayoutParams.Z = false;
        marginLayoutParams.a0 = -1;
        marginLayoutParams.b0 = -1;
        marginLayoutParams.c0 = -1;
        marginLayoutParams.d0 = -1;
        marginLayoutParams.e0 = -1;
        marginLayoutParams.f0 = -1;
        marginLayoutParams.g0 = 0.5f;
        marginLayoutParams.k0 = new ConstraintWidget();
        return marginLayoutParams;
    }
}
