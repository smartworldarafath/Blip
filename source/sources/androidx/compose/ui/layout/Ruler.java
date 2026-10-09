package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Ruler {
    public final Function2 a;

    public Ruler(Function2 function2) {
        this.a = function2;
    }

    public abstract float a(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2);
}
