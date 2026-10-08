package androidx.core.graphics;

import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TypefaceCompatApi31Impl extends TypefaceCompatApi29Impl {
    @Override // androidx.core.graphics.TypefaceCompatApi29Impl
    public final Font g(FontsContractCompat.FontInfo fontInfo) {
        String str;
        Font g;
        Uri uri = fontInfo.a;
        boolean equals = Objects.equals(uri.getScheme(), "systemfont");
        String str2 = fontInfo.e;
        if (equals) {
            str = uri.getAuthority();
        } else {
            str = null;
        }
        if (str != null) {
            Typeface create = Typeface.create(str, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create == null || create.equals(create2)) {
                create = null;
            }
            if (create != null && (g = TypefaceCompat.g(create)) != null) {
                if (TextUtils.isEmpty(str2)) {
                    return g;
                }
                try {
                    return new Font.Builder(g).setFontVariationSettings(str2).build();
                } catch (IOException unused) {
                    Log.e("TypefaceCompatApi31Impl", "Failed to clone Font instance. Fall back to provider font.");
                    return null;
                }
            }
        }
        return null;
    }
}
