package androidx.collection;

import android.content.res.ColorStateList;
import androidx.collection.internal.ContainerHelpersKt;
import java.util.Arrays;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    public /* synthetic */ boolean j;
    public /* synthetic */ int[] k;
    public /* synthetic */ Object[] l;
    public /* synthetic */ int m;

    public SparseArrayCompat(int i) {
        int i2;
        int i3 = 4;
        while (true) {
            i2 = 40;
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (40 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.k = new int[i5];
        this.l = new Object[i5];
    }

    public final void a(int i, ColorStateList colorStateList) {
        int i2 = this.m;
        if (i2 != 0 && i <= this.k[i2 - 1]) {
            e(i, colorStateList);
            return;
        }
        if (this.j && i2 >= this.k.length) {
            SparseArrayCompatKt.a(this);
        }
        int i3 = this.m;
        if (i3 >= this.k.length) {
            int i4 = (i3 + 1) * 4;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 4;
            this.k = Arrays.copyOf(this.k, i7);
            this.l = Arrays.copyOf(this.l, i7);
        }
        this.k[i3] = i;
        this.l[i3] = colorStateList;
        this.m = i3 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SparseArrayCompat clone() {
        Object clone = super.clone();
        clone.getClass();
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) clone;
        sparseArrayCompat.k = (int[]) this.k.clone();
        sparseArrayCompat.l = (Object[]) this.l.clone();
        return sparseArrayCompat;
    }

    public final Object c(int i) {
        Object obj;
        int a = ContainerHelpersKt.a(this.m, i, this.k);
        if (a >= 0 && (obj = this.l[a]) != SparseArrayCompatKt.a) {
            return obj;
        }
        return null;
    }

    public final int d(int i) {
        if (this.j) {
            SparseArrayCompatKt.a(this);
        }
        return this.k[i];
    }

    public final void e(int i, Object obj) {
        int a = ContainerHelpersKt.a(this.m, i, this.k);
        if (a >= 0) {
            this.l[a] = obj;
            return;
        }
        int i2 = ~a;
        int i3 = this.m;
        if (i2 < i3) {
            Object[] objArr = this.l;
            if (objArr[i2] == SparseArrayCompatKt.a) {
                this.k[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (this.j && i3 >= this.k.length) {
            SparseArrayCompatKt.a(this);
            i2 = ~ContainerHelpersKt.a(this.m, i, this.k);
        }
        int i4 = this.m;
        if (i4 >= this.k.length) {
            int i5 = (i4 + 1) * 4;
            int i6 = 4;
            while (true) {
                if (i6 >= 32) {
                    break;
                }
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
                i6++;
            }
            int i8 = i5 / 4;
            this.k = Arrays.copyOf(this.k, i8);
            this.l = Arrays.copyOf(this.l, i8);
        }
        int i9 = this.m;
        if (i9 - i2 != 0) {
            int[] iArr = this.k;
            int i10 = i2 + 1;
            ArraysKt.f(i10, i2, i9, iArr, iArr);
            Object[] objArr2 = this.l;
            ArraysKt.g(i10, i2, this.m, objArr2, objArr2);
        }
        this.k[i2] = i;
        this.l[i2] = obj;
        this.m++;
    }

    public final int f() {
        if (this.j) {
            SparseArrayCompatKt.a(this);
        }
        return this.m;
    }

    public final Object g(int i) {
        if (this.j) {
            SparseArrayCompatKt.a(this);
        }
        Object[] objArr = this.l;
        if (i < objArr.length) {
            return objArr[i];
        }
        throw new ArrayIndexOutOfBoundsException();
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
            sb.append(d(i2));
            sb.append('=');
            Object g = g(i2);
            if (g != this) {
                sb.append(g);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
