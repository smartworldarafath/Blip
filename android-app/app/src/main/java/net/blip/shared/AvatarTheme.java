package net.blip.shared;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import defpackage.jb;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface AvatarTheme {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Appearance {
        public final Shape a;
        public final long b;
        public final TextStyle c;
        public final Paintable d;
        public final Paintable e;
        public final Paintable f;
        public final Paintable g;
        public final Paintable h;
        public final Paintable i;

        public Appearance(Shape shape, long j, TextStyle textStyle, Paintable paintable, Paintable paintable2, Paintable paintable3, Paintable paintable4, Paintable paintable5, Paintable paintable6) {
            shape.getClass();
            this.a = shape;
            this.b = j;
            this.c = textStyle;
            this.d = paintable;
            this.e = paintable2;
            this.f = paintable3;
            this.g = paintable4;
            this.h = paintable5;
            this.i = paintable6;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Appearance) {
                    Appearance appearance = (Appearance) obj;
                    if (!Intrinsics.a(this.a, appearance.a) || !Color.c(this.b, appearance.b) || !this.c.equals(appearance.c) || !this.d.equals(appearance.d) || !this.e.equals(appearance.e) || !this.f.equals(appearance.f) || !this.g.equals(appearance.g) || !this.h.equals(appearance.h) || !this.i.equals(appearance.i)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            int hashCode = this.a.hashCode() * 31;
            int i = Color.i;
            return this.i.a.hashCode() + ((this.h.a.hashCode() + ((this.g.a.hashCode() + ((this.f.a.hashCode() + ((this.e.a.hashCode() + ((this.d.a.hashCode() + ((this.c.hashCode() + jb.a(hashCode, 31, this.b)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            return "Appearance(shape=" + this.a + ", background=" + Color.i(this.b) + ", initialsStyle=" + this.c + ", iconDevicePhone=" + this.d + ", iconDeviceTablet=" + this.e + ", iconDeviceLaptop=" + this.f + ", iconDeviceDesktop=" + this.g + ", iconDeviceUnknown=" + this.h + ", iconPersonNoInitials=" + this.i + ")";
        }
    }
}
