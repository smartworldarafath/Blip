package coil3;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import coil3.util.Utils_androidKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawableImage implements Image {
    public final Drawable a;

    public DrawableImage(Drawable drawable) {
        this.a = drawable;
    }

    @Override // coil3.Image
    public final int a() {
        return Utils_androidKt.a(this.a);
    }

    @Override // coil3.Image
    public final int b() {
        return Utils_androidKt.b(this.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DrawableImage) && Intrinsics.a(this.a, ((DrawableImage) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(false) + (this.a.hashCode() * 31);
    }

    @Override // coil3.Image
    public final long i() {
        Drawable drawable = this.a;
        long b = Utils_androidKt.b(drawable) * 4 * Utils_androidKt.a(drawable);
        if (b < 0) {
            return 0L;
        }
        return b;
    }

    @Override // coil3.Image
    public final boolean j() {
        return false;
    }

    @Override // coil3.Image
    public final void k(Canvas canvas) {
        this.a.draw(canvas);
    }

    public final String toString() {
        return "DrawableImage(drawable=" + this.a + ", shareable=false)";
    }
}
