package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WindowInsetsKt {
    public static final FixedIntInsets a = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.layout.WindowInsets, java.lang.Object] */
    public static WindowInsets a() {
        return new Object();
    }

    public static final PaddingValues b(AndroidWindowInsets androidWindowInsets, Composer composer) {
        return new InsetsPaddingValues(androidWindowInsets, (Density) ((GapComposer) composer).j(CompositionLocalsKt.h));
    }

    public static final PaddingValues c(WindowInsets windowInsets, SubcomposeMeasureScope subcomposeMeasureScope) {
        return new InsetsPaddingValues(windowInsets, subcomposeMeasureScope);
    }

    public static final WindowInsets d(WindowInsets windowInsets, WindowInsets windowInsets2) {
        return new ExcludeInsets(windowInsets, windowInsets2);
    }
}
