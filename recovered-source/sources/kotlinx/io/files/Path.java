package kotlinx.io.files;

import java.io.File;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Path {
    public final File a;

    public Path(File file) {
        this.a = file;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Path)) {
            return false;
        }
        return toString().equals(((Path) obj).toString());
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        String file = this.a.toString();
        file.getClass();
        return file;
    }
}
