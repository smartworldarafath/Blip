package net.blip.shared;

import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContentPicker$ContentType {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Directory extends ContentPicker$ContentType {
        public static final Directory a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Directory)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 620685486;
        }

        public final String toString() {
            return "Directory";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class File extends ContentPicker$ContentType {
        public final List a = EmptyList.j;

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof File) || !this.a.equals(((File) obj).a)) {
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
            return "File(extensions=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Image extends ContentPicker$ContentType {
        public static final Image a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Image)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 672316444;
        }

        public final String toString() {
            return "Image";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageAndVideo extends ContentPicker$ContentType {
        public static final ImageAndVideo a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof ImageAndVideo)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 968785184;
        }

        public final String toString() {
            return "ImageAndVideo";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Video extends ContentPicker$ContentType {
        public static final Video a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Video)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 684205884;
        }

        public final String toString() {
            return "Video";
        }
    }
}
