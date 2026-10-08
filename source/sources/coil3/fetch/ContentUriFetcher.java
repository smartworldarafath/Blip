package coil3.fetch;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.ContentMetadata;
import coil3.decode.DataSource;
import coil3.decode.SourceImageSource;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.size.Dimension;
import coil3.size.Size;
import defpackage.u2;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentUriFetcher implements Fetcher {
    public final Uri a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.a(uri.c, "content")) {
                return null;
            }
            return new ContentUriFetcher(uri, options);
        }
    }

    public ContentUriFetcher(Uri uri, Options options) {
        this.a = uri;
        this.b = options;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00aa  */
    @Override // coil3.fetch.Fetcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Continuation continuation) {
        AssetFileDescriptor openAssetFileDescriptor;
        List c;
        int size;
        Dimension.Pixels pixels;
        Bundle bundle;
        Dimension.Pixels pixels2;
        Uri uri = this.a;
        android.net.Uri parse = android.net.Uri.parse(uri.a);
        Options options = this.b;
        ContentResolver contentResolver = options.a.getContentResolver();
        String str = uri.d;
        if (Intrinsics.a(str, "com.android.contacts") && Intrinsics.a(CollectionsKt.A(UriKt.c(uri)), "display_photo")) {
            openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(parse, "r");
            if (openAssetFileDescriptor == null) {
                u2.h("Unable to find a contact photo associated with '", parse, "'.");
                return null;
            }
        } else if (Build.VERSION.SDK_INT >= 29 && Intrinsics.a(str, "media") && (size = (c = UriKt.c(uri)).size()) >= 3 && Intrinsics.a(c.get(size - 3), "audio") && Intrinsics.a(c.get(size - 2), "albums")) {
            Size size2 = options.b;
            Dimension dimension = size2.a;
            if (dimension instanceof Dimension.Pixels) {
                pixels = (Dimension.Pixels) dimension;
            } else {
                pixels = null;
            }
            if (pixels != null) {
                int i = pixels.a;
                Dimension dimension2 = size2.b;
                if (dimension2 instanceof Dimension.Pixels) {
                    pixels2 = (Dimension.Pixels) dimension2;
                } else {
                    pixels2 = null;
                }
                if (pixels2 != null) {
                    int i2 = pixels2.a;
                    bundle = new Bundle(1);
                    bundle.putParcelable("android.content.extra.SIZE", new Point(i, i2));
                    openAssetFileDescriptor = contentResolver.openTypedAssetFile(parse, "image/*", bundle, null);
                    if (openAssetFileDescriptor == null) {
                        u2.h("Unable to find a music thumbnail associated with '", parse, "'.");
                        return null;
                    }
                }
            }
            bundle = null;
            openAssetFileDescriptor = contentResolver.openTypedAssetFile(parse, "image/*", bundle, null);
            if (openAssetFileDescriptor == null) {
            }
        } else {
            openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(parse, "r");
            if (openAssetFileDescriptor == null) {
                u2.h("Unable to open '", parse, "'.");
                return null;
            }
        }
        return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(Okio.e(openAssetFileDescriptor.createInputStream())), options.f, new ContentMetadata(uri, openAssetFileDescriptor)), contentResolver.getType(parse), DataSource.l);
    }
}
