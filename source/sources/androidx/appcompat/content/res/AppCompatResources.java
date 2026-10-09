package androidx.appcompat.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.res.ResourcesCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AppCompatResources {
    public static ColorStateList a(Context context, int i) {
        return ResourcesCompat.a(context.getResources(), i, context.getTheme());
    }

    public static Drawable b(Context context, int i) {
        return ResourceManagerInternal.b().c(context, i);
    }
}
