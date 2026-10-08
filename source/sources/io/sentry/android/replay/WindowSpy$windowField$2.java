package io.sentry.android.replay;

import android.os.Build;
import android.util.Log;
import java.lang.reflect.Field;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowSpy$windowField$2 extends Lambda implements Function0<Field> {
    public static final WindowSpy$windowField$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        Class cls = (Class) WindowSpy.a.getValue();
        if (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField("mWindow");
                declaredField.setAccessible(true);
                return declaredField;
            } catch (NoSuchFieldException e) {
                Log.d("WindowSpy", "Unexpected exception retrieving " + cls + "#mWindow on API " + Build.VERSION.SDK_INT, e);
            }
        }
        return null;
    }
}
