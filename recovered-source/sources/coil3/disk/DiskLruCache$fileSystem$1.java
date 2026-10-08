package coil3.disk;

import okio.ForwardingFileSystem;
import okio.Path;
import okio.Sink;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiskLruCache$fileSystem$1 extends ForwardingFileSystem {
    @Override // okio.FileSystem
    public final Sink S(Path path, boolean z) {
        Path c = path.c();
        if (c != null) {
            n(c);
        }
        return this.l.S(path, z);
    }
}
