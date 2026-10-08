package androidx.compose.runtime.composer.gapbuffer;

import androidx.collection.IntSetKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.IntStack;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.RememberObserverHolder;
import defpackage.f7;
import defpackage.fe;
import defpackage.jb;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SlotWriter {
    public final SlotTable a;
    public int[] b;
    public Object[] c;
    public ArrayList d;
    public HashMap e;
    public MutableIntObjectMap f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final IntStack p;
    public final IntStack q;
    public final IntStack r;
    public MutableIntObjectMap s;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public MutableIntList x;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        public static List a(SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
            boolean z4;
            EmptyList emptyList;
            boolean z5;
            boolean z6;
            int i2;
            int i3;
            int i4;
            int u = slotWriter.u(i);
            int i5 = i + u;
            int f = slotWriter.f(i);
            int f2 = slotWriter.f(i5);
            int i6 = f2 - f;
            if (i >= 0 && (slotWriter.b[(slotWriter.r(i) * 5) + 1] & 201326592) != 0) {
                z4 = true;
            } else {
                z4 = false;
            }
            slotWriter2.w(u);
            slotWriter2.x(i6, slotWriter2.t);
            if (slotWriter.g < i5) {
                slotWriter.B(i5);
            }
            if (slotWriter.k < f2) {
                slotWriter.C(f2, i5);
            }
            int[] iArr = slotWriter2.b;
            int i7 = slotWriter2.t;
            int i8 = i7 * 5;
            ArraysKt.f(i8, i * 5, i5 * 5, slotWriter.b, iArr);
            Object[] objArr = slotWriter2.c;
            int i9 = slotWriter2.i;
            System.arraycopy(slotWriter.c, f, objArr, i9, i6);
            int i10 = slotWriter2.v;
            iArr[i8 + 2] = i10;
            int i11 = i7 - i;
            int i12 = i7 + u;
            int g = i9 - slotWriter2.g(iArr, i7);
            int i13 = slotWriter2.m;
            int i14 = slotWriter2.l;
            int length = objArr.length;
            boolean z7 = z4;
            int i15 = i13;
            int i16 = i7;
            while (i16 < i12) {
                if (i16 != i7) {
                    int i17 = (i16 * 5) + 2;
                    iArr[i17] = iArr[i17] + i11;
                }
                int[] iArr2 = iArr;
                int g2 = slotWriter2.g(iArr, i16) + g;
                if (i15 < i16) {
                    i3 = i7;
                    i4 = 0;
                } else {
                    i3 = i7;
                    i4 = slotWriter2.k;
                }
                iArr2[(i16 * 5) + 4] = SlotWriter.i(g2, i4, i14, length);
                if (i16 == i15) {
                    i15++;
                }
                i16++;
                i7 = i3;
                iArr = iArr2;
            }
            int[] iArr3 = iArr;
            slotWriter2.m = i15;
            int a = SlotTableKt.a(slotWriter.d, i, slotWriter.p());
            int a2 = SlotTableKt.a(slotWriter.d, i5, slotWriter.p());
            if (a < a2) {
                ArrayList arrayList = slotWriter.d;
                ArrayList arrayList2 = new ArrayList(a2 - a);
                for (int i18 = a; i18 < a2; i18++) {
                    GapAnchor gapAnchor = (GapAnchor) arrayList.get(i18);
                    gapAnchor.a += i11;
                    arrayList2.add(gapAnchor);
                }
                slotWriter2.d.addAll(SlotTableKt.a(slotWriter2.d, slotWriter2.t, slotWriter2.p()), arrayList2);
                arrayList.subList(a, a2).clear();
                emptyList = arrayList2;
            } else {
                emptyList = EmptyList.j;
            }
            if (!emptyList.isEmpty()) {
                HashMap hashMap = slotWriter.e;
                HashMap hashMap2 = slotWriter2.e;
                if (hashMap != null && hashMap2 != null) {
                    int size = emptyList.size();
                    for (int i19 = 0; i19 < size; i19++) {
                    }
                }
            }
            int i20 = slotWriter2.v;
            slotWriter2.O(i10);
            int E = slotWriter.E(slotWriter.b, i);
            if (!z3) {
                z5 = false;
            } else if (z) {
                if (E >= 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    slotWriter.P();
                    slotWriter.a(E - slotWriter.t);
                    slotWriter.P();
                }
                slotWriter.a(i - slotWriter.t);
                boolean H = slotWriter.H();
                if (z6) {
                    slotWriter.M();
                    slotWriter.j();
                    slotWriter.M();
                    slotWriter.j();
                }
                z5 = H;
            } else {
                boolean I = slotWriter.I(i, u);
                slotWriter.J(f, i6, i - 1);
                z5 = I;
            }
            if (z5) {
                ComposerKt.a("Unexpectedly removed anchors");
            }
            int i21 = slotWriter2.o;
            int i22 = iArr3[i8 + 1];
            if ((1073741824 & i22) != 0) {
                i2 = 1;
            } else {
                i2 = i22 & 67108863;
            }
            slotWriter2.o = i21 + i2;
            if (z2) {
                slotWriter2.t = i12;
                slotWriter2.i = i9 + i6;
            }
            if (z7) {
                slotWriter2.T(i10);
            }
            return emptyList;
        }
    }

    public SlotWriter(SlotTable slotTable) {
        this.a = slotTable;
        int[] iArr = slotTable.j;
        this.b = iArr;
        Object[] objArr = slotTable.l;
        this.c = objArr;
        this.d = slotTable.r;
        this.e = slotTable.s;
        this.f = slotTable.t;
        int i = slotTable.k;
        this.g = i;
        this.h = (iArr.length / 5) - i;
        int i2 = slotTable.m;
        this.k = i2;
        this.l = objArr.length - i2;
        this.m = i;
        this.p = new IntStack();
        this.q = new IntStack();
        this.r = new IntStack();
        this.u = i;
        this.v = -1;
    }

    public static int i(int i, int i2, int i3, int i4) {
        if (i > i2) {
            return -(((i4 - i3) - i) + 1);
        }
        return i;
    }

    public static void z(SlotWriter slotWriter) {
        int i = slotWriter.v;
        int r = slotWriter.r(i);
        int[] iArr = slotWriter.b;
        int i2 = (r * 5) + 1;
        int i3 = iArr[i2];
        if ((i3 & 134217728) == 0) {
            int i4 = (i3 & (-134217729)) | 134217728;
            iArr[i2] = i4;
            if ((67108864 & i4) != 0) {
                return;
            }
            slotWriter.T(slotWriter.E(iArr, i));
        }
    }

    public final void A(SlotTable slotTable, int i) {
        if (this.n <= 0) {
            ComposerKt.a("Check failed");
        }
        if (i == 0 && this.t == 0 && this.a.k == 0) {
            int[] iArr = slotTable.j;
            int i2 = iArr[(i * 5) + 3];
            int i3 = slotTable.k;
            if (i2 == i3) {
                int[] iArr2 = this.b;
                Object[] objArr = this.c;
                ArrayList arrayList = this.d;
                HashMap hashMap = this.e;
                MutableIntObjectMap mutableIntObjectMap = this.f;
                Object[] objArr2 = slotTable.l;
                int i4 = slotTable.m;
                HashMap hashMap2 = slotTable.s;
                MutableIntObjectMap mutableIntObjectMap2 = slotTable.t;
                this.b = iArr;
                this.c = objArr2;
                this.d = slotTable.r;
                this.g = i3;
                this.h = (iArr.length / 5) - i3;
                this.k = i4;
                this.l = objArr2.length - i4;
                this.m = i3;
                this.e = hashMap2;
                this.f = mutableIntObjectMap2;
                slotTable.j = iArr2;
                slotTable.k = 0;
                slotTable.l = objArr;
                slotTable.m = 0;
                slotTable.r = arrayList;
                slotTable.s = hashMap;
                slotTable.t = mutableIntObjectMap;
                return;
            }
        }
        SlotWriter e = slotTable.e();
        try {
            Companion.a(e, i, this, true, true, false);
            e.e(true);
        } catch (Throwable th) {
            e.e(false);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005b, code lost:
    
        r2 = r8.b;
        r3 = r9 * 5;
        r4 = r0 * 5;
        r5 = r1 * 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        if (r9 >= r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        kotlin.collections.ArraysKt.f(r4 + r3, r3, r5, r2, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006a, code lost:
    
        kotlin.collections.ArraysKt.f(r5, r5 + r4, r3 + r4, r2, r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void B(int i) {
        int p;
        GapAnchor gapAnchor;
        int i2;
        GapAnchor gapAnchor2;
        int i3;
        int i4;
        int i5 = this.h;
        int i6 = this.g;
        if (i6 != i) {
            if (!this.d.isEmpty()) {
                int o = o() - this.h;
                ArrayList arrayList = this.d;
                if (i6 < i) {
                    for (int a = SlotTableKt.a(arrayList, i6, o); a < this.d.size() && (i3 = (gapAnchor2 = (GapAnchor) this.d.get(a)).a) < 0 && (i4 = i3 + o) < i; a++) {
                        gapAnchor2.a = i4;
                    }
                } else {
                    for (int a2 = SlotTableKt.a(arrayList, i, o); a2 < this.d.size() && (i2 = (gapAnchor = (GapAnchor) this.d.get(a2)).a) >= 0; a2++) {
                        gapAnchor.a = -(o - i2);
                    }
                }
            }
            if (i < i6) {
                i6 = i + i5;
            }
            int o2 = o();
            if (i6 >= o2) {
                ComposerKt.a("Check failed");
            }
            while (i6 < o2) {
                int i7 = (i6 * 5) + 2;
                int i8 = this.b[i7];
                if (i8 > -2) {
                    p = i8;
                } else {
                    p = (p() + i8) - (-2);
                }
                if (p >= i) {
                    p = -((p() - p) - (-2));
                }
                if (p != i8) {
                    this.b[i7] = p;
                }
                i6++;
                if (i6 == i) {
                    i6 += i5;
                }
            }
        }
        this.g = i;
    }

    public final void C(int i, int i2) {
        int i3 = this.l;
        int i4 = this.k;
        int i5 = this.m;
        if (i4 != i) {
            Object[] objArr = this.c;
            if (i < i4) {
                System.arraycopy(objArr, i, objArr, i + i3, i4 - i);
            } else {
                int i6 = i4 + i3;
                System.arraycopy(objArr, i6, objArr, i4, (i + i3) - i6);
            }
        }
        int min = Math.min(i2 + 1, p());
        if (i5 != min) {
            int length = this.c.length - i3;
            if (min < i5) {
                int r = r(min);
                int r2 = r(i5);
                int i7 = this.g;
                while (r < r2) {
                    int i8 = (r * 5) + 4;
                    int i9 = this.b[i8];
                    if (i9 < 0) {
                        ComposerKt.a("Unexpected anchor value, expected a positive anchor");
                    }
                    this.b[i8] = -((length - i9) + 1);
                    r++;
                    if (r == i7) {
                        r += this.h;
                    }
                }
            } else {
                int r3 = r(i5);
                int r4 = r(min);
                while (r3 < r4) {
                    int i10 = (r3 * 5) + 4;
                    int i11 = this.b[i10];
                    if (i11 >= 0) {
                        ComposerKt.a("Unexpected anchor value, expected a negative anchor");
                    }
                    this.b[i10] = i11 + length + 1;
                    r3++;
                    if (r3 == this.g) {
                        r3 += this.h;
                    }
                }
            }
            this.m = min;
        }
        this.k = i;
    }

    public final Object D(int i) {
        int r = r(i);
        int[] iArr = this.b;
        if ((iArr[(r * 5) + 1] & 1073741824) != 0) {
            return this.c[h(g(iArr, r))];
        }
        return null;
    }

    public final int E(int[] iArr, int i) {
        int i2 = iArr[(r(i) * 5) + 2];
        if (i2 > -2) {
            return i2;
        }
        return (p() + i2) - (-2);
    }

    public final Object F(Object obj) {
        if (this.n > 0) {
            x(1, this.v);
        }
        Object[] objArr = this.c;
        int i = this.i;
        this.i = i + 1;
        Object obj2 = objArr[h(i)];
        if (this.i > this.j) {
            ComposerKt.a("Writing to an invalid slot");
        }
        this.c[h(this.i - 1)] = obj;
        return obj2;
    }

    public final void G() {
        int i;
        int i2;
        MutableIntList mutableIntList = this.x;
        if (mutableIntList != null) {
            while (mutableIntList.b != 0) {
                int b = PrioritySet.b(mutableIntList);
                int r = r(b);
                int i3 = b + 1;
                int u = u(b) + b;
                while (true) {
                    i = 0;
                    if (i3 < u) {
                        if ((this.b[(r(i3) * 5) + 1] & 201326592) != 0) {
                            i2 = 1;
                            break;
                        }
                        i3 += u(i3);
                    } else {
                        i2 = 0;
                        break;
                    }
                }
                int[] iArr = this.b;
                int i4 = (r * 5) + 1;
                int i5 = iArr[i4];
                if ((67108864 & i5) != 0) {
                    i = 1;
                }
                if (i != i2) {
                    iArr[i4] = (i2 << 26) | ((-67108865) & i5);
                    int E = E(iArr, b);
                    if (E >= 0) {
                        PrioritySet.a(mutableIntList, E);
                    }
                }
            }
        }
    }

    public final boolean H() {
        if (this.n != 0) {
            ComposerKt.a("Cannot remove group while inserting");
        }
        int i = this.t;
        int i2 = this.i;
        int g = g(this.b, r(i));
        int L = L();
        O(this.v);
        MutableIntList mutableIntList = this.x;
        if (mutableIntList != null) {
            while (true) {
                int i3 = mutableIntList.b;
                if (i3 == 0) {
                    break;
                }
                if (i3 != 0) {
                    if (mutableIntList.a[0] < i) {
                        break;
                    }
                    PrioritySet.b(mutableIntList);
                } else {
                    fe.o("IntList is empty.");
                    return false;
                }
            }
        }
        boolean I = I(i, this.t - i);
        J(g, this.i - g, i - 1);
        this.t = i;
        this.i = i2;
        this.o -= L;
        return I;
    }

    public final boolean I(int i, int i2) {
        boolean z = false;
        if (i2 > 0) {
            ArrayList arrayList = this.d;
            B(i);
            if (!arrayList.isEmpty()) {
                HashMap hashMap = this.e;
                int i3 = i + i2;
                int a = SlotTableKt.a(this.d, i3, o() - this.h);
                if (a >= this.d.size()) {
                    a--;
                }
                int i4 = a + 1;
                int i5 = 0;
                while (a >= 0) {
                    GapAnchor gapAnchor = (GapAnchor) this.d.get(a);
                    int c = c(gapAnchor);
                    if (c < i) {
                        break;
                    }
                    if (c < i3) {
                        gapAnchor.a = Integer.MIN_VALUE;
                        if (hashMap != null) {
                        }
                        if (i5 == 0) {
                            i5 = a + 1;
                        }
                        i4 = a;
                    }
                    a--;
                }
                if (i4 < i5) {
                    z = true;
                }
                if (z) {
                    this.d.subList(i4, i5).clear();
                }
            }
            this.g = i;
            this.h += i2;
            int i6 = this.m;
            if (i6 > i) {
                this.m = Math.max(i, i6 - i2);
            }
            int i7 = this.u;
            if (i7 >= this.g) {
                this.u = i7 - i2;
            }
            int i8 = this.v;
            if (i8 >= 0 && (this.b[(r(i8) * 5) + 1] & 67108864) != 0) {
                T(i8);
            }
        }
        return z;
    }

    public final void J(int i, int i2, int i3) {
        if (i2 > 0) {
            int i4 = this.l;
            int i5 = i + i2;
            C(i5, i3);
            this.k = i;
            this.l = i4 + i2;
            Arrays.fill(this.c, i, i5, (Object) null);
            int i6 = this.j;
            if (i6 >= i) {
                this.j = i6 - i2;
            }
        }
    }

    public final Object K(int i, int i2, Object obj) {
        int N = N(this.b, r(i));
        int g = g(this.b, r(i + 1));
        int i3 = N + i2;
        if (i3 < N || i3 >= g) {
            ComposerKt.a("Write to an invalid slot index " + i2 + " for group " + i);
        }
        int h = h(i3);
        Object[] objArr = this.c;
        Object obj2 = objArr[h];
        objArr[h] = obj;
        return obj2;
    }

    public final int L() {
        int r = r(this.t);
        int i = this.t;
        int[] iArr = this.b;
        int i2 = r * 5;
        int i3 = iArr[i2 + 3] + i;
        this.t = i3;
        this.i = g(iArr, r(i3));
        int i4 = this.b[i2 + 1];
        if ((1073741824 & i4) != 0) {
            return 1;
        }
        return i4 & 67108863;
    }

    public final void M() {
        int i = this.u;
        this.t = i;
        this.i = g(this.b, r(i));
    }

    public final int N(int[] iArr, int i) {
        if (i >= o()) {
            return this.c.length - this.l;
        }
        int b = SlotTableKt.b(iArr, i);
        int i2 = this.l;
        int length = this.c.length;
        if (b < 0) {
            return (length - i2) + b + 1;
        }
        return b;
    }

    public final GapGroupSourceInformation O(int i) {
        GapAnchor R;
        HashMap hashMap = this.e;
        if (hashMap == null || (R = R(i)) == null) {
            return null;
        }
        return (GapGroupSourceInformation) hashMap.get(R);
    }

    public final void P() {
        if (this.n != 0) {
            ComposerKt.a("Key must be supplied when inserting");
        }
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Q(0, composer$Companion$Empty$1, composer$Companion$Empty$1, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(int i, Object obj, Object obj2, boolean z) {
        Object[] objArr;
        int i2;
        int i3;
        int i4;
        int i5 = this.v;
        if (this.n > 0) {
            objArr = true;
        } else {
            objArr = false;
        }
        this.r.c(this.o);
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (objArr != false) {
            int i6 = this.t;
            int g = g(this.b, r(i6));
            w(1);
            this.i = g;
            this.j = g;
            int r = r(i6);
            if (obj != composer$Companion$Empty$1) {
                i3 = 1;
            } else {
                i3 = 0;
            }
            if (!z && obj2 != composer$Companion$Empty$1) {
                i4 = 1;
            } else {
                i4 = 0;
            }
            int i7 = i(g, this.k, this.l, this.c.length);
            if (i7 >= 0 && this.m < i6) {
                i7 = -(((this.c.length - this.l) - i7) + 1);
            }
            int[] iArr = this.b;
            int i8 = this.v;
            int i9 = r * 5;
            iArr[i9] = i;
            iArr[i9 + 1] = ((z ? 1 : 0) << 30) | (i3 << 29) | (i4 << 28);
            iArr[i9 + 2] = i8;
            iArr[i9 + 3] = 0;
            iArr[i9 + 4] = i7;
            int i10 = (z ? 1 : 0) + i3 + i4;
            if (i10 > 0) {
                x(i10, i6);
                Object[] objArr2 = this.c;
                int i11 = this.i;
                if (z) {
                    objArr2[i11] = obj2;
                    i11++;
                }
                if (i3 != 0) {
                    objArr2[i11] = obj;
                    i11++;
                }
                if (i4 != 0) {
                    objArr2[i11] = obj2;
                    i11++;
                }
                this.i = i11;
            }
            this.o = 0;
            i2 = i6 + 1;
            this.v = i6;
            this.t = i2;
            if (i5 >= 0) {
                O(i5);
            }
        } else {
            this.p.c(i5);
            this.q.c((o() - this.h) - this.u);
            int i12 = this.t;
            int r2 = r(i12);
            if (!Intrinsics.a(obj2, composer$Companion$Empty$1)) {
                if (z) {
                    U(this.t, obj2);
                } else {
                    S(obj2);
                }
            }
            this.i = N(this.b, r2);
            this.j = g(this.b, r(this.t + 1));
            int[] iArr2 = this.b;
            int i13 = r2 * 5;
            this.o = iArr2[i13 + 1] & 67108863;
            this.v = i12;
            this.t = i12 + 1;
            i2 = i12 + iArr2[i13 + 3];
        }
        this.u = i2;
    }

    public final GapAnchor R(int i) {
        ArrayList arrayList;
        int e;
        if (i < 0 || i >= p() || (e = SlotTableKt.e((arrayList = this.d), i, p())) < 0) {
            return null;
        }
        return (GapAnchor) arrayList.get(e);
    }

    public final void S(Object obj) {
        int r = r(this.t);
        int i = (r * 5) + 1;
        if ((this.b[i] & 268435456) == 0) {
            ComposerKt.a("Updating the data of a group that was not created with a data slot");
        }
        Object[] objArr = this.c;
        int[] iArr = this.b;
        objArr[h(Integer.bitCount(iArr[i] >> 29) + g(iArr, r))] = obj;
    }

    public final void T(int i) {
        if (i >= 0) {
            MutableIntList mutableIntList = this.x;
            if (mutableIntList == null) {
                mutableIntList = new MutableIntList();
                this.x = mutableIntList;
            }
            PrioritySet.a(mutableIntList, i);
        }
    }

    public final void U(int i, Object obj) {
        int r = r(i);
        int[] iArr = this.b;
        if (r >= iArr.length || (iArr[(r * 5) + 1] & 1073741824) == 0) {
            ComposerKt.a("Updating the node of a group at " + i + " that was not created with as a node group");
        }
        this.c[h(g(this.b, r))] = obj;
    }

    public final void a(int i) {
        if (i < 0) {
            ComposerKt.a("Cannot seek backwards");
        }
        if (this.n > 0) {
            PreconditionsKt.b("Cannot call seek() while inserting");
        }
        if (i == 0) {
            return;
        }
        int i2 = this.t + i;
        int i3 = this.v;
        if (i2 < i3 || i2 > this.u) {
            ComposerKt.a("Cannot seek outside the current group (" + i3 + "-" + this.u + ")");
        }
        this.t = i2;
        int g = g(this.b, r(i2));
        this.i = g;
        this.j = g;
    }

    public final GapAnchor b(int i) {
        ArrayList arrayList = this.d;
        int e = SlotTableKt.e(arrayList, i, p());
        if (e < 0) {
            if (i > this.g) {
                i = -(p() - i);
            }
            GapAnchor gapAnchor = new GapAnchor(i);
            arrayList.add(-(e + 1), gapAnchor);
            return gapAnchor;
        }
        return (GapAnchor) arrayList.get(e);
    }

    public final int c(GapAnchor gapAnchor) {
        int i = gapAnchor.a;
        if (i < 0) {
            return p() + i;
        }
        return i;
    }

    public final void d() {
        int i = this.n;
        this.n = i + 1;
        if (i == 0) {
            this.q.c((o() - this.h) - this.u);
        }
    }

    public final void e(boolean z) {
        this.w = true;
        if (z && this.p.b == 0) {
            B(p());
            C(this.c.length - this.l, this.g);
            int i = this.k;
            Arrays.fill(this.c, i, this.l + i, (Object) null);
            G();
        }
        int[] iArr = this.b;
        int i2 = this.g;
        Object[] objArr = this.c;
        int i3 = this.k;
        ArrayList arrayList = this.d;
        HashMap hashMap = this.e;
        MutableIntObjectMap mutableIntObjectMap = this.f;
        SlotTable slotTable = this.a;
        if (!slotTable.p) {
            PreconditionsKt.a("Unexpected writer close()");
        }
        slotTable.p = false;
        slotTable.j = iArr;
        slotTable.k = i2;
        slotTable.l = objArr;
        slotTable.m = i3;
        slotTable.r = arrayList;
        slotTable.s = hashMap;
        slotTable.t = mutableIntObjectMap;
    }

    public final int f(int i) {
        return g(this.b, r(i));
    }

    public final int g(int[] iArr, int i) {
        if (i >= o()) {
            return this.c.length - this.l;
        }
        int i2 = iArr[(i * 5) + 4];
        int i3 = this.l;
        int length = this.c.length;
        if (i2 < 0) {
            return (length - i3) + i2 + 1;
        }
        return i2;
    }

    public final int h(int i) {
        int i2;
        int i3 = this.l;
        if (i < this.k) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        return (i3 * i2) + i;
    }

    public final void j() {
        boolean z;
        boolean z2;
        int i;
        int r;
        MutableObjectList mutableObjectList;
        int i2 = 0;
        if (this.n > 0) {
            z = true;
        } else {
            z = false;
        }
        int i3 = this.t;
        int i4 = this.u;
        int i5 = this.v;
        int r2 = r(i5);
        int i6 = this.o;
        int i7 = i3 - i5;
        int i8 = r2 * 5;
        int i9 = i8 + 1;
        if ((this.b[i9] & 1073741824) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        IntStack intStack = this.r;
        if (z) {
            MutableIntObjectMap mutableIntObjectMap = this.s;
            if (mutableIntObjectMap != null && (mutableObjectList = (MutableObjectList) mutableIntObjectMap.b(i5)) != null) {
                Object[] objArr = mutableObjectList.a;
                int i10 = mutableObjectList.b;
                for (int i11 = 0; i11 < i10; i11++) {
                    F(objArr[i11]);
                }
            }
            int[] iArr = this.b;
            iArr[i8 + 3] = i7;
            SlotTableKt.c(r2, i6, iArr);
            int b = intStack.b();
            if (z2) {
                i6 = 1;
            }
            this.o = b + i6;
            int E = E(this.b, i5);
            this.v = E;
            if (E < 0) {
                r = p();
            } else {
                r = r(E + 1);
            }
            if (r >= 0) {
                i2 = g(this.b, r);
            }
            this.i = i2;
            this.j = i2;
            return;
        }
        if (i3 != i4) {
            ComposerKt.a("Expected to be at the end of a group");
        }
        int[] iArr2 = this.b;
        int i12 = i8 + 3;
        int i13 = iArr2[i12];
        int i14 = iArr2[i9] & 67108863;
        iArr2[i12] = i7;
        SlotTableKt.c(r2, i6, iArr2);
        int b2 = this.p.b();
        this.u = (o() - this.h) - this.q.b();
        this.v = b2;
        int E2 = E(this.b, i5);
        int b3 = intStack.b();
        this.o = b3;
        if (E2 == b2) {
            if (!z2) {
                i2 = i6 - i14;
            }
            this.o = b3 + i2;
            return;
        }
        int i15 = i7 - i13;
        if (z2) {
            i = 0;
        } else {
            i = i6 - i14;
        }
        if (i15 != 0 || i != 0) {
            while (E2 != 0 && E2 != b2 && (i != 0 || i15 != 0)) {
                int r3 = r(E2);
                if (i15 != 0) {
                    int[] iArr3 = this.b;
                    int i16 = (r3 * 5) + 3;
                    iArr3[i16] = iArr3[i16] + i15;
                }
                if (i != 0) {
                    int[] iArr4 = this.b;
                    SlotTableKt.c(r3, (iArr4[(r3 * 5) + 1] & 67108863) + i, iArr4);
                }
                int[] iArr5 = this.b;
                if ((iArr5[(r3 * 5) + 1] & 1073741824) != 0) {
                    i = 0;
                }
                E2 = E(iArr5, E2);
            }
        }
        this.o += i;
    }

    public final void k() {
        if (this.n <= 0) {
            PreconditionsKt.b("Unbalanced begin/end insert");
        }
        int i = this.n - 1;
        this.n = i;
        if (i == 0) {
            if (this.r.b != this.p.b) {
                ComposerKt.a("startGroup/endGroup mismatch while inserting");
            }
            this.u = (o() - this.h) - this.q.b();
        }
    }

    public final void l(int i) {
        boolean z;
        boolean z2 = false;
        if (this.n <= 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            ComposerKt.a("Cannot call ensureStarted() while inserting");
        }
        int i2 = this.v;
        if (i2 != i) {
            if (i >= i2 && i < this.u) {
                z2 = true;
            }
            if (!z2) {
                ComposerKt.a("Started group at " + i + " must be a subgroup of the group at " + i2);
            }
            int i3 = this.t;
            int i4 = this.i;
            int i5 = this.j;
            this.t = i;
            P();
            this.t = i3;
            this.i = i4;
            this.j = i5;
        }
    }

    public final void m(int i, int i2, int i3) {
        if (i >= this.g) {
            i = -((p() - i) + 2);
        }
        while (i3 < i2) {
            this.b[(r(i3) * 5) + 2] = i;
            int i4 = this.b[(r(i3) * 5) + 3] + i3;
            m(i3, i4, i3 + 1);
            i3 = i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x012d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n(int i, Function2 function2) {
        int i2;
        int i3;
        int i4;
        GapRememberObserverHolder gapRememberObserverHolder;
        Function2 function22 = function2;
        int E = E(this.b, i);
        int p = p();
        int u = u(i) + i;
        int i5 = i;
        MutableIntSet mutableIntSet = null;
        MutableIntList mutableIntList = null;
        loop0: while (i5 < u) {
            int f = f(i5);
            int i6 = i5 + 1;
            int f2 = f(i6);
            while (f < f2) {
                Object obj = this.c[h(f)];
                if (obj instanceof RememberObserverHolder) {
                    RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) obj;
                    if (rememberObserverHolder instanceof GapRememberObserverHolder) {
                        gapRememberObserverHolder = (GapRememberObserverHolder) rememberObserverHolder;
                    } else {
                        gapRememberObserverHolder = null;
                    }
                    if (gapRememberObserverHolder != null) {
                        int i7 = gapRememberObserverHolder.b;
                        if (i7 >= 0) {
                            int u2 = u(i5) + i5;
                            int i8 = i6;
                            int i9 = 0;
                            while (i8 < u2 && i9 < i7) {
                                int r = r(i8);
                                int i10 = E;
                                int[] iArr = this.b;
                                int i11 = r * 5;
                                i8 = iArr[i11 + 3] + i8;
                                if (i8 < u2 && (iArr[i11 + 1] & 536870912) == 0) {
                                    i9++;
                                }
                                E = i10;
                            }
                            i4 = E;
                            if (mutableIntSet == null) {
                                int[] iArr2 = IntSetKt.a;
                                mutableIntSet = new MutableIntSet();
                            }
                            if (mutableIntList == null) {
                                mutableIntList = new MutableIntList();
                            }
                            mutableIntSet.b(i8);
                            mutableIntList.b(i8);
                            mutableIntList.b(f);
                            f++;
                            E = i4;
                        }
                    } else {
                        ComposerKt.b("Inconsistent composition");
                        f7.h();
                        return;
                    }
                }
                i4 = E;
                function22.n(Integer.valueOf(f), obj);
                f++;
                E = i4;
            }
            int i12 = E;
            if (i6 < p) {
                E = E(this.b, i6);
            } else {
                E = -1;
            }
            if (E != i5) {
                int i13 = i12;
                while (true) {
                    if (mutableIntList != null && mutableIntSet != null && mutableIntSet.f(i5)) {
                        int i14 = mutableIntList.b;
                        int i15 = i14 / 2;
                        int i16 = 0;
                        int i17 = 0;
                        while (i16 < i15) {
                            int i18 = i16 * 2;
                            int i19 = p;
                            int a = mutableIntList.a(i18);
                            if (a == i5) {
                                int a2 = mutableIntList.a(i18 + 1);
                                function22.n(Integer.valueOf(a2), this.c[h(a2)]);
                            } else if (i18 != i17) {
                                int i20 = i17 + 1;
                                mutableIntList.e(i17, a);
                                i17 += 2;
                                mutableIntList.e(i20, mutableIntList.a(i18 + 1));
                            } else {
                                i17 += 2;
                            }
                            i16++;
                            function22 = function2;
                            p = i19;
                        }
                        i2 = p;
                        if (i17 != i14) {
                            if (i17 < 0 || i17 > (i3 = mutableIntList.b) || i14 < 0 || i14 > i3) {
                                break loop0;
                            }
                            if (i14 >= i17) {
                                if (i14 != i17) {
                                    if (i14 < i3) {
                                        int[] iArr3 = mutableIntList.a;
                                        ArraysKt.f(i17, i14, i3, iArr3, iArr3);
                                    }
                                    mutableIntList.b -= i14 - i17;
                                }
                            } else {
                                u2.g("The end index must be < start index");
                                return;
                            }
                        }
                    } else {
                        i2 = p;
                    }
                    if (i5 != i && i13 != E) {
                        i5 = i13;
                        p = i2;
                        i13 = E(this.b, i13);
                        function22 = function2;
                    }
                }
            } else {
                i2 = p;
            }
            function22 = function2;
            i5 = i6;
            p = i2;
        }
    }

    public final int o() {
        return this.b.length / 5;
    }

    public final int p() {
        return o() - this.h;
    }

    public final Object q(int i) {
        int r = r(i);
        int[] iArr = this.b;
        int i2 = (r * 5) + 1;
        if ((iArr[i2] & 268435456) != 0) {
            return this.c[Integer.bitCount(iArr[i2] >> 29) + g(iArr, r)];
        }
        return Composer.Companion.a;
    }

    public final int r(int i) {
        int i2;
        int i3 = this.h;
        if (i < this.g) {
            i2 = 0;
        } else {
            i2 = 1;
        }
        return (i3 * i2) + i;
    }

    public final int s(int i) {
        return this.b[r(i) * 5];
    }

    public final Object t(int i) {
        int r = r(i);
        int[] iArr = this.b;
        int i2 = r * 5;
        int i3 = iArr[i2 + 1];
        if ((536870912 & i3) != 0) {
            return this.c[Integer.bitCount(i3 >> 30) + iArr[i2 + 4]];
        }
        return null;
    }

    public final String toString() {
        int i = this.t;
        int i2 = this.u;
        int p = p();
        int i3 = this.g;
        int i4 = this.h + i3;
        StringBuilder k = jb.k("SlotWriter(current = ", i, " end=", i2, " size = ");
        k.append(p);
        k.append(" gap=");
        k.append(i3);
        k.append("-");
        return jb.i(k, i4, ")");
    }

    public final int u(int i) {
        return this.b[(r(i) * 5) + 3];
    }

    public final boolean v(int i, int i2) {
        int o;
        int u;
        if (i2 == this.v) {
            o = this.u;
        } else {
            IntStack intStack = this.p;
            if (i2 > intStack.a(0)) {
                u = u(i2);
            } else {
                int[] iArr = intStack.a;
                int min = Math.min(iArr.length, intStack.b);
                int i3 = 0;
                while (true) {
                    if (i3 < min) {
                        if (iArr[i3] == i2) {
                            break;
                        }
                        i3++;
                    } else {
                        i3 = -1;
                        break;
                    }
                }
                if (i3 < 0) {
                    u = u(i2);
                } else {
                    o = (o() - this.h) - this.q.a[i3];
                }
            }
            o = u + i2;
        }
        if (i <= i2 || i >= o) {
            return false;
        }
        return true;
    }

    public final void w(int i) {
        int i2;
        if (i > 0) {
            int i3 = this.t;
            B(i3);
            int i4 = this.g;
            int i5 = this.h;
            int[] iArr = this.b;
            int length = iArr.length / 5;
            int i6 = length - i5;
            int i7 = 0;
            if (i5 < i) {
                int max = Math.max(Math.max(length * 2, i6 + i), 32);
                int[] iArr2 = new int[max * 5];
                int i8 = max - i6;
                ArraysKt.f(0, 0, i4 * 5, iArr, iArr2);
                ArraysKt.f((i4 + i8) * 5, (i5 + i4) * 5, length * 5, iArr, iArr2);
                this.b = iArr2;
                i5 = i8;
            }
            int i9 = this.u;
            if (i9 >= i4) {
                this.u = i9 + i;
            }
            int i10 = i4 + i;
            this.g = i10;
            this.h = i5 - i;
            if (i6 > 0) {
                i2 = f(i3 + i);
            } else {
                i2 = 0;
            }
            if (this.m >= i4) {
                i7 = this.k;
            }
            int i11 = i(i2, i7, this.l, this.c.length);
            for (int i12 = i4; i12 < i10; i12++) {
                this.b[(i12 * 5) + 4] = i11;
            }
            int i13 = this.m;
            if (i13 >= i4) {
                this.m = i13 + i;
            }
        }
    }

    public final void x(int i, int i2) {
        if (i > 0) {
            C(this.i, i2);
            int i3 = this.k;
            int i4 = this.l;
            if (i4 < i) {
                Object[] objArr = this.c;
                int length = objArr.length;
                int i5 = length - i4;
                int max = Math.max(Math.max(length * 2, i5 + i), 32);
                Object[] objArr2 = new Object[max];
                for (int i6 = 0; i6 < max; i6++) {
                    objArr2[i6] = null;
                }
                int i7 = max - i5;
                int i8 = i4 + i3;
                System.arraycopy(objArr, 0, objArr2, 0, i3);
                System.arraycopy(objArr, i8, objArr2, i3 + i7, length - i8);
                this.c = objArr2;
                i4 = i7;
            }
            int i9 = this.j;
            if (i9 >= i3) {
                this.j = i9 + i;
            }
            this.k = i3 + i;
            this.l = i4 - i;
        }
    }

    public final boolean y(int i) {
        if ((this.b[(r(i) * 5) + 1] & 1073741824) != 0) {
            return true;
        }
        return false;
    }
}
