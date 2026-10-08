package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TintTypedArray {
    public final Context a;
    public final TypedArray b;
    public TypedValue c;

    public TintTypedArray(Context context, TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public static TintTypedArray d(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public final ColorStateList a(int i) {
        int resourceId;
        ColorStateList a;
        TypedArray typedArray = this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (a = AppCompatResources.a(this.a, resourceId)) != null) {
            return a;
        }
        return typedArray.getColorStateList(i);
    }

    public final Drawable b(int i) {
        int resourceId;
        TypedArray typedArray = this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            return AppCompatResources.b(this.a, resourceId);
        }
        return typedArray.getDrawable(i);
    }

    public final Typeface c(int i, int i2, ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId != 0) {
            if (this.c == null) {
                this.c = new TypedValue();
            }
            TypedValue typedValue = this.c;
            ThreadLocal threadLocal = ResourcesCompat.a;
            Context context = this.a;
            if (context.isRestricted()) {
                return null;
            }
            return ResourcesCompat.c(context, resourceId, typedValue, i2, fontCallback, true, false);
        }
        return null;
    }

    public final void e() {
        this.b.recycle();
    }
}
