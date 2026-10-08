package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformTextStyle {
    public final PlatformParagraphStyle a;

    public PlatformTextStyle(PlatformSpanStyle platformSpanStyle, PlatformParagraphStyle platformParagraphStyle) {
        this.a = platformParagraphStyle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformTextStyle)) {
            return false;
        }
        if (Intrinsics.a(this.a, ((PlatformTextStyle) obj).a) && Intrinsics.a(null, null)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int i2 = 0 * 31;
        PlatformParagraphStyle platformParagraphStyle = this.a;
        if (platformParagraphStyle != null) {
            i = platformParagraphStyle.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "PlatformTextStyle(spanStyle=" + ((Object) null) + ", paragraphSyle=" + this.a + ")";
    }
}
