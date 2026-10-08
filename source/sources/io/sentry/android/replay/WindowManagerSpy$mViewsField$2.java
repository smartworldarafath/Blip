package io.sentry.android.replay;

import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowManagerSpy$mViewsField$2 extends Lambda implements Function0<Field> {
    public static final WindowManagerSpy$mViewsField$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        Lazy lazy = WindowManagerSpy.a;
        Class cls = (Class) WindowManagerSpy.a.getValue();
        if (cls != null) {
            Field declaredField = cls.getDeclaredField("mViews");
            declaredField.setAccessible(true);
            return declaredField;
        }
        return null;
    }
}
