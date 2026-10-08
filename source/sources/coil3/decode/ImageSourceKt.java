package coil3.decode;

import coil3.disk.DiskCache;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImageSourceKt {
    public static FileImageSource a(Path path, FileSystem fileSystem, String str, DiskCache.Snapshot snapshot, int i) {
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            snapshot = null;
        }
        return new FileImageSource(path, fileSystem, str, snapshot);
    }
}
