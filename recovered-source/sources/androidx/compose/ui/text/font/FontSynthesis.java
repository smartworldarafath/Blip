package androidx.compose.ui.text.font;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FontSynthesis {
    public final int a;

    public final boolean equals(Object obj) {
        if (obj instanceof FontSynthesis) {
            if (this.a != ((FontSynthesis) obj).a) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        int i = this.a;
        if (i == 0) {
            return "None";
        }
        if (i == 1) {
            return "Weight";
        }
        if (i == 2) {
            return "Style";
        }
        if (i == 65535) {
            return "All";
        }
        return "Invalid";
    }
}
