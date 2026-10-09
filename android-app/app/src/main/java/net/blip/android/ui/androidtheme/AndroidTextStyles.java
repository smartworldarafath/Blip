package net.blip.android.ui.androidtheme;

import androidx.compose.ui.text.TextStyle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidTextStyles {
    public final TextStyle a;
    public final TextStyle b;

    public AndroidTextStyles(TextStyle textStyle, TextStyle textStyle2) {
        this.a = textStyle;
        this.b = textStyle2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AndroidTextStyles) {
                AndroidTextStyles androidTextStyles = (AndroidTextStyles) obj;
                if (!this.a.equals(androidTextStyles.a) || !this.b.equals(androidTextStyles.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "AndroidTextStyles(display=" + this.a + ", default=" + this.b + ")";
    }
}
