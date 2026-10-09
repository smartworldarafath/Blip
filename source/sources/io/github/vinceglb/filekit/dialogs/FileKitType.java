package io.github.vinceglb.filekit.dialogs;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileKitType {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class File extends FileKitType {
        public final Set a;

        public File(Set set) {
            this.a = set;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof File) && Intrinsics.a(this.a, ((File) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            Set set = this.a;
            if (set == null) {
                return 0;
            }
            return set.hashCode();
        }

        public final String toString() {
            return "File(extensions=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Image extends FileKitType {
        public static final Image a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Image)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -1385161825;
        }

        public final String toString() {
            return "Image";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageAndVideo extends FileKitType {
        public static final ImageAndVideo a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof ImageAndVideo)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 1448192419;
        }

        public final String toString() {
            return "ImageAndVideo";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Video extends FileKitType {
        public static final Video a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Video)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -1373272385;
        }

        public final String toString() {
            return "Video";
        }
    }
}
