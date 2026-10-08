package androidx.constraintlayout.solver;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SolverVariable {
    public boolean a;
    public float e;
    public Type i;
    public int b = -1;
    public int c = -1;
    public int d = 0;
    public boolean f = false;
    public final float[] g = new float[9];
    public final float[] h = new float[9];
    public ArrayRow[] j = new ArrayRow[16];
    public int k = 0;
    public int l = 0;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Type {
        public static final Type j;
        public static final Type k;
        public static final Type l;
        public static final Type m;
        public static final /* synthetic */ Type[] n;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.solver.SolverVariable$Type] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.solver.SolverVariable$Type] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.constraintlayout.solver.SolverVariable$Type] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.constraintlayout.solver.SolverVariable$Type] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.constraintlayout.solver.SolverVariable$Type] */
        static {
            ?? r0 = new Enum("UNRESTRICTED", 0);
            j = r0;
            ?? r1 = new Enum("CONSTANT", 1);
            ?? r2 = new Enum("SLACK", 2);
            k = r2;
            ?? r3 = new Enum("ERROR", 3);
            l = r3;
            ?? r4 = new Enum("UNKNOWN", 4);
            m = r4;
            n = new Type[]{r0, r1, r2, r3, r4};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) n.clone();
        }
    }

    public SolverVariable(Type type) {
        this.i = type;
    }

    public final void a(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.k;
            ArrayRow[] arrayRowArr = this.j;
            if (i < i2) {
                if (arrayRowArr[i] == arrayRow) {
                    return;
                } else {
                    i++;
                }
            } else {
                if (i2 >= arrayRowArr.length) {
                    this.j = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.j;
                int i3 = this.k;
                arrayRowArr2[i3] = arrayRow;
                this.k = i3 + 1;
                return;
            }
        }
    }

    public final void b(ArrayRow arrayRow) {
        int i = this.k;
        int i2 = 0;
        while (i2 < i) {
            if (this.j[i2] == arrayRow) {
                while (i2 < i - 1) {
                    ArrayRow[] arrayRowArr = this.j;
                    int i3 = i2 + 1;
                    arrayRowArr[i2] = arrayRowArr[i3];
                    i2 = i3;
                }
                this.k--;
                return;
            }
            i2++;
        }
    }

    public final void c() {
        this.i = Type.m;
        this.d = 0;
        this.b = -1;
        this.c = -1;
        this.e = 0.0f;
        this.f = false;
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2] = null;
        }
        this.k = 0;
        this.l = 0;
        this.a = false;
        Arrays.fill(this.h, 0.0f);
    }

    public final void d(ArrayRow arrayRow) {
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].h(arrayRow, false);
        }
        this.k = 0;
    }

    public final String toString() {
        return "" + this.b;
    }
}
