package androidx.compose.ui.res;

import android.content.res.Resources;
import androidx.compose.ui.graphics.vector.ImageVector;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImageVectorCache {
    public final HashMap a = new HashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageVectorEntry {
        public final ImageVector a;
        public final int b;

        public ImageVectorEntry(ImageVector imageVector, int i) {
            this.a = imageVector;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof ImageVectorEntry) {
                    ImageVectorEntry imageVectorEntry = (ImageVectorEntry) obj;
                    if (!this.a.equals(imageVectorEntry.a) || this.b != imageVectorEntry.b) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "ImageVectorEntry(imageVector=" + this.a + ", configFlags=" + this.b + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key {
        public final Resources.Theme a;
        public final int b;

        public Key(Resources.Theme theme, int i) {
            this.a = theme;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (Intrinsics.a(this.a, key.a) && this.b == key.b) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b) + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Key(theme=" + this.a + ", id=" + this.b + ")";
        }
    }
}
