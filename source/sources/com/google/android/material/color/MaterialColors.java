package com.google.android.material.color;

import android.graphics.Color;
import android.view.View;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialColors {
    public static int a(View view, int i) {
        return MaterialAttributes.b(i, view.getContext(), view.getClass().getCanonicalName());
    }

    public static int b(float f, int i, int i2) {
        return ColorUtils.b(ColorUtils.d(i2, Math.round(Color.alpha(i2) * f)), i);
    }
}
