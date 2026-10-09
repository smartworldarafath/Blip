package androidx.core.view;

import android.graphics.Insets;
import android.graphics.Path;
import android.os.Build;
import android.view.DisplayCutout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DisplayCutoutCompat {
    public final DisplayCutout a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static Insets a(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        public static Path a(DisplayCutout displayCutout) {
            return displayCutout.getCutoutPath();
        }
    }

    public DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.a = displayCutout;
    }

    public final Path a() {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.a(this.a);
        }
        return null;
    }

    public final androidx.core.graphics.Insets b() {
        if (Build.VERSION.SDK_INT >= 30) {
            return androidx.core.graphics.Insets.c(Api30Impl.a(this.a));
        }
        return androidx.core.graphics.Insets.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DisplayCutoutCompat.class == obj.getClass()) {
            return this.a.equals(((DisplayCutoutCompat) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.a + "}";
    }
}
