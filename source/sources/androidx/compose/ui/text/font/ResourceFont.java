package androidx.compose.ui.text.font;

import androidx.compose.ui.text.font.FontVariation;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourceFont implements Font {
    public final FontWeight a;
    public final FontVariation.Settings b;

    public ResourceFont(FontWeight fontWeight, FontVariation.Settings settings) {
        this.a = fontWeight;
        this.b = settings;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ResourceFont) {
            ResourceFont resourceFont = (ResourceFont) obj;
            if (Intrinsics.a(this.a, resourceFont.a) && this.b.equals(resourceFont.b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.a.hashCode() + q.b(0, q.b(0, (1645674496 + this.a.j) * 31, 31), 31);
    }

    public final String toString() {
        return "ResourceFont(resId=2131296256, weight=" + this.a + ", style=Normal, loadingStrategy=Blocking)";
    }
}
