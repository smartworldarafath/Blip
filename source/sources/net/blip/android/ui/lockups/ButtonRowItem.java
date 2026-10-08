package net.blip.android.ui.lockups;

import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.VectorPainter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ButtonRowItem {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Icon extends ButtonRowItem {
        public final Function0 a;
        private final Painter painter;

        public Icon(VectorPainter vectorPainter, Function0 function0) {
            vectorPainter.getClass();
            this.painter = vectorPainter;
            this.a = function0;
        }

        public final Painter a() {
            return this.painter;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Icon) {
                    Icon icon = (Icon) obj;
                    if (!Intrinsics.a(this.painter, icon.painter) || !this.a.equals(icon.a)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.a.hashCode() + (((this.painter.hashCode() * 31) + 2062599) * 31);
        }

        public final String toString() {
            return "Icon(painter=" + this.painter + ", description=Back, onClick=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class IconMenu extends ButtonRowItem {
        public final ComposableLambdaImpl a;
        private final Painter painter;

        public IconMenu(VectorPainter vectorPainter, ComposableLambdaImpl composableLambdaImpl) {
            vectorPainter.getClass();
            this.painter = vectorPainter;
            this.a = composableLambdaImpl;
        }

        public final Painter a() {
            return this.painter;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof IconMenu) {
                IconMenu iconMenu = (IconMenu) obj;
                if (Intrinsics.a(this.painter, iconMenu.painter) && this.a == iconMenu.a) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode() + (((this.painter.hashCode() * 31) + 79847359) * 31);
        }

        public final String toString() {
            return "IconMenu(painter=" + this.painter + ", description=Share, contextMenu=" + this.a + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class IconSpacer extends ButtonRowItem {
        public static final IconSpacer a = new Object();

        public final boolean equals(Object obj) {
            if (this == obj || (obj instanceof IconSpacer)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return -1501554424;
        }

        public final String toString() {
            return "IconSpacer";
        }
    }
}
