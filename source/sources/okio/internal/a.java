package okio.internal;

import kotlin.jvm.functions.Function1;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ZipEntry zipEntry = (ZipEntry) obj;
        Path path = ResourceFileSystem.o;
        zipEntry.getClass();
        Path path2 = ResourceFileSystem.o;
        return Boolean.valueOf(ResourceFileSystem.Companion.a(zipEntry.a));
    }
}
