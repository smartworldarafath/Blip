package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ConstraintAnchor {
    public final ConstraintWidget b;
    public final Type c;
    public ConstraintAnchor d;
    public SolverVariable g;
    public HashSet a = null;
    public int e = 0;
    public int f = -1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Type {
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final Type m;
        public static final Type n;
        public static final Type o;
        public static final Type p;
        public static final Type q;
        public static final /* synthetic */ Type[] r;

        /* JADX INFO: Fake field, exist only in values array */
        Type EF0;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, androidx.constraintlayout.solver.widgets.ConstraintAnchor$Type] */
        static {
            ?? r0 = new Enum("NONE", 0);
            ?? r1 = new Enum("LEFT", 1);
            j = r1;
            ?? r2 = new Enum("TOP", 2);
            k = r2;
            ?? r3 = new Enum("RIGHT", 3);
            l = r3;
            ?? r4 = new Enum("BOTTOM", 4);
            m = r4;
            ?? r5 = new Enum("BASELINE", 5);
            n = r5;
            ?? r6 = new Enum("CENTER", 6);
            o = r6;
            ?? r7 = new Enum("CENTER_X", 7);
            p = r7;
            ?? r8 = new Enum("CENTER_Y", 8);
            q = r8;
            r = new Type[]{r0, r1, r2, r3, r4, r5, r6, r7, r8};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) r.clone();
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.b = constraintWidget;
        this.c = type;
    }

    public final void a(ConstraintAnchor constraintAnchor, int i, int i2) {
        if (constraintAnchor == null) {
            e();
            return;
        }
        this.d = constraintAnchor;
        if (constraintAnchor.a == null) {
            constraintAnchor.a = new HashSet();
        }
        this.d.a.add(this);
        if (i > 0) {
            this.e = i;
        } else {
            this.e = 0;
        }
        this.f = i2;
    }

    public final int b() {
        ConstraintAnchor constraintAnchor;
        if (this.b.W == 8) {
            return 0;
        }
        int i = this.f;
        if (i > -1 && (constraintAnchor = this.d) != null && constraintAnchor.b.W == 8) {
            return i;
        }
        return this.e;
    }

    public final boolean c() {
        ConstraintAnchor constraintAnchor;
        HashSet hashSet = this.a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ConstraintAnchor constraintAnchor2 = (ConstraintAnchor) it.next();
                ConstraintWidget constraintWidget = constraintAnchor2.b;
                Type type = constraintAnchor2.c;
                switch (type.ordinal()) {
                    case 0:
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        constraintAnchor = null;
                        break;
                    case 1:
                        constraintAnchor = constraintWidget.z;
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        constraintAnchor = constraintWidget.A;
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        constraintAnchor = constraintWidget.x;
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        constraintAnchor = constraintWidget.y;
                        break;
                    default:
                        throw new AssertionError(type.name());
                }
                if (constraintAnchor.d()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final boolean d() {
        if (this.d != null) {
            return true;
        }
        return false;
    }

    public final void e() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.d;
        if (constraintAnchor != null && (hashSet = constraintAnchor.a) != null) {
            hashSet.remove(this);
        }
        this.d = null;
        this.e = 0;
        this.f = -1;
    }

    public final void f() {
        SolverVariable solverVariable = this.g;
        if (solverVariable == null) {
            this.g = new SolverVariable(SolverVariable.Type.j);
        } else {
            solverVariable.c();
        }
    }

    public final String toString() {
        return this.b.X + ":" + this.c.toString();
    }
}
