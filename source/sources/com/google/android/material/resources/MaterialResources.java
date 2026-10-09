package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.res.ResourcesCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialResources {
    public static ColorStateList a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        ColorStateList a;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (a = AppCompatResources.a(context, resourceId)) != null) {
            return a;
        }
        return typedArray.getColorStateList(i);
    }

    public static ColorStateList b(Context context, TintTypedArray tintTypedArray, int i) {
        int resourceId;
        ColorStateList a;
        TypedArray typedArray = tintTypedArray.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (a = ResourcesCompat.a(context.getResources(), resourceId, context.getTheme())) != null) {
            return a;
        }
        return tintTypedArray.a(i);
    }

    public static Drawable c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (b = AppCompatResources.b(context, resourceId)) != null) {
            return b;
        }
        return typedArray.getDrawable(i);
    }

    public static boolean d(Context context) {
        if (context.getResources().getConfiguration().fontScale >= 1.3f) {
            return true;
        }
        return false;
    }
}
