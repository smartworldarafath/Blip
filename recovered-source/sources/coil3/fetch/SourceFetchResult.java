package coil3.fetch;

import coil3.decode.DataSource;
import coil3.decode.ImageSource;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SourceFetchResult implements FetchResult {
    public final ImageSource a;
    public final String b;
    public final DataSource c;

    public SourceFetchResult(ImageSource imageSource, String str, DataSource dataSource) {
        this.a = imageSource;
        this.b = str;
        this.c = dataSource;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SourceFetchResult) {
                SourceFetchResult sourceFetchResult = (SourceFetchResult) obj;
                if (!Intrinsics.a(this.a, sourceFetchResult.a) || !Intrinsics.a(this.b, sourceFetchResult.b) || this.c != sourceFetchResult.c) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.a.hashCode() * 31;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return this.c.hashCode() + ((hashCode2 + hashCode) * 31);
    }

    public final String toString() {
        return "SourceFetchResult(source=" + this.a + ", mimeType=" + this.b + ", dataSource=" + this.c + ")";
    }
}
