package net.blip.android;

import android.net.Uri;
import java.io.File;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UriUtilKt {
    public static final Uri a(String str) {
        str.getClass();
        if (!StringsKt.J(str, "content://", true) && !StringsKt.J(str, "file://", true)) {
            return Uri.fromFile(new File(str));
        }
        Uri parse = Uri.parse(str);
        parse.getClass();
        return parse;
    }
}
