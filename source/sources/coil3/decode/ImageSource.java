package coil3.decode;

import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ImageSource extends AutoCloseable {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Metadata {
    }

    Path I0();

    BufferedSource U0();

    Path d0();

    Metadata e();

    FileSystem getFileSystem();
}
