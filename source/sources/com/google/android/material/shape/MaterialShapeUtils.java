package com.google.android.material.shape;

import android.view.View;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.reflect.Field;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialShapeUtils {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.material.shape.CornerTreatment] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.material.shape.CornerTreatment] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.material.shape.CornerTreatment] */
    public static CornerTreatment a(int i) {
        if (i != 0) {
            if (i != 1) {
                return new Object();
            }
            return new Object();
        }
        return new Object();
    }

    public static void b(View view, MaterialShapeDrawable materialShapeDrawable) {
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawable.j.b;
        if (elevationOverlayProvider != null && elevationOverlayProvider.a) {
            float f = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                Field field = ViewCompat.a;
                f += ((View) parent).getElevation();
            }
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.j;
            if (materialShapeDrawableState.l != f) {
                materialShapeDrawableState.l = f;
                materialShapeDrawable.y();
            }
        }
    }
}
