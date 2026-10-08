package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AppCompatImageHelper {
    public final ImageView a;
    public TintInfo b;
    public int c = 0;

    public AppCompatImageHelper(ImageView imageView) {
        this.a = imageView;
    }

    public final void a() {
        TintInfo tintInfo;
        ImageView imageView = this.a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            DrawableUtils.a(drawable);
        }
        if (drawable != null && (tintInfo = this.b) != null) {
            AppCompatDrawableManager.d(drawable, tintInfo, imageView.getDrawableState());
        }
    }

    public final void b(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = this.a;
        Context context = imageView.getContext();
        int[] iArr = R$styleable.e;
        TintTypedArray d = TintTypedArray.d(context, attributeSet, iArr, i);
        TypedArray typedArray = d.b;
        ViewCompat.m(imageView, imageView.getContext(), iArr, attributeSet, d.b, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = AppCompatResources.b(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                DrawableUtils.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                imageView.setImageTintList(d.a(2));
            }
            if (typedArray.hasValue(3)) {
                imageView.setImageTintMode(DrawableUtils.b(typedArray.getInt(3, -1), null));
            }
            d.e();
        } catch (Throwable th) {
            d.e();
            throw th;
        }
    }
}
