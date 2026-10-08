package androidx.compose.ui.focus;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.viewinterop.a;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface FocusProperties {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final Rect a = new Rect(Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    boolean a();

    void c(boolean z);

    default void b(a aVar) {
    }

    default void d(Function1 function1) {
    }

    default void e(Rect rect) {
    }
}
