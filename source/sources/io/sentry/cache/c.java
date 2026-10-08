package io.sentry.cache;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements FilenameFilter {
    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        int i = EnvelopeCache.s;
        return str.endsWith(".envelope");
    }
}
