package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontFamilyResolver_androidKt {
    public static final FontFamilyResolverImpl a(Context context) {
        int i;
        AndroidFontLoader androidFontLoader = new AndroidFontLoader(context);
        if (Build.VERSION.SDK_INT >= 31) {
            i = FontWeightAdjustmentHelperApi31.a.a(context);
        } else {
            i = 0;
        }
        return new FontFamilyResolverImpl(androidFontLoader, new AndroidFontResolveInterceptor(i));
    }
}
