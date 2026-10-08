package androidx.window.layout;

import androidx.window.layout.util.DensityCompatHelper;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowMetricsCalculatorCompat implements WindowMetricsCalculator {
    public final DensityCompatHelper b = DensityCompatHelper.Companion.a();

    public WindowMetricsCalculatorCompat() {
        CollectionsKt.h(1, 2, 4, 8, 16, 32, 64, 128);
    }
}
