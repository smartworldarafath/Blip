package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.a(context, attributeSet, R.attr.textViewStyle, 0), attributeSet, R.attr.textViewStyle);
        Context context2 = getContext();
        TypedValue a = MaterialAttributes.a(context2, net.blip.android.R.attr.textAppearanceLineHeightEnabled);
        if (a != null && a.type == 18 && a.data == 0) {
            return;
        }
        Resources.Theme theme = context2.getTheme();
        int[] iArr = R$styleable.n;
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
        int f = f(context2, obtainStyledAttributes, 1, 2);
        obtainStyledAttributes.recycle();
        if (f == -1) {
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
            int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, R$styleable.m);
                int f2 = f(getContext(), obtainStyledAttributes3, 1, 2);
                obtainStyledAttributes3.recycle();
                if (f2 >= 0) {
                    setLineHeight(f2);
                }
            }
        }
    }

    public static int f(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            int i3 = iArr[i2];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i3, typedValue) && typedValue.type == 2) {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                obtainStyledAttributes.recycle();
                i = dimensionPixelSize;
            } else {
                i = typedArray.getDimensionPixelSize(i3, -1);
            }
        }
        return i;
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        TypedValue a = MaterialAttributes.a(context, net.blip.android.R.attr.textAppearanceLineHeightEnabled);
        if (a != null && a.type == 18 && a.data == 0) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(i, R$styleable.m);
        int f = f(getContext(), obtainStyledAttributes, 1, 2);
        obtainStyledAttributes.recycle();
        if (f >= 0) {
            setLineHeight(f);
        }
    }
}
