package com.google.accompanist.permissions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface PermissionStatus {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Denied implements PermissionStatus {
        public final boolean a;

        public Denied(boolean z) {
            this.a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Denied) && this.a == ((Denied) obj).a) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.a);
        }

        public final String toString() {
            return "Denied(shouldShowRationale=" + this.a + ')';
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Granted implements PermissionStatus {
        public static final Granted a = new Object();
    }
}
