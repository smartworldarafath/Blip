package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.reflect.KCallable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CallableReference implements KCallable, Serializable {
    public static final Object p = null;
    public transient KCallable j;
    public final Object k;
    public final Class l;
    public final String m;
    public final String n;
    public final boolean o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NoReceiver implements Serializable {
        public static final NoReceiver j = new Object();
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z) {
        this.k = obj;
        this.l = cls;
        this.m = str;
        this.n = str2;
        this.o = z;
    }

    public abstract KCallable d();

    public final ClassBasedDeclarationContainer e() {
        boolean z = this.o;
        Class cls = this.l;
        if (z) {
            Reflection.a.getClass();
            return new PackageReference(cls);
        }
        return Reflection.a(cls);
    }
}
