package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PaddingKt {
    public static final float a(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        if (layoutDirection == LayoutDirection.j) {
            return paddingValues.c(layoutDirection);
        }
        return paddingValues.b(layoutDirection);
    }

    public static final float b(PaddingValues paddingValues, LayoutDirection layoutDirection) {
        if (layoutDirection == LayoutDirection.j) {
            return paddingValues.b(layoutDirection);
        }
        return paddingValues.c(layoutDirection);
    }

    public static final Modifier c(Modifier modifier, PaddingValues paddingValues) {
        return modifier.l(new PaddingValuesElement(paddingValues));
    }

    public static final Modifier d(Modifier modifier, float f) {
        return modifier.l(new PaddingElement(f, f, f, f));
    }

    public static final Modifier e(Modifier modifier, float f, float f2) {
        return modifier.l(new PaddingElement(f, f2, f, f2));
    }

    public static Modifier f(Modifier modifier, float f, float f2, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        return e(modifier, f, f2);
    }

    public static final Modifier g(Modifier modifier, float f, float f2, float f3, float f4) {
        return modifier.l(new PaddingElement(f, f2, f3, f4));
    }

    public static Modifier h(Modifier modifier, float f, float f2, float f3, float f4, int i) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return g(modifier, f, f2, f3, f4);
    }
}
