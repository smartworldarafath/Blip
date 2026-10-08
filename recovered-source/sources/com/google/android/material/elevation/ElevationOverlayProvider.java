package com.google.android.material.elevation;

import android.content.Context;
import android.util.TypedValue;
import com.google.android.material.resources.MaterialAttributes;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ElevationOverlayProvider {
    public final boolean a;
    public final int b;
    public final int c;
    public final float d;

    public ElevationOverlayProvider(Context context) {
        boolean z;
        int i;
        TypedValue a = MaterialAttributes.a(context, R.attr.elevationOverlayEnabled);
        if (a != null && a.type == 18 && a.data != 0) {
            z = true;
        } else {
            z = false;
        }
        this.a = z;
        TypedValue a2 = MaterialAttributes.a(context, R.attr.elevationOverlayColor);
        if (a2 != null) {
            i = a2.data;
        } else {
            i = 0;
        }
        this.b = i;
        TypedValue a3 = MaterialAttributes.a(context, R.attr.colorSurface);
        this.c = a3 != null ? a3.data : 0;
        this.d = context.getResources().getDisplayMetrics().density;
    }
}
