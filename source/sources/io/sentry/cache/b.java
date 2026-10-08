package io.sentry.cache;

import java.io.File;
import java.nio.charset.Charset;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Charset charset = CacheStrategy.n;
        return Long.compare(((File) obj).lastModified(), ((File) obj2).lastModified());
    }
}
