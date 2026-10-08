package androidx.compose.ui.text.style;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextMotion {
    public static final TextMotion c = new TextMotion(2, false);
    public static final TextMotion d = new TextMotion(1, true);
    public final int a;
    public final boolean b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Linearity {
        public final int a;

        public final boolean equals(Object obj) {
            if (obj instanceof Linearity) {
                if (this.a != ((Linearity) obj).a) {
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
            if (i == 1) {
                return "Linearity.Linear";
            }
            if (i == 2) {
                return "Linearity.FontHinting";
            }
            if (i == 3) {
                return "Linearity.None";
            }
            return "Invalid";
        }
    }

    public TextMotion(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextMotion)) {
            return false;
        }
        TextMotion textMotion = (TextMotion) obj;
        if (this.a == textMotion.a && this.b == textMotion.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        if (equals(c)) {
            return "TextMotion.Static";
        }
        if (equals(d)) {
            return "TextMotion.Animated";
        }
        return "Invalid";
    }
}
