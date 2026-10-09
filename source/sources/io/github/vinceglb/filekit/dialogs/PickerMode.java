package io.github.vinceglb.filekit.dialogs;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PickerMode {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Multiple extends PickerMode {
        public final boolean equals(Object obj) {
            if (this != obj && !(obj instanceof Multiple)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "Multiple(maxItems=null)";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Single extends PickerMode {
        public static final Single a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Single)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -852887453;
        }

        public final String toString() {
            return "Single";
        }
    }
}
