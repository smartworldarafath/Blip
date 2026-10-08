package coil3.map;

import android.content.Context;
import android.content.res.Resources;
import coil3.Uri;
import coil3.UriKt;
import coil3.request.Options;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourceIntMapper implements Mapper<Integer, Uri> {
    @Override // coil3.map.Mapper
    public final Uri a(Object obj, Options options) {
        int intValue = ((Number) obj).intValue();
        Context context = options.a;
        try {
            if (context.getResources().getResourceEntryName(intValue) != null) {
                return UriKt.e("android.resource://" + context.getPackageName() + "/" + intValue);
            }
            return null;
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }
}
