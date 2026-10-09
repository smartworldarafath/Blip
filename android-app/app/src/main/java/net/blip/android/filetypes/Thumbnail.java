package net.blip.android.filetypes;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Thumbnail {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class None extends Thumbnail {
        public static final None a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof None)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 325164854;
        }

        public final String toString() {
            return "None";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Pending extends Thumbnail {
        public static final Pending a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof Pending)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -971263783;
        }

        public final String toString() {
            return "Pending";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Some extends Thumbnail {
        public final Drawable a;

        public Some(Drawable drawable) {
            drawable.getClass();
            this.a = drawable;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Some) && Intrinsics.a(this.a, ((Some) obj).a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Some(drawable=" + this.a + ")";
        }
    }
}
