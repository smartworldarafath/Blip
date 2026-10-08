package okhttp3.internal.platform.android;

import java.lang.reflect.Method;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CloseGuard {
    public final Method a;
    public final Method b;
    public final Method c;

    public CloseGuard(Method method, Method method2, Method method3) {
        this.a = method;
        this.b = method2;
        this.c = method3;
    }
}
