package io.github.vinceglb.filekit;

import android.net.Uri;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidFile {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FileWrapper extends AndroidFile {
        public final File a;

        public FileWrapper(File file) {
            this.a = file;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof FileWrapper) || !this.a.equals(((FileWrapper) obj).a)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "FileWrapper(file=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UriWrapper extends AndroidFile {
        public final Uri a;

        public UriWrapper(Uri uri) {
            uri.getClass();
            this.a = uri;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof UriWrapper) && Intrinsics.a(this.a, ((UriWrapper) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "UriWrapper(uri=" + this.a + ")";
        }
    }
}
