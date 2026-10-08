package com.google.android.material.theme.overlay;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.view.ContextThemeWrapper;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialThemeOverlay {
    public static final int[] a = {R.attr.theme, net.blip.android.R.attr.theme};
    public static final int[] b = {net.blip.android.R.attr.materialThemeOverlay};

    /* JADX WARN: Type inference failed for: r4v5, types: [android.content.Context, android.content.ContextWrapper, androidx.appcompat.view.ContextThemeWrapper] */
    public static Context a(Context context, AttributeSet attributeSet, int i, int i2) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        if ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).a == resourceId) {
            z = true;
        } else {
            z = false;
        }
        if (resourceId != 0 && !z) {
            ?? contextWrapper = new ContextWrapper(context);
            contextWrapper.a = resourceId;
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, a);
            int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
            int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
            obtainStyledAttributes2.recycle();
            if (resourceId2 == 0) {
                resourceId2 = resourceId3;
            }
            if (resourceId2 != 0) {
                contextWrapper.getTheme().applyStyle(resourceId2, true);
            }
            return contextWrapper;
        }
        return context;
    }
}
