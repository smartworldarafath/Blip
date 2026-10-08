package coil3;

import android.content.Context;
import coil3.Extras;
import coil3.request.ImageRequest;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ImageLoader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Context a;
        public final ImageRequest.Defaults b = ImageRequest.Defaults.o;
        public final Extras.Builder c = new Extras.Builder();

        public Builder(Context context) {
            this.a = context.getApplicationContext();
        }
    }
}
