package androidx.compose.ui.text.font;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.FontVariation;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.core.content.res.ResourcesCompat;
import defpackage.wc;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidFontLoader {
    public final Context a;

    public AndroidFontLoader(Context context) {
        this.a = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Typeface a(Font font) {
        int i;
        String str;
        boolean z;
        float a;
        int i2;
        if (!(font instanceof ResourceFont)) {
            return null;
        }
        Context context = this.a;
        Typeface b = ResourcesCompat.b(context, R.font.manrope);
        b.getClass();
        List list = ((ResourceFont) font).b.a;
        ThreadLocal threadLocal = TypefaceCompatApi26.a;
        if (b == null) {
            return null;
        }
        if (list.isEmpty()) {
            return b;
        }
        ThreadLocal threadLocal2 = TypefaceCompatApi26.a;
        Paint paint = (Paint) threadLocal2.get();
        if (paint == null) {
            paint = new Paint();
            threadLocal2.set(paint);
        }
        paint.setFontVariationSettings(null);
        paint.setTypeface(b);
        Density a2 = AndroidDensity_androidKt.a(context);
        int i3 = 0;
        if (Build.VERSION.SDK_INT >= 31) {
            i2 = context.getResources().getConfiguration().fontWeightAdjustment;
            if (i2 != Integer.MAX_VALUE) {
                i = context.getResources().getConfiguration().fontWeightAdjustment;
                if (i != 0) {
                    str = ListUtilsKt.a(list, null, new wc(3, a2), 31);
                } else {
                    int size = list.size();
                    String str2 = "";
                    boolean z2 = false;
                    while (i3 < size) {
                        FontVariation.Setting setting = (FontVariation.Setting) list.get(i3);
                        if (Intrinsics.a(setting.b(), "wght")) {
                            a = RangesKt.c(setting.a() + i, 1.0f, 1000.0f);
                            z = true;
                        } else {
                            z = z2;
                            a = setting.a();
                        }
                        if (i3 != 0) {
                            str2 = ((Object) str2) + ",";
                        }
                        str2 = ((Object) str2) + "'" + setting.b() + "' " + a;
                        i3++;
                        z2 = z;
                    }
                    if (!z2) {
                        float c = RangesKt.c(i + 400.0f, 1.0f, 1000.0f);
                        if (!list.isEmpty()) {
                            str2 = ((Object) str2) + ",";
                        }
                        str = ((Object) str2) + "'wght' " + c;
                    } else {
                        str = str2;
                    }
                }
                paint.setFontVariationSettings(str);
                return paint.getTypeface();
            }
        }
        i = 0;
        if (i != 0) {
        }
        paint.setFontVariationSettings(str);
        return paint.getTypeface();
    }
}
