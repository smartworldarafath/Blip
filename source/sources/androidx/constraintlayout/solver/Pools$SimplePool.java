package androidx.constraintlayout.solver;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class Pools$SimplePool<T> {
    public final Object[] a = new Object[256];
    public int b;

    public final Object a() {
        int i = this.b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        Object obj = objArr[i2];
        objArr[i2] = null;
        this.b = i2;
        return obj;
    }

    public final boolean b(ArrayRow arrayRow) {
        int i = this.b;
        Object[] objArr = this.a;
        if (i < objArr.length) {
            objArr[i] = arrayRow;
            this.b = i + 1;
            return true;
        }
        return false;
    }
}
