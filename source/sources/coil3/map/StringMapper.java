package coil3.map;

import coil3.Uri;
import coil3.UriKt;
import coil3.request.Options;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StringMapper implements Mapper<String, Uri> {
    @Override // coil3.map.Mapper
    public final Uri a(Object obj, Options options) {
        return UriKt.e((String) obj);
    }
}
