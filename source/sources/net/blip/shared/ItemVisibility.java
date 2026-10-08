package net.blip.shared;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ItemVisibility {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AboveViewport extends ItemVisibility {
        public static final AboveViewport a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof AboveViewport)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -952578729;
        }

        public final String toString() {
            return "AboveViewport";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BelowViewport extends ItemVisibility {
        public static final BelowViewport a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof BelowViewport)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -856661525;
        }

        public final String toString() {
            return "BelowViewport";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InsideViewport extends ItemVisibility {
        public static final InsideViewport a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof InsideViewport)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -1486588594;
        }

        public final String toString() {
            return "InsideViewport";
        }
    }
}
