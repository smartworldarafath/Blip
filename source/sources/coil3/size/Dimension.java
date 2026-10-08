package coil3.size;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Dimension {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Pixels implements Dimension {
        public final int a;

        public final boolean equals(Object obj) {
            if (obj instanceof Pixels) {
                if (this.a != ((Pixels) obj).a) {
                    return false;
                }
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.a);
        }

        public final String toString() {
            return jb.d("Pixels(px=", this.a, ")");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Undefined implements Dimension {
        public static final Undefined a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Undefined)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -2093724603;
        }

        public final String toString() {
            return "Undefined";
        }
    }
}
