package coil3.key;

import android.content.res.Configuration;
import android.graphics.Bitmap;
import coil3.Uri;
import coil3.request.Options;
import coil3.util.Utils_androidKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidResourceUriKeyer implements Keyer<Uri> {
    @Override // coil3.key.Keyer
    public final String a(Object obj, Options options) {
        Uri uri = (Uri) obj;
        if (Intrinsics.a(uri.c, "android.resource")) {
            Configuration configuration = options.a.getResources().getConfiguration();
            Bitmap.Config[] configArr = Utils_androidKt.a;
            return uri + ":" + (configuration.uiMode & 48);
        }
        return null;
    }
}
