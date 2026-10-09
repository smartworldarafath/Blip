package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextLinkStyles {
    public final SpanStyle a;
    public final SpanStyle b;
    public final SpanStyle c;
    public final SpanStyle d;

    public TextLinkStyles(SpanStyle spanStyle, SpanStyle spanStyle2, SpanStyle spanStyle3, SpanStyle spanStyle4) {
        this.a = spanStyle;
        this.b = spanStyle2;
        this.c = spanStyle3;
        this.d = spanStyle4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TextLinkStyles)) {
            return false;
        }
        TextLinkStyles textLinkStyles = (TextLinkStyles) obj;
        if (Intrinsics.a(this.a, textLinkStyles.a) && Intrinsics.a(this.b, textLinkStyles.b) && Intrinsics.a(this.c, textLinkStyles.c) && Intrinsics.a(this.d, textLinkStyles.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        SpanStyle spanStyle = this.a;
        if (spanStyle != null) {
            i = spanStyle.hashCode();
        } else {
            i = 0;
        }
        int i5 = i * 31;
        SpanStyle spanStyle2 = this.b;
        if (spanStyle2 != null) {
            i2 = spanStyle2.hashCode();
        } else {
            i2 = 0;
        }
        int i6 = (i5 + i2) * 31;
        SpanStyle spanStyle3 = this.c;
        if (spanStyle3 != null) {
            i3 = spanStyle3.hashCode();
        } else {
            i3 = 0;
        }
        int i7 = (i6 + i3) * 31;
        SpanStyle spanStyle4 = this.d;
        if (spanStyle4 != null) {
            i4 = spanStyle4.hashCode();
        }
        return i7 + i4;
    }
}
