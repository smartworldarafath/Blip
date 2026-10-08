package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutIdKt {
    public static final Object a(Measurable measurable) {
        LayoutIdParentData layoutIdParentData;
        Object a = measurable.a();
        if (a instanceof LayoutIdParentData) {
            layoutIdParentData = (LayoutIdParentData) a;
        } else {
            layoutIdParentData = null;
        }
        if (layoutIdParentData == null) {
            return null;
        }
        return ((LayoutIdModifier) layoutIdParentData).x;
    }

    public static final Modifier b(Modifier modifier, String str) {
        return modifier.l(new LayoutIdElement(str));
    }
}
