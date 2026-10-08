package coil3.fetch;

import coil3.Image;
import coil3.decode.DataSource;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImageFetchResult implements FetchResult {
    public final Image a;
    public final boolean b;
    public final DataSource c;

    public ImageFetchResult(Image image, boolean z, DataSource dataSource) {
        this.a = image;
        this.b = z;
        this.c = dataSource;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ImageFetchResult) {
                ImageFetchResult imageFetchResult = (ImageFetchResult) obj;
                if (!this.a.equals(imageFetchResult.a) || this.b != imageFetchResult.b || this.c != imageFetchResult.c) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.c.hashCode() + jb.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "ImageFetchResult(image=" + this.a + ", isSampled=" + this.b + ", dataSource=" + this.c + ")";
    }
}
