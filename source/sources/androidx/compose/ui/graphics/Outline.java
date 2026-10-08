package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Outline {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Generic extends Outline {
        public final Path a;

        public Generic(Path path) {
            this.a = path;
        }

        @Override // androidx.compose.ui.graphics.Outline
        public final Rect a() {
            return ((AndroidPath) this.a).f();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Rectangle extends Outline {
        public final Rect a;

        public Rectangle(Rect rect) {
            this.a = rect;
        }

        @Override // androidx.compose.ui.graphics.Outline
        public final Rect a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Rectangle) {
                    if (!this.a.equals(((Rectangle) obj).a)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Rounded extends Outline {
        public final RoundRect a;
        public final AndroidPath b;

        public Rounded(RoundRect roundRect) {
            AndroidPath androidPath;
            this.a = roundRect;
            if (!RoundRectKt.b(roundRect)) {
                androidPath = AndroidPath_androidKt.a();
                Path.d(androidPath, roundRect);
            } else {
                androidPath = null;
            }
            this.b = androidPath;
        }

        @Override // androidx.compose.ui.graphics.Outline
        public final Rect a() {
            RoundRect roundRect = this.a;
            return new Rect(roundRect.a, roundRect.b, roundRect.c, roundRect.d);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Rounded) {
                    if (!this.a.equals(((Rounded) obj).a)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }
    }

    public abstract Rect a();
}
