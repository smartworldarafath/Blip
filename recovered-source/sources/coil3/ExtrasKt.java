package coil3;

import coil3.Extras;
import coil3.request.ImageRequest;
import coil3.request.Options;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ExtrasKt {
    public static final Object a(ImageRequest imageRequest, Extras.Key key) {
        Object obj = imageRequest.r.a.get(key);
        if (obj == null) {
            Object obj2 = imageRequest.t.n.a.get(key);
            if (obj2 == null) {
                return key.a;
            }
            return obj2;
        }
        return obj;
    }

    public static final Object b(Options options, Extras.Key key) {
        Object obj = options.j.a.get(key);
        if (obj == null) {
            return key.a;
        }
        return obj;
    }
}
