package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.u2;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintSet {
    public static final int[] d = {0, 4, 8};
    public static final SparseIntArray e;
    public final HashMap a = new HashMap();
    public final boolean b = true;
    public final HashMap c = new HashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Constraint {
        public int a;
        public final PropertySet b;
        public final Motion c;
        public final Layout d;
        public final Transform e;
        public HashMap f;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.widget.ConstraintSet$PropertySet, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintSet$Motion] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintSet$Layout] */
        /* JADX WARN: Type inference failed for: r0v3, types: [androidx.constraintlayout.widget.ConstraintSet$Transform, java.lang.Object] */
        public Constraint() {
            ?? obj = new Object();
            obj.a = 0;
            obj.b = 0;
            obj.c = 1.0f;
            obj.d = Float.NaN;
            this.b = obj;
            ?? obj2 = new Object();
            obj2.a = -1;
            obj2.b = -1;
            obj2.c = Float.NaN;
            obj2.d = Float.NaN;
            this.c = obj2;
            ?? obj3 = new Object();
            obj3.a = false;
            obj3.d = -1;
            obj3.e = -1;
            obj3.f = -1.0f;
            obj3.g = -1;
            obj3.h = -1;
            obj3.i = -1;
            obj3.j = -1;
            obj3.k = -1;
            obj3.l = -1;
            obj3.m = -1;
            obj3.n = -1;
            obj3.o = -1;
            obj3.p = -1;
            obj3.q = -1;
            obj3.r = -1;
            obj3.s = -1;
            obj3.t = 0.5f;
            obj3.u = 0.5f;
            obj3.v = null;
            obj3.w = -1;
            obj3.x = 0;
            obj3.y = 0.0f;
            obj3.z = -1;
            obj3.A = -1;
            obj3.B = -1;
            obj3.C = -1;
            obj3.D = -1;
            obj3.E = -1;
            obj3.F = -1;
            obj3.G = -1;
            obj3.H = -1;
            obj3.I = -1;
            obj3.J = -1;
            obj3.K = -1;
            obj3.L = -1;
            obj3.M = -1;
            obj3.N = -1;
            obj3.O = -1.0f;
            obj3.P = -1.0f;
            obj3.Q = 0;
            obj3.R = 0;
            obj3.S = 0;
            obj3.T = 0;
            obj3.U = -1;
            obj3.V = -1;
            obj3.W = -1;
            obj3.X = -1;
            obj3.Y = 1.0f;
            obj3.Z = 1.0f;
            obj3.a0 = -1;
            obj3.b0 = 0;
            obj3.c0 = -1;
            obj3.g0 = false;
            obj3.h0 = false;
            obj3.i0 = true;
            this.d = obj3;
            ?? obj4 = new Object();
            obj4.a = 0.0f;
            obj4.b = 0.0f;
            obj4.c = 0.0f;
            obj4.d = 1.0f;
            obj4.e = 1.0f;
            obj4.f = Float.NaN;
            obj4.g = Float.NaN;
            obj4.h = 0.0f;
            obj4.i = 0.0f;
            obj4.j = 0.0f;
            obj4.k = false;
            obj4.l = 0.0f;
            this.e = obj4;
            this.f = new HashMap();
        }

        public final void a(ConstraintLayout.LayoutParams layoutParams) {
            Layout layout = this.d;
            layoutParams.d = layout.g;
            layoutParams.e = layout.h;
            layoutParams.f = layout.i;
            layoutParams.g = layout.j;
            layoutParams.h = layout.k;
            layoutParams.i = layout.l;
            layoutParams.j = layout.m;
            layoutParams.k = layout.n;
            layoutParams.l = layout.o;
            layoutParams.p = layout.p;
            layoutParams.q = layout.q;
            layoutParams.r = layout.r;
            layoutParams.s = layout.s;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = layout.C;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = layout.D;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = layout.E;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = layout.F;
            layoutParams.x = layout.N;
            layoutParams.y = layout.M;
            layoutParams.u = layout.J;
            layoutParams.w = layout.L;
            layoutParams.z = layout.t;
            layoutParams.A = layout.u;
            layoutParams.m = layout.w;
            layoutParams.n = layout.x;
            layoutParams.o = layout.y;
            layoutParams.B = layout.v;
            layoutParams.P = layout.z;
            layoutParams.Q = layout.A;
            layoutParams.E = layout.O;
            layoutParams.D = layout.P;
            layoutParams.G = layout.R;
            layoutParams.F = layout.Q;
            layoutParams.S = layout.g0;
            layoutParams.T = layout.h0;
            layoutParams.H = layout.S;
            layoutParams.I = layout.T;
            layoutParams.L = layout.U;
            layoutParams.M = layout.V;
            layoutParams.J = layout.W;
            layoutParams.K = layout.X;
            layoutParams.N = layout.Y;
            layoutParams.O = layout.Z;
            layoutParams.R = layout.B;
            layoutParams.c = layout.f;
            layoutParams.a = layout.d;
            layoutParams.b = layout.e;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = layout.b;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = layout.c;
            String str = layout.f0;
            if (str != null) {
                layoutParams.U = str;
            }
            layoutParams.setMarginStart(layout.H);
            layoutParams.setMarginEnd(layout.G);
            layoutParams.a();
        }

        public final Object clone() {
            Constraint constraint = new Constraint();
            Layout layout = constraint.d;
            layout.getClass();
            Layout layout2 = this.d;
            layout.a = layout2.a;
            layout.b = layout2.b;
            layout.c = layout2.c;
            layout.d = layout2.d;
            layout.e = layout2.e;
            layout.f = layout2.f;
            layout.g = layout2.g;
            layout.h = layout2.h;
            layout.i = layout2.i;
            layout.j = layout2.j;
            layout.k = layout2.k;
            layout.l = layout2.l;
            layout.m = layout2.m;
            layout.n = layout2.n;
            layout.o = layout2.o;
            layout.p = layout2.p;
            layout.q = layout2.q;
            layout.r = layout2.r;
            layout.s = layout2.s;
            layout.t = layout2.t;
            layout.u = layout2.u;
            layout.v = layout2.v;
            layout.w = layout2.w;
            layout.x = layout2.x;
            layout.y = layout2.y;
            layout.z = layout2.z;
            layout.A = layout2.A;
            layout.B = layout2.B;
            layout.C = layout2.C;
            layout.D = layout2.D;
            layout.E = layout2.E;
            layout.F = layout2.F;
            layout.G = layout2.G;
            layout.H = layout2.H;
            layout.I = layout2.I;
            layout.J = layout2.J;
            layout.K = layout2.K;
            layout.L = layout2.L;
            layout.M = layout2.M;
            layout.N = layout2.N;
            layout.O = layout2.O;
            layout.P = layout2.P;
            layout.Q = layout2.Q;
            layout.R = layout2.R;
            layout.S = layout2.S;
            layout.T = layout2.T;
            layout.U = layout2.U;
            layout.V = layout2.V;
            layout.W = layout2.W;
            layout.X = layout2.X;
            layout.Y = layout2.Y;
            layout.Z = layout2.Z;
            layout.a0 = layout2.a0;
            layout.b0 = layout2.b0;
            layout.c0 = layout2.c0;
            layout.f0 = layout2.f0;
            int[] iArr = layout2.d0;
            if (iArr != null) {
                layout.d0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                layout.d0 = null;
            }
            layout.e0 = layout2.e0;
            layout.g0 = layout2.g0;
            layout.h0 = layout2.h0;
            layout.i0 = layout2.i0;
            Motion motion = constraint.c;
            motion.getClass();
            Motion motion2 = this.c;
            motion2.getClass();
            motion.a = motion2.a;
            motion.b = motion2.b;
            motion.d = motion2.d;
            motion.c = motion2.c;
            PropertySet propertySet = this.b;
            int i = propertySet.a;
            PropertySet propertySet2 = constraint.b;
            propertySet2.a = i;
            propertySet2.c = propertySet.c;
            propertySet2.d = propertySet.d;
            propertySet2.b = propertySet.b;
            Transform transform = constraint.e;
            transform.getClass();
            Transform transform2 = this.e;
            transform2.getClass();
            transform.a = transform2.a;
            transform.b = transform2.b;
            transform.c = transform2.c;
            transform.d = transform2.d;
            transform.e = transform2.e;
            transform.f = transform2.f;
            transform.g = transform2.g;
            transform.h = transform2.h;
            transform.i = transform2.i;
            transform.j = transform2.j;
            transform.k = transform2.k;
            transform.l = transform2.l;
            constraint.a = this.a;
            return constraint;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Layout {
        public static final SparseIntArray j0;
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public float O;
        public float P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public int U;
        public int V;
        public int W;
        public int X;
        public float Y;
        public float Z;
        public boolean a;
        public int a0;
        public int b;
        public int b0;
        public int c;
        public int c0;
        public int d;
        public int[] d0;
        public int e;
        public String e0;
        public float f;
        public String f0;
        public int g;
        public boolean g0;
        public int h;
        public boolean h0;
        public int i;
        public boolean i0;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public float t;
        public float u;
        public String v;
        public int w;
        public int x;
        public float y;
        public int z;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            j0 = sparseIntArray;
            sparseIntArray.append(38, 24);
            sparseIntArray.append(39, 25);
            sparseIntArray.append(41, 28);
            sparseIntArray.append(42, 29);
            sparseIntArray.append(47, 35);
            sparseIntArray.append(46, 34);
            sparseIntArray.append(20, 4);
            sparseIntArray.append(19, 3);
            sparseIntArray.append(17, 1);
            sparseIntArray.append(55, 6);
            sparseIntArray.append(56, 7);
            sparseIntArray.append(27, 17);
            sparseIntArray.append(28, 18);
            sparseIntArray.append(29, 19);
            sparseIntArray.append(0, 26);
            sparseIntArray.append(43, 31);
            sparseIntArray.append(44, 32);
            sparseIntArray.append(26, 10);
            sparseIntArray.append(25, 9);
            sparseIntArray.append(59, 13);
            sparseIntArray.append(62, 16);
            sparseIntArray.append(60, 14);
            sparseIntArray.append(57, 11);
            sparseIntArray.append(61, 15);
            sparseIntArray.append(58, 12);
            sparseIntArray.append(50, 38);
            sparseIntArray.append(36, 37);
            sparseIntArray.append(35, 39);
            sparseIntArray.append(49, 40);
            sparseIntArray.append(34, 20);
            sparseIntArray.append(48, 36);
            sparseIntArray.append(24, 5);
            sparseIntArray.append(37, 76);
            sparseIntArray.append(45, 76);
            sparseIntArray.append(40, 76);
            sparseIntArray.append(18, 76);
            sparseIntArray.append(16, 76);
            sparseIntArray.append(3, 23);
            sparseIntArray.append(5, 27);
            sparseIntArray.append(7, 30);
            sparseIntArray.append(8, 8);
            sparseIntArray.append(4, 33);
            sparseIntArray.append(6, 2);
            sparseIntArray.append(1, 22);
            sparseIntArray.append(2, 21);
            sparseIntArray.append(21, 61);
            sparseIntArray.append(23, 62);
            sparseIntArray.append(22, 63);
            sparseIntArray.append(54, 69);
            sparseIntArray.append(33, 70);
            sparseIntArray.append(12, 71);
            sparseIntArray.append(10, 72);
            sparseIntArray.append(11, 73);
            sparseIntArray.append(13, 74);
            sparseIntArray.append(9, 75);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.d);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                SparseIntArray sparseIntArray = j0;
                int i2 = sparseIntArray.get(index);
                if (i2 != 80) {
                    if (i2 != 81) {
                        switch (i2) {
                            case 1:
                                this.o = ConstraintSet.f(obtainStyledAttributes, index, this.o);
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                this.F = obtainStyledAttributes.getDimensionPixelSize(index, this.F);
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                this.n = ConstraintSet.f(obtainStyledAttributes, index, this.n);
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                this.m = ConstraintSet.f(obtainStyledAttributes, index, this.m);
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                this.v = obtainStyledAttributes.getString(index);
                                break;
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                this.z = obtainStyledAttributes.getDimensionPixelOffset(index, this.z);
                                break;
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                this.A = obtainStyledAttributes.getDimensionPixelOffset(index, this.A);
                                break;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                this.G = obtainStyledAttributes.getDimensionPixelSize(index, this.G);
                                break;
                            case KeyModifiers.a /* 9 */:
                                this.s = ConstraintSet.f(obtainStyledAttributes, index, this.s);
                                break;
                            case KeyModifiers.b /* 10 */:
                                this.r = ConstraintSet.f(obtainStyledAttributes, index, this.r);
                                break;
                            case 11:
                                this.L = obtainStyledAttributes.getDimensionPixelSize(index, this.L);
                                break;
                            case KeyModifiers.c /* 12 */:
                                this.M = obtainStyledAttributes.getDimensionPixelSize(index, this.M);
                                break;
                            case 13:
                                this.I = obtainStyledAttributes.getDimensionPixelSize(index, this.I);
                                break;
                            case 14:
                                this.K = obtainStyledAttributes.getDimensionPixelSize(index, this.K);
                                break;
                            case 15:
                                this.N = obtainStyledAttributes.getDimensionPixelSize(index, this.N);
                                break;
                            case 16:
                                this.J = obtainStyledAttributes.getDimensionPixelSize(index, this.J);
                                break;
                            case 17:
                                this.d = obtainStyledAttributes.getDimensionPixelOffset(index, this.d);
                                break;
                            case 18:
                                this.e = obtainStyledAttributes.getDimensionPixelOffset(index, this.e);
                                break;
                            case 19:
                                this.f = obtainStyledAttributes.getFloat(index, this.f);
                                break;
                            case 20:
                                this.t = obtainStyledAttributes.getFloat(index, this.t);
                                break;
                            case 21:
                                this.c = obtainStyledAttributes.getLayoutDimension(index, this.c);
                                break;
                            case 22:
                                this.b = obtainStyledAttributes.getLayoutDimension(index, this.b);
                                break;
                            case 23:
                                this.C = obtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            case 24:
                                this.g = ConstraintSet.f(obtainStyledAttributes, index, this.g);
                                break;
                            case 25:
                                this.h = ConstraintSet.f(obtainStyledAttributes, index, this.h);
                                break;
                            case 26:
                                this.B = obtainStyledAttributes.getInt(index, this.B);
                                break;
                            case 27:
                                this.D = obtainStyledAttributes.getDimensionPixelSize(index, this.D);
                                break;
                            case 28:
                                this.i = ConstraintSet.f(obtainStyledAttributes, index, this.i);
                                break;
                            case 29:
                                this.j = ConstraintSet.f(obtainStyledAttributes, index, this.j);
                                break;
                            case 30:
                                this.H = obtainStyledAttributes.getDimensionPixelSize(index, this.H);
                                break;
                            case 31:
                                this.p = ConstraintSet.f(obtainStyledAttributes, index, this.p);
                                break;
                            case 32:
                                this.q = ConstraintSet.f(obtainStyledAttributes, index, this.q);
                                break;
                            case 33:
                                this.E = obtainStyledAttributes.getDimensionPixelSize(index, this.E);
                                break;
                            case 34:
                                this.l = ConstraintSet.f(obtainStyledAttributes, index, this.l);
                                break;
                            case 35:
                                this.k = ConstraintSet.f(obtainStyledAttributes, index, this.k);
                                break;
                            case 36:
                                this.u = obtainStyledAttributes.getFloat(index, this.u);
                                break;
                            case 37:
                                this.P = obtainStyledAttributes.getFloat(index, this.P);
                                break;
                            case 38:
                                this.O = obtainStyledAttributes.getFloat(index, this.O);
                                break;
                            case 39:
                                this.Q = obtainStyledAttributes.getInt(index, this.Q);
                                break;
                            case 40:
                                this.R = obtainStyledAttributes.getInt(index, this.R);
                                break;
                            default:
                                switch (i2) {
                                    case 54:
                                        this.S = obtainStyledAttributes.getInt(index, this.S);
                                        break;
                                    case 55:
                                        this.T = obtainStyledAttributes.getInt(index, this.T);
                                        break;
                                    case 56:
                                        this.U = obtainStyledAttributes.getDimensionPixelSize(index, this.U);
                                        break;
                                    case 57:
                                        this.V = obtainStyledAttributes.getDimensionPixelSize(index, this.V);
                                        break;
                                    case 58:
                                        this.W = obtainStyledAttributes.getDimensionPixelSize(index, this.W);
                                        break;
                                    case 59:
                                        this.X = obtainStyledAttributes.getDimensionPixelSize(index, this.X);
                                        break;
                                    default:
                                        switch (i2) {
                                            case 61:
                                                this.w = ConstraintSet.f(obtainStyledAttributes, index, this.w);
                                                break;
                                            case 62:
                                                this.x = obtainStyledAttributes.getDimensionPixelSize(index, this.x);
                                                break;
                                            case 63:
                                                this.y = obtainStyledAttributes.getFloat(index, this.y);
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 69:
                                                        this.Y = obtainStyledAttributes.getFloat(index, 1.0f);
                                                        break;
                                                    case 70:
                                                        this.Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                        break;
                                                    case 71:
                                                        Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                        break;
                                                    case 72:
                                                        this.a0 = obtainStyledAttributes.getInt(index, this.a0);
                                                        break;
                                                    case 73:
                                                        this.b0 = obtainStyledAttributes.getDimensionPixelSize(index, this.b0);
                                                        break;
                                                    case 74:
                                                        this.e0 = obtainStyledAttributes.getString(index);
                                                        break;
                                                    case 75:
                                                        this.i0 = obtainStyledAttributes.getBoolean(index, this.i0);
                                                        break;
                                                    case 76:
                                                        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                        break;
                                                    case 77:
                                                        this.f0 = obtainStyledAttributes.getString(index);
                                                        break;
                                                    default:
                                                        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                                                        break;
                                                }
                                        }
                                }
                        }
                    } else {
                        this.h0 = obtainStyledAttributes.getBoolean(index, this.h0);
                    }
                } else {
                    this.g0 = obtainStyledAttributes.getBoolean(index, this.g0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Motion {
        public static final SparseIntArray e;
        public int a;
        public int b;
        public float c;
        public float d;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            e = sparseIntArray;
            sparseIntArray.append(2, 1);
            sparseIntArray.append(4, 2);
            sparseIntArray.append(5, 3);
            sparseIntArray.append(1, 4);
            sparseIntArray.append(0, 5);
            sparseIntArray.append(3, 6);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.e);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (e.get(index)) {
                    case 1:
                        this.d = obtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        this.b = obtainStyledAttributes.getInt(index, this.b);
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            String str = Easing.a[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        obtainStyledAttributes.getInt(index, 0);
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        this.a = ConstraintSet.f(obtainStyledAttributes, index, this.a);
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PropertySet {
        public int a;
        public int b;
        public float c;
        public float d;

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.c = obtainStyledAttributes.getFloat(index, this.c);
                } else if (index == 0) {
                    int i2 = obtainStyledAttributes.getInt(index, this.a);
                    this.a = i2;
                    this.a = ConstraintSet.d[i2];
                } else if (index == 4) {
                    this.b = obtainStyledAttributes.getInt(index, this.b);
                } else if (index == 3) {
                    this.d = obtainStyledAttributes.getFloat(index, this.d);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Transform {
        public static final SparseIntArray m;
        public float a;
        public float b;
        public float c;
        public float d;
        public float e;
        public float f;
        public float g;
        public float h;
        public float i;
        public float j;
        public boolean k;
        public float l;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            m = sparseIntArray;
            sparseIntArray.append(6, 1);
            sparseIntArray.append(7, 2);
            sparseIntArray.append(8, 3);
            sparseIntArray.append(4, 4);
            sparseIntArray.append(5, 5);
            sparseIntArray.append(0, 6);
            sparseIntArray.append(1, 7);
            sparseIntArray.append(2, 8);
            sparseIntArray.append(3, 9);
            sparseIntArray.append(9, 10);
            sparseIntArray.append(10, 11);
        }

        public final void a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.h);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (m.get(index)) {
                    case 1:
                        this.a = obtainStyledAttributes.getFloat(index, this.a);
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        this.b = obtainStyledAttributes.getFloat(index, this.b);
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        this.c = obtainStyledAttributes.getFloat(index, this.c);
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        this.d = obtainStyledAttributes.getFloat(index, this.d);
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        this.e = obtainStyledAttributes.getFloat(index, this.e);
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        this.f = obtainStyledAttributes.getDimension(index, this.f);
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        this.g = obtainStyledAttributes.getDimension(index, this.g);
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        this.h = obtainStyledAttributes.getDimension(index, this.h);
                        break;
                    case KeyModifiers.a /* 9 */:
                        this.i = obtainStyledAttributes.getDimension(index, this.i);
                        break;
                    case KeyModifiers.b /* 10 */:
                        this.j = obtainStyledAttributes.getDimension(index, this.j);
                        break;
                    case 11:
                        this.k = true;
                        this.l = obtainStyledAttributes.getDimension(index, this.l);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        sparseIntArray.append(76, 25);
        sparseIntArray.append(77, 26);
        sparseIntArray.append(79, 29);
        sparseIntArray.append(80, 30);
        sparseIntArray.append(86, 36);
        sparseIntArray.append(85, 35);
        sparseIntArray.append(58, 4);
        sparseIntArray.append(57, 3);
        sparseIntArray.append(55, 1);
        sparseIntArray.append(94, 6);
        sparseIntArray.append(95, 7);
        sparseIntArray.append(65, 17);
        sparseIntArray.append(66, 18);
        sparseIntArray.append(67, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(81, 32);
        sparseIntArray.append(82, 33);
        sparseIntArray.append(64, 10);
        sparseIntArray.append(63, 9);
        sparseIntArray.append(98, 13);
        sparseIntArray.append(101, 16);
        sparseIntArray.append(99, 14);
        sparseIntArray.append(96, 11);
        sparseIntArray.append(100, 15);
        sparseIntArray.append(97, 12);
        sparseIntArray.append(89, 40);
        sparseIntArray.append(74, 39);
        sparseIntArray.append(73, 41);
        sparseIntArray.append(88, 42);
        sparseIntArray.append(72, 20);
        sparseIntArray.append(87, 37);
        sparseIntArray.append(62, 5);
        sparseIntArray.append(75, 82);
        sparseIntArray.append(84, 82);
        sparseIntArray.append(78, 82);
        sparseIntArray.append(56, 82);
        sparseIntArray.append(54, 82);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(90, 54);
        sparseIntArray.append(68, 55);
        sparseIntArray.append(91, 56);
        sparseIntArray.append(69, 57);
        sparseIntArray.append(92, 58);
        sparseIntArray.append(70, 59);
        sparseIntArray.append(59, 61);
        sparseIntArray.append(61, 62);
        sparseIntArray.append(60, 63);
        sparseIntArray.append(27, 64);
        sparseIntArray.append(106, 65);
        sparseIntArray.append(33, 66);
        sparseIntArray.append(107, 67);
        sparseIntArray.append(103, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(102, 68);
        sparseIntArray.append(93, 69);
        sparseIntArray.append(71, 70);
        sparseIntArray.append(31, 71);
        sparseIntArray.append(29, 72);
        sparseIntArray.append(30, 73);
        sparseIntArray.append(32, 74);
        sparseIntArray.append(28, 75);
        sparseIntArray.append(104, 76);
        sparseIntArray.append(83, 77);
        sparseIntArray.append(108, 78);
        sparseIntArray.append(53, 80);
        sparseIntArray.append(52, 81);
    }

    public static int[] c(Barrier barrier, String str) {
        int i;
        String[] split = str.split(",");
        Context context = barrier.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            Object obj = null;
            try {
                i = R$id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            if (i == 0 && barrier.isInEditMode() && (barrier.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) barrier.getParent();
                if (trim != null) {
                    HashMap hashMap = constraintLayout.v;
                    if (hashMap != null && hashMap.containsKey(trim)) {
                        obj = constraintLayout.v.get(trim);
                    }
                } else {
                    constraintLayout.getClass();
                }
                if (obj != null && (obj instanceof Integer)) {
                    i = ((Integer) obj).intValue();
                }
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        if (i3 != split.length) {
            return Arrays.copyOf(iArr, i3);
        }
        return iArr;
    }

    public static Constraint d(Context context, AttributeSet attributeSet) {
        Constraint constraint = new Constraint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            Motion motion = constraint.c;
            Transform transform = constraint.e;
            Layout layout = constraint.d;
            if (index != 1 && 23 != index && 24 != index) {
                motion.getClass();
                layout.getClass();
                transform.getClass();
            }
            SparseIntArray sparseIntArray = e;
            int i2 = sparseIntArray.get(index);
            PropertySet propertySet = constraint.b;
            switch (i2) {
                case 1:
                    layout.o = f(obtainStyledAttributes, index, layout.o);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    layout.F = obtainStyledAttributes.getDimensionPixelSize(index, layout.F);
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    layout.n = f(obtainStyledAttributes, index, layout.n);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    layout.m = f(obtainStyledAttributes, index, layout.m);
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    layout.v = obtainStyledAttributes.getString(index);
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    layout.z = obtainStyledAttributes.getDimensionPixelOffset(index, layout.z);
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    layout.A = obtainStyledAttributes.getDimensionPixelOffset(index, layout.A);
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    layout.G = obtainStyledAttributes.getDimensionPixelSize(index, layout.G);
                    break;
                case KeyModifiers.a /* 9 */:
                    layout.s = f(obtainStyledAttributes, index, layout.s);
                    break;
                case KeyModifiers.b /* 10 */:
                    layout.r = f(obtainStyledAttributes, index, layout.r);
                    break;
                case 11:
                    layout.L = obtainStyledAttributes.getDimensionPixelSize(index, layout.L);
                    break;
                case KeyModifiers.c /* 12 */:
                    layout.M = obtainStyledAttributes.getDimensionPixelSize(index, layout.M);
                    break;
                case 13:
                    layout.I = obtainStyledAttributes.getDimensionPixelSize(index, layout.I);
                    break;
                case 14:
                    layout.K = obtainStyledAttributes.getDimensionPixelSize(index, layout.K);
                    break;
                case 15:
                    layout.N = obtainStyledAttributes.getDimensionPixelSize(index, layout.N);
                    break;
                case 16:
                    layout.J = obtainStyledAttributes.getDimensionPixelSize(index, layout.J);
                    break;
                case 17:
                    layout.d = obtainStyledAttributes.getDimensionPixelOffset(index, layout.d);
                    break;
                case 18:
                    layout.e = obtainStyledAttributes.getDimensionPixelOffset(index, layout.e);
                    break;
                case 19:
                    layout.f = obtainStyledAttributes.getFloat(index, layout.f);
                    break;
                case 20:
                    layout.t = obtainStyledAttributes.getFloat(index, layout.t);
                    break;
                case 21:
                    layout.c = obtainStyledAttributes.getLayoutDimension(index, layout.c);
                    break;
                case 22:
                    int i3 = obtainStyledAttributes.getInt(index, propertySet.a);
                    propertySet.a = i3;
                    propertySet.a = d[i3];
                    break;
                case 23:
                    layout.b = obtainStyledAttributes.getLayoutDimension(index, layout.b);
                    break;
                case 24:
                    layout.C = obtainStyledAttributes.getDimensionPixelSize(index, layout.C);
                    break;
                case 25:
                    layout.g = f(obtainStyledAttributes, index, layout.g);
                    break;
                case 26:
                    layout.h = f(obtainStyledAttributes, index, layout.h);
                    break;
                case 27:
                    layout.B = obtainStyledAttributes.getInt(index, layout.B);
                    break;
                case 28:
                    layout.D = obtainStyledAttributes.getDimensionPixelSize(index, layout.D);
                    break;
                case 29:
                    layout.i = f(obtainStyledAttributes, index, layout.i);
                    break;
                case 30:
                    layout.j = f(obtainStyledAttributes, index, layout.j);
                    break;
                case 31:
                    layout.H = obtainStyledAttributes.getDimensionPixelSize(index, layout.H);
                    break;
                case 32:
                    layout.p = f(obtainStyledAttributes, index, layout.p);
                    break;
                case 33:
                    layout.q = f(obtainStyledAttributes, index, layout.q);
                    break;
                case 34:
                    layout.E = obtainStyledAttributes.getDimensionPixelSize(index, layout.E);
                    break;
                case 35:
                    layout.l = f(obtainStyledAttributes, index, layout.l);
                    break;
                case 36:
                    layout.k = f(obtainStyledAttributes, index, layout.k);
                    break;
                case 37:
                    layout.u = obtainStyledAttributes.getFloat(index, layout.u);
                    break;
                case 38:
                    constraint.a = obtainStyledAttributes.getResourceId(index, constraint.a);
                    break;
                case 39:
                    layout.P = obtainStyledAttributes.getFloat(index, layout.P);
                    break;
                case 40:
                    layout.O = obtainStyledAttributes.getFloat(index, layout.O);
                    break;
                case 41:
                    layout.Q = obtainStyledAttributes.getInt(index, layout.Q);
                    break;
                case 42:
                    layout.R = obtainStyledAttributes.getInt(index, layout.R);
                    break;
                case 43:
                    propertySet.c = obtainStyledAttributes.getFloat(index, propertySet.c);
                    break;
                case 44:
                    transform.k = true;
                    transform.l = obtainStyledAttributes.getDimension(index, transform.l);
                    break;
                case 45:
                    transform.b = obtainStyledAttributes.getFloat(index, transform.b);
                    break;
                case 46:
                    transform.c = obtainStyledAttributes.getFloat(index, transform.c);
                    break;
                case 47:
                    transform.d = obtainStyledAttributes.getFloat(index, transform.d);
                    break;
                case 48:
                    transform.e = obtainStyledAttributes.getFloat(index, transform.e);
                    break;
                case 49:
                    transform.f = obtainStyledAttributes.getDimension(index, transform.f);
                    break;
                case 50:
                    transform.g = obtainStyledAttributes.getDimension(index, transform.g);
                    break;
                case 51:
                    transform.h = obtainStyledAttributes.getDimension(index, transform.h);
                    break;
                case 52:
                    transform.i = obtainStyledAttributes.getDimension(index, transform.i);
                    break;
                case 53:
                    transform.j = obtainStyledAttributes.getDimension(index, transform.j);
                    break;
                case 54:
                    layout.S = obtainStyledAttributes.getInt(index, layout.S);
                    break;
                case 55:
                    layout.T = obtainStyledAttributes.getInt(index, layout.T);
                    break;
                case 56:
                    layout.U = obtainStyledAttributes.getDimensionPixelSize(index, layout.U);
                    break;
                case 57:
                    layout.V = obtainStyledAttributes.getDimensionPixelSize(index, layout.V);
                    break;
                case 58:
                    layout.W = obtainStyledAttributes.getDimensionPixelSize(index, layout.W);
                    break;
                case 59:
                    layout.X = obtainStyledAttributes.getDimensionPixelSize(index, layout.X);
                    break;
                case 60:
                    transform.a = obtainStyledAttributes.getFloat(index, transform.a);
                    break;
                case 61:
                    layout.w = f(obtainStyledAttributes, index, layout.w);
                    break;
                case 62:
                    layout.x = obtainStyledAttributes.getDimensionPixelSize(index, layout.x);
                    break;
                case 63:
                    layout.y = obtainStyledAttributes.getFloat(index, layout.y);
                    break;
                case 64:
                    motion.a = f(obtainStyledAttributes, index, motion.a);
                    break;
                case 65:
                    if (obtainStyledAttributes.peekValue(index).type == 3) {
                        obtainStyledAttributes.getString(index);
                        motion.getClass();
                        break;
                    } else {
                        String str = Easing.a[obtainStyledAttributes.getInteger(index, 0)];
                        motion.getClass();
                        break;
                    }
                case 66:
                    obtainStyledAttributes.getInt(index, 0);
                    motion.getClass();
                    break;
                case 67:
                    motion.d = obtainStyledAttributes.getFloat(index, motion.d);
                    break;
                case 68:
                    propertySet.d = obtainStyledAttributes.getFloat(index, propertySet.d);
                    break;
                case 69:
                    layout.Y = obtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    layout.Z = obtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    layout.a0 = obtainStyledAttributes.getInt(index, layout.a0);
                    break;
                case 73:
                    layout.b0 = obtainStyledAttributes.getDimensionPixelSize(index, layout.b0);
                    break;
                case 74:
                    layout.e0 = obtainStyledAttributes.getString(index);
                    break;
                case 75:
                    layout.i0 = obtainStyledAttributes.getBoolean(index, layout.i0);
                    break;
                case 76:
                    motion.b = obtainStyledAttributes.getInt(index, motion.b);
                    break;
                case 77:
                    layout.f0 = obtainStyledAttributes.getString(index);
                    break;
                case 78:
                    propertySet.b = obtainStyledAttributes.getInt(index, propertySet.b);
                    break;
                case 79:
                    motion.c = obtainStyledAttributes.getFloat(index, motion.c);
                    break;
                case 80:
                    layout.g0 = obtainStyledAttributes.getBoolean(index, layout.g0);
                    break;
                case 81:
                    layout.h0 = obtainStyledAttributes.getBoolean(index, layout.h0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
            }
        }
        obtainStyledAttributes.recycle();
        return constraint;
    }

    public static int f(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        if (resourceId == -1) {
            return typedArray.getInt(i, -1);
        }
        return resourceId;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x010b. Please report as an issue. */
    public final void a(ConstraintLayout constraintLayout) {
        int i;
        HashSet hashSet;
        int i2;
        int i3;
        String str;
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap = constraintSet.c;
        HashSet hashSet2 = new HashSet(hashMap.keySet());
        int i4 = 0;
        while (i4 < childCount) {
            View childAt = constraintLayout.getChildAt(i4);
            int id = childAt.getId();
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    str = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    str = "UNKNOWN";
                }
                sb.append(str);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (constraintSet.b && id == -1) {
                    u2.n("All children of ConstraintLayout must have ids to use ConstraintSet");
                    return;
                }
                if (id != -1) {
                    if (hashMap.containsKey(Integer.valueOf(id))) {
                        hashSet2.remove(Integer.valueOf(id));
                        Constraint constraint = (Constraint) hashMap.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            constraint.d.c0 = 1;
                        }
                        Layout layout = constraint.d;
                        PropertySet propertySet = constraint.b;
                        Transform transform = constraint.e;
                        int i5 = layout.c0;
                        if (i5 != -1 && i5 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(layout.a0);
                            barrier.setMargin(layout.b0);
                            barrier.setAllowsGoneWidget(layout.i0);
                            int[] iArr = layout.d0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str2 = layout.e0;
                                if (str2 != null) {
                                    int[] c = c(barrier, str2);
                                    layout.d0 = c;
                                    barrier.setReferencedIds(c);
                                }
                            }
                        }
                        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                        layoutParams.a();
                        constraint.a(layoutParams);
                        HashMap hashMap2 = constraint.f;
                        Class<?> cls = childAt.getClass();
                        for (String str3 : hashMap2.keySet()) {
                            ConstraintAttribute constraintAttribute = (ConstraintAttribute) hashMap2.get(str3);
                            int i6 = childCount;
                            String f = jb.f("set", str3);
                            HashSet hashSet3 = hashSet2;
                            try {
                                int ordinal = constraintAttribute.a.ordinal();
                                Class cls2 = Integer.TYPE;
                                Class cls3 = Float.TYPE;
                                switch (ordinal) {
                                    case 0:
                                        i3 = i4;
                                        cls.getMethod(f, cls2).invoke(childAt, Integer.valueOf(constraintAttribute.b));
                                        break;
                                    case 1:
                                        i3 = i4;
                                        cls.getMethod(f, cls3).invoke(childAt, Float.valueOf(constraintAttribute.c));
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        i3 = i4;
                                        cls.getMethod(f, cls2).invoke(childAt, Integer.valueOf(constraintAttribute.f));
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        Method method = cls.getMethod(f, Drawable.class);
                                        i3 = i4;
                                        try {
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(constraintAttribute.f);
                                            method.invoke(childAt, colorDrawable);
                                        } catch (IllegalAccessException e2) {
                                            e = e2;
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str3 + "\" not found on " + cls.getName());
                                            e.printStackTrace();
                                            childCount = i6;
                                            hashSet2 = hashSet3;
                                            i4 = i3;
                                        } catch (NoSuchMethodException e3) {
                                            e = e3;
                                            Log.e("TransitionLayout", e.getMessage());
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str3 + "\" not found on " + cls.getName());
                                            Log.e("TransitionLayout", cls.getName() + " must have a method " + f);
                                            childCount = i6;
                                            hashSet2 = hashSet3;
                                            i4 = i3;
                                        } catch (InvocationTargetException e4) {
                                            e = e4;
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str3 + "\" not found on " + cls.getName());
                                            e.printStackTrace();
                                            childCount = i6;
                                            hashSet2 = hashSet3;
                                            i4 = i3;
                                        }
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                        cls.getMethod(f, CharSequence.class).invoke(childAt, constraintAttribute.d);
                                        i3 = i4;
                                        break;
                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                        cls.getMethod(f, Boolean.TYPE).invoke(childAt, Boolean.valueOf(constraintAttribute.e));
                                        i3 = i4;
                                        break;
                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                        cls.getMethod(f, cls3).invoke(childAt, Float.valueOf(constraintAttribute.c));
                                        i3 = i4;
                                        break;
                                    default:
                                        i3 = i4;
                                        break;
                                }
                            } catch (IllegalAccessException e5) {
                                e = e5;
                                i3 = i4;
                            } catch (NoSuchMethodException e6) {
                                e = e6;
                                i3 = i4;
                            } catch (InvocationTargetException e7) {
                                e = e7;
                                i3 = i4;
                            }
                            childCount = i6;
                            hashSet2 = hashSet3;
                            i4 = i3;
                        }
                        i = childCount;
                        hashSet = hashSet2;
                        i2 = i4;
                        childAt.setLayoutParams(layoutParams);
                        if (propertySet.b == 0) {
                            childAt.setVisibility(propertySet.a);
                        }
                        childAt.setAlpha(propertySet.c);
                        childAt.setRotation(transform.a);
                        childAt.setRotationX(transform.b);
                        childAt.setRotationY(transform.c);
                        childAt.setScaleX(transform.d);
                        childAt.setScaleY(transform.e);
                        if (!Float.isNaN(transform.f)) {
                            childAt.setPivotX(transform.f);
                        }
                        if (!Float.isNaN(transform.g)) {
                            childAt.setPivotY(transform.g);
                        }
                        childAt.setTranslationX(transform.h);
                        childAt.setTranslationY(transform.i);
                        childAt.setTranslationZ(transform.j);
                        if (transform.k) {
                            childAt.setElevation(transform.l);
                        }
                    } else {
                        i = childCount;
                        hashSet = hashSet2;
                        i2 = i4;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                    i4 = i2 + 1;
                    constraintSet = this;
                    childCount = i;
                    hashSet2 = hashSet;
                }
            }
            i = childCount;
            hashSet = hashSet2;
            i2 = i4;
            i4 = i2 + 1;
            constraintSet = this;
            childCount = i;
            hashSet2 = hashSet;
        }
        Iterator it = hashSet2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            Constraint constraint2 = (Constraint) hashMap.get(num);
            Layout layout2 = constraint2.d;
            int i7 = layout2.c0;
            if (i7 != -1 && i7 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = layout2.d0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str4 = layout2.e0;
                    if (str4 != null) {
                        int[] c2 = c(barrier2, str4);
                        layout2.d0 = c2;
                        barrier2.setReferencedIds(c2);
                    }
                }
                barrier2.setType(layout2.a0);
                barrier2.setMargin(layout2.b0);
                ConstraintLayout.LayoutParams a = ConstraintLayout.a();
                barrier2.d();
                constraint2.a(a);
                constraintLayout.addView(barrier2, a);
            }
            if (layout2.a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams a2 = ConstraintLayout.a();
                constraint2.a(a2);
                constraintLayout.addView(guideline, a2);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        ConstraintSet constraintSet = this;
        int childCount = constraintLayout.getChildCount();
        HashMap hashMap = constraintSet.c;
        hashMap.clear();
        int i = 0;
        while (i < childCount) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (constraintSet.b && id == -1) {
                u2.n("All children of ConstraintLayout must have ids to use ConstraintSet");
                return;
            }
            if (!hashMap.containsKey(Integer.valueOf(id))) {
                hashMap.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = (Constraint) hashMap.get(Integer.valueOf(id));
            HashMap hashMap2 = new HashMap();
            Class<?> cls = childAt.getClass();
            HashMap hashMap3 = constraintSet.a;
            for (String str : hashMap3.keySet()) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) hashMap3.get(str);
                try {
                    if (str.equals("BackgroundColor")) {
                        hashMap2.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                    } else {
                        hashMap2.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                    }
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                } catch (NoSuchMethodException e3) {
                    e3.printStackTrace();
                } catch (InvocationTargetException e4) {
                    e4.printStackTrace();
                }
            }
            constraint.f = hashMap2;
            PropertySet propertySet = constraint.b;
            Layout layout = constraint.d;
            Transform transform = constraint.e;
            constraint.a = id;
            layout.g = layoutParams.d;
            layout.h = layoutParams.e;
            layout.i = layoutParams.f;
            layout.j = layoutParams.g;
            layout.k = layoutParams.h;
            layout.l = layoutParams.i;
            layout.m = layoutParams.j;
            layout.n = layoutParams.k;
            layout.o = layoutParams.l;
            layout.p = layoutParams.p;
            layout.q = layoutParams.q;
            layout.r = layoutParams.r;
            layout.s = layoutParams.s;
            layout.t = layoutParams.z;
            layout.u = layoutParams.A;
            layout.v = layoutParams.B;
            layout.w = layoutParams.m;
            layout.x = layoutParams.n;
            layout.y = layoutParams.o;
            layout.z = layoutParams.P;
            layout.A = layoutParams.Q;
            layout.B = layoutParams.R;
            layout.f = layoutParams.c;
            layout.d = layoutParams.a;
            layout.e = layoutParams.b;
            layout.b = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            layout.c = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            layout.C = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            layout.D = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            layout.E = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout.F = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            layout.O = layoutParams.E;
            layout.P = layoutParams.D;
            layout.R = layoutParams.G;
            layout.Q = layoutParams.F;
            layout.g0 = layoutParams.S;
            layout.h0 = layoutParams.T;
            layout.S = layoutParams.H;
            layout.T = layoutParams.I;
            layout.U = layoutParams.L;
            layout.V = layoutParams.M;
            layout.W = layoutParams.J;
            layout.X = layoutParams.K;
            layout.Y = layoutParams.N;
            layout.Z = layoutParams.O;
            layout.f0 = layoutParams.U;
            layout.J = layoutParams.u;
            layout.L = layoutParams.w;
            layout.I = layoutParams.t;
            layout.K = layoutParams.v;
            layout.N = layoutParams.x;
            layout.M = layoutParams.y;
            layout.G = layoutParams.getMarginEnd();
            layout.H = layoutParams.getMarginStart();
            propertySet.a = childAt.getVisibility();
            propertySet.c = childAt.getAlpha();
            transform.a = childAt.getRotation();
            transform.b = childAt.getRotationX();
            transform.c = childAt.getRotationY();
            transform.d = childAt.getScaleX();
            transform.e = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                transform.f = pivotX;
                transform.g = pivotY;
            }
            transform.h = childAt.getTranslationX();
            transform.i = childAt.getTranslationY();
            transform.j = childAt.getTranslationZ();
            if (transform.k) {
                transform.l = childAt.getElevation();
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = (Barrier) childAt;
                layout.i0 = barrier.r.g0;
                layout.d0 = barrier.getReferencedIds();
                layout.a0 = barrier.getType();
                layout.b0 = barrier.getMargin();
            }
            i++;
            constraintSet = this;
        }
    }

    public final void e(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        Constraint d2 = d(context, Xml.asAttributeSet(xml));
                        if (name.equalsIgnoreCase("Guideline")) {
                            d2.d.a = true;
                        }
                        this.c.put(Integer.valueOf(d2.a), d2);
                    }
                } else {
                    xml.getName();
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (XmlPullParserException e3) {
            e3.printStackTrace();
        }
    }
}
