package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    public /* synthetic */ boolean j;
    public /* synthetic */ long[] k;
    public /* synthetic */ Object[] l;
    public /* synthetic */ int m;

    public LongSparseArray(int i) {
        if (i == 0) {
            this.k = ContainerHelpersKt.b;
            this.l = ContainerHelpersKt.c;
            return;
        }
        int i2 = i * 8;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 8;
        this.k = new long[i5];
        this.l = new Object[i5];
    }

    public final void a() {
        int i = this.m;
        Object[] objArr = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.m = 0;
        this.j = false;
    }

    public final Object b(long j) {
        Object obj;
        int b = ContainerHelpersKt.b(this.k, this.m, j);
        if (b >= 0 && (obj = this.l[b]) != LongSparseArrayKt.a) {
            return obj;
        }
        return null;
    }

    public final long c(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.m)) {
            if (this.j) {
                long[] jArr = this.k;
                Object[] objArr = this.l;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj = objArr[i4];
                    if (obj != LongSparseArrayKt.a) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr[i3] = obj;
                            objArr[i4] = null;
                        }
                        i3++;
                    }
                }
                this.j = false;
                this.m = i3;
            }
            return this.k[i];
        }
        u2.g(q.g(i, "Expected index to be within 0..size()-1, but was "));
        return 0L;
    }

    public final Object clone() {
        Object clone = super.clone();
        clone.getClass();
        LongSparseArray longSparseArray = (LongSparseArray) clone;
        longSparseArray.k = (long[]) this.k.clone();
        longSparseArray.l = (Object[]) this.l.clone();
        return longSparseArray;
    }

    public final void d(long j, Object obj) {
        int b = ContainerHelpersKt.b(this.k, this.m, j);
        if (b >= 0) {
            this.l[b] = obj;
            return;
        }
        int i = ~b;
        int i2 = this.m;
        Object obj2 = LongSparseArrayKt.a;
        if (i < i2) {
            Object[] objArr = this.l;
            if (objArr[i] == obj2) {
                this.k[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.j) {
            long[] jArr = this.k;
            if (i2 >= jArr.length) {
                Object[] objArr2 = this.l;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj3 = objArr2[i4];
                    if (obj3 != obj2) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr2[i3] = obj3;
                            objArr2[i4] = null;
                        }
                        i3++;
                    }
                }
                this.j = false;
                this.m = i3;
                i = ~ContainerHelpersKt.b(this.k, i3, j);
            }
        }
        int i5 = this.m;
        if (i5 >= this.k.length) {
            int i6 = (i5 + 1) * 8;
            int i7 = 4;
            while (true) {
                if (i7 >= 32) {
                    break;
                }
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
                i7++;
            }
            int i9 = i6 / 8;
            this.k = Arrays.copyOf(this.k, i9);
            this.l = Arrays.copyOf(this.l, i9);
        }
        int i10 = this.m;
        if (i10 - i != 0) {
            long[] jArr2 = this.k;
            int i11 = i + 1;
            ArraysKt.h(jArr2, jArr2, i11, i, i10);
            Object[] objArr3 = this.l;
            ArraysKt.g(i11, i, this.m, objArr3, objArr3);
        }
        this.k[i] = j;
        this.l[i] = obj;
        this.m++;
    }

    public final void e(long j) {
        int b = ContainerHelpersKt.b(this.k, this.m, j);
        if (b >= 0) {
            Object[] objArr = this.l;
            Object obj = objArr[b];
            Object obj2 = LongSparseArrayKt.a;
            if (obj != obj2) {
                objArr[b] = obj2;
                this.j = true;
            }
        }
    }

    public final int f() {
        if (this.j) {
            int i = this.m;
            long[] jArr = this.k;
            Object[] objArr = this.l;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != LongSparseArrayKt.a) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.j = false;
            this.m = i2;
        }
        return this.m;
    }

    public final Object g(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.m)) {
            if (this.j) {
                long[] jArr = this.k;
                Object[] objArr = this.l;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj = objArr[i4];
                    if (obj != LongSparseArrayKt.a) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr[i3] = obj;
                            objArr[i4] = null;
                        }
                        i3++;
                    }
                }
                this.j = false;
                this.m = i3;
            }
            return this.l[i];
        }
        u2.g(q.g(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public final String toString() {
        if (f() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.m * 28);
        sb.append('{');
        int i = this.m;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(c(i2));
            sb.append('=');
            Object g = g(i2);
            if (g != sb) {
                sb.append(g);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public /* synthetic */ LongSparseArray(Object obj) {
        this(10);
    }
}
