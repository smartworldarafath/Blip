package coil3.request;

import android.content.Context;
import coil3.Extras;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import kotlin.jvm.internal.Intrinsics;
import okio.FileSystem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Options {
    public final Context a;
    public final Size b;
    public final Scale c;
    public final Precision d;
    public final String e;
    public final FileSystem f;
    public final CachePolicy g;
    public final CachePolicy h;
    public final CachePolicy i;
    public final Extras j;

    public Options(Context context, Size size, Scale scale, Precision precision, String str, FileSystem fileSystem, CachePolicy cachePolicy, CachePolicy cachePolicy2, CachePolicy cachePolicy3, Extras extras) {
        this.a = context;
        this.b = size;
        this.c = scale;
        this.d = precision;
        this.e = str;
        this.f = fileSystem;
        this.g = cachePolicy;
        this.h = cachePolicy2;
        this.i = cachePolicy3;
        this.j = extras;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Options)) {
            return false;
        }
        Options options = (Options) obj;
        if (Intrinsics.a(this.a, options.a) && Intrinsics.a(this.b, options.b) && this.c == options.c && this.d == options.d && Intrinsics.a(this.e, options.e) && Intrinsics.a(this.f, options.f) && this.g == options.g && this.h == options.h && this.i == options.i && Intrinsics.a(this.j, options.j)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.e;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return this.j.a.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((hashCode2 + hashCode) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Options(context=" + this.a + ", size=" + this.b + ", scale=" + this.c + ", precision=" + this.d + ", diskCacheKey=" + this.e + ", fileSystem=" + this.f + ", memoryCachePolicy=" + this.g + ", diskCachePolicy=" + this.h + ", networkCachePolicy=" + this.i + ", extras=" + this.j + ")";
    }
}
