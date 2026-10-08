package androidx.core.util;

import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Pools$SimplePool<T> {
    public final Object[] a;
    public int b;

    public Pools$SimplePool(int i) {
        if (i > 0) {
            this.a = new Object[i];
        } else {
            u2.g("The max pool size must be > 0");
            throw null;
        }
    }

    public Object a() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        Object obj = objArr[i2];
        obj.getClass();
        objArr[i2] = null;
        this.b--;
        return obj;
    }

    public boolean b(Object obj) {
        obj.getClass();
        int i = this.b;
        int i2 = 0;
        while (true) {
            Object[] objArr = this.a;
            if (i2 < i) {
                if (objArr[i2] != obj) {
                    i2++;
                } else {
                    u2.l("Already in the pool!");
                    return false;
                }
            } else {
                int i3 = this.b;
                if (i3 >= objArr.length) {
                    return false;
                }
                objArr[i3] = obj;
                this.b = i3 + 1;
                return true;
            }
        }
    }
}
