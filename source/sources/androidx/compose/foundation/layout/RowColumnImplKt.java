package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RowColumnImplKt {
    public static final RowColumnParentData a(IntrinsicMeasurable intrinsicMeasurable) {
        Object a = intrinsicMeasurable.a();
        if (a instanceof RowColumnParentData) {
            return (RowColumnParentData) a;
        }
        return null;
    }

    public static final float b(RowColumnParentData rowColumnParentData) {
        if (rowColumnParentData != null) {
            return rowColumnParentData.a;
        }
        return 0.0f;
    }
}
