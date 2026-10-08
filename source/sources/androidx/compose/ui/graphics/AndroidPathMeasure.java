package androidx.compose.ui.graphics;

import defpackage.fe;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPathMeasure implements PathMeasure {
    public final android.graphics.PathMeasure a;

    public AndroidPathMeasure(android.graphics.PathMeasure pathMeasure) {
        this.a = pathMeasure;
    }

    public final boolean a(float f, float f2, AndroidPath androidPath) {
        if (androidPath != null) {
            return this.a.getSegment(f, f2, androidPath.a, true);
        }
        fe.t("Unable to obtain android.graphics.Path");
        return false;
    }
}
