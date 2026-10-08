package coil3.fetch;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.util.TypedValue;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
import coil3.ExtrasKt;
import coil3.Image_androidKt;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.DataSource;
import coil3.decode.ResourceMetadata;
import coil3.decode.SourceImageSource;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.DrawableUtils;
import coil3.util.MimeTypeMap;
import coil3.util.Utils_androidKt;
import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Okio;
import okio.RealBufferedSource;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourceUriFetcher implements Fetcher {
    public final Uri a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.a(uri.c, "android.resource")) {
                return null;
            }
            return new ResourceUriFetcher(uri, options);
        }
    }

    public ResourceUriFetcher(Uri uri, Options options) {
        this.a = uri;
        this.b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        Integer S;
        Resources resourcesForApplication;
        Drawable drawable;
        Uri uri = this.a;
        String str = uri.d;
        if (str != null) {
            if (StringsKt.t(str)) {
                str = null;
            }
            if (str != null) {
                String str2 = (String) CollectionsKt.A(UriKt.c(uri));
                if (str2 != null && (S = StringsKt.S(str2)) != null) {
                    int intValue = S.intValue();
                    Options options = this.b;
                    Context context = options.a;
                    if (str.equals(context.getPackageName())) {
                        resourcesForApplication = context.getResources();
                    } else {
                        resourcesForApplication = context.getPackageManager().getResourcesForApplication(str);
                    }
                    TypedValue typedValue = new TypedValue();
                    boolean z = true;
                    resourcesForApplication.getValue(intValue, typedValue, true);
                    String b = MimeTypeMap.b(typedValue.string.toString());
                    if (Intrinsics.a(b, "text/xml")) {
                        if (str.equals(context.getPackageName())) {
                            drawable = AppCompatResources.b(context, intValue);
                            if (drawable == null) {
                                u2.f(q.g(intValue, "Invalid resource ID: "));
                                return null;
                            }
                        } else {
                            XmlResourceParser xml = resourcesForApplication.getXml(intValue);
                            int next = xml.next();
                            while (next != 2 && next != 1) {
                                next = xml.next();
                            }
                            if (next == 2) {
                                Resources.Theme theme = context.getTheme();
                                ThreadLocal threadLocal = ResourcesCompat.a;
                                drawable = resourcesForApplication.getDrawable(intValue, theme);
                                if (drawable == null) {
                                    u2.f(q.g(intValue, "Invalid resource ID: "));
                                    return null;
                                }
                            } else {
                                throw new XmlPullParserException("No start tag found.");
                            }
                        }
                        Drawable drawable2 = drawable;
                        Bitmap.Config[] configArr = Utils_androidKt.a;
                        boolean z2 = drawable2 instanceof VectorDrawable;
                        if (z2) {
                            Bitmap.Config config = (Bitmap.Config) ExtrasKt.b(options, ImageRequests_androidKt.b);
                            Size size = options.b;
                            Scale scale = options.c;
                            Size size2 = (Size) ExtrasKt.b(options, ImageRequestsKt.b);
                            if (options.d != Precision.k) {
                                z = false;
                            }
                            drawable2 = new BitmapDrawable(context.getResources(), DrawableUtils.a(drawable2, config, size, scale, size2, z));
                        }
                        return new ImageFetchResult(Image_androidKt.b(drawable2), z2, DataSource.l);
                    }
                    return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(Okio.e(resourcesForApplication.openRawResource(intValue, new TypedValue()))), options.f, new ResourceMetadata(str, intValue)), b, DataSource.l);
                }
                fe.n(uri, "Invalid android.resource URI: ");
                return null;
            }
        }
        fe.n(uri, "Invalid android.resource URI: ");
        return null;
    }
}
