package coil3.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileSystemsKt {
    public static final void a(FileSystem fileSystem, Path path) {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.E(path)) {
                try {
                    if (fileSystem.O(path2).b) {
                        a(fileSystem, path2);
                    }
                    fileSystem.v(path2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }
}
