package okio.internal;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ZipFilesKt$buildIndex$$inlined$sortedBy$1<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.b(((ZipEntry) obj).a, ((ZipEntry) obj2).a);
    }
}
