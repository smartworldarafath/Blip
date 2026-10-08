package io.sentry.android.replay;

import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowManagerSpy$windowManagerInstance$2 extends Lambda implements Function0<Object> {
    public static final WindowManagerSpy$windowManagerInstance$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        Method method;
        Lazy lazy = WindowManagerSpy.a;
        Class cls = (Class) WindowManagerSpy.a.getValue();
        if (cls == null || (method = cls.getMethod("getInstance", null)) == null) {
            return null;
        }
        return method.invoke(null, null);
    }
}
