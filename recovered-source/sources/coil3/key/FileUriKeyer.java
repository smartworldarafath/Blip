package coil3.key;

import android.graphics.Bitmap;
import coil3.ExtrasKt;
import coil3.Uri;
import coil3.UriKt;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.util.Utils_androidKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileUriKeyer implements Keyer<Uri> {
    @Override // coil3.key.Keyer
    public final String a(Object obj, Options options) {
        String b;
        Uri uri = (Uri) obj;
        String str = uri.c;
        if ((str == null || str.equals("file")) && uri.e != null) {
            Bitmap.Config[] configArr = Utils_androidKt.a;
            if ((!Intrinsics.a(uri.c, "file") || !Intrinsics.a(CollectionsKt.t(UriKt.c(uri)), "android_asset")) && ((Boolean) ExtrasKt.b(options, ImageRequestsKt.c)).booleanValue() && (b = UriKt.b(uri)) != null) {
                FileSystem fileSystem = options.f;
                String str2 = Path.k;
                return uri + "-" + fileSystem.O(Path.Companion.a(b)).f;
            }
            return null;
        }
        return null;
    }
}
