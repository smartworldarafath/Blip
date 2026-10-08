package coil3.request;

import android.graphics.Bitmap;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.transition.Transition$Factory;
import coil3.util.Utils_androidKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImageRequests_androidKt {
    public static final Extras.Key a = new Extras.Key(Transition$Factory.a);
    public static final Extras.Key b = new Extras.Key(Utils_androidKt.b);
    public static final Extras.Key c = new Extras.Key(null);
    public static final Extras.Key d;
    public static final Extras.Key e;
    public static final Extras.Key f;
    public static final Extras.Key g;
    public static final Extras.Key h;

    static {
        Boolean bool = Boolean.TRUE;
        d = new Extras.Key(bool);
        e = new Extras.Key(null);
        f = new Extras.Key(bool);
        g = new Extras.Key(bool);
        h = new Extras.Key(Boolean.FALSE);
    }

    public static final Bitmap.Config a(Options options) {
        return (Bitmap.Config) ExtrasKt.b(options, b);
    }
}
