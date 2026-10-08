package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface RowColumnMeasurePolicy {
    void c(int i, MeasureScope measureScope, int[] iArr, int[] iArr2);

    long d(int i, int i2, int i3, boolean z);

    int f(Placeable placeable);

    MeasureResult h(Placeable[] placeableArr, MeasureScope measureScope, int i, int[] iArr, int i2, int i3);

    int j(Placeable placeable);
}
