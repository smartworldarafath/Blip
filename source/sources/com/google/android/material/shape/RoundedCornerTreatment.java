package com.google.android.material.shape;

import com.google.android.material.shape.ShapePath;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RoundedCornerTreatment extends CornerTreatment {
    @Override // com.google.android.material.shape.CornerTreatment
    public final void a(ShapePath shapePath, float f, float f2) {
        shapePath.d(f2 * f, 180.0f, 90.0f);
        float f3 = f2 * 2.0f * f;
        ShapePath.PathArcOperation pathArcOperation = new ShapePath.PathArcOperation(0.0f, 0.0f, f3, f3);
        pathArcOperation.f = 180.0f;
        pathArcOperation.g = 90.0f;
        shapePath.f.add(pathArcOperation);
        ShapePath.ArcShadowOperation arcShadowOperation = new ShapePath.ArcShadowOperation(pathArcOperation);
        shapePath.a(180.0f);
        shapePath.g.add(arcShadowOperation);
        shapePath.d = 270.0f;
        float f4 = (0.0f + f3) * 0.5f;
        float f5 = (f3 - 0.0f) / 2.0f;
        shapePath.b = (((float) Math.cos(Math.toRadians(270.0d))) * f5) + f4;
        shapePath.c = (f5 * ((float) Math.sin(Math.toRadians(270.0d)))) + f4;
    }
}
