package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Method;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ModuleNameRetriever {
    public static final Cache a = new Cache(null, null, null);
    public static Cache b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Cache {
        public final Method a;
        public final Method b;
        public final Method c;

        public Cache(Method method, Method method2, Method method3) {
            this.a = method;
            this.b = method2;
            this.c = method3;
        }
    }
}
