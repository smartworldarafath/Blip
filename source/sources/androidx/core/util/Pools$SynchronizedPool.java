package androidx.core.util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Pools$SynchronizedPool<T> extends Pools$SimplePool<T> {
    public final Object c;

    public Pools$SynchronizedPool() {
        super(12);
        this.c = new Object();
    }

    @Override // androidx.core.util.Pools$SimplePool
    public final Object a() {
        Object a;
        synchronized (this.c) {
            a = super.a();
        }
        return a;
    }

    @Override // androidx.core.util.Pools$SimplePool
    public final boolean b(Object obj) {
        boolean b;
        obj.getClass();
        synchronized (this.c) {
            b = super.b(obj);
        }
        return b;
    }
}
