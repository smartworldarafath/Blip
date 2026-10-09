package io.sentry.android.replay;

import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import kotlin.Lazy;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WindowsKt {
    public static final Window a(View view) {
        Field field;
        view.getClass();
        Lazy lazy = WindowSpy.a;
        View rootView = view.getRootView();
        rootView.getClass();
        Class cls = (Class) WindowSpy.a.getValue();
        if (cls != null && cls.isInstance(rootView) && (field = (Field) WindowSpy.b.getValue()) != null) {
            Object obj = field.get(rootView);
            obj.getClass();
            return (Window) obj;
        }
        return null;
    }
}
