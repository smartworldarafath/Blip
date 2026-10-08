package coil3.util;

import java.util.Locale;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MimeTypeMap {
    public static String a(String str) {
        if (StringsKt.t(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        String str2 = (String) MimeTypesKt.a.get(lowerCase);
        if (str2 == null) {
            return android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(lowerCase);
        }
        return str2;
    }

    public static String b(String str) {
        if (StringsKt.t(str)) {
            return null;
        }
        String O = StringsKt.O(StringsKt.O(str, '#'), '?');
        return a(StringsKt.M(StringsKt.M(O, '/', O), '.', ""));
    }
}
