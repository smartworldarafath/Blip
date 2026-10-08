package kotlin.ranges;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CharRange extends CharProgression implements ClosedRange<Character> {
    static {
        new CharProgression((char) 1, (char) 0);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CharRange) {
            char c = this.j;
            char c2 = this.k;
            if (c > c2) {
                CharRange charRange = (CharRange) obj;
                if (charRange.j > charRange.k) {
                    return true;
                }
            }
            CharRange charRange2 = (CharRange) obj;
            if (c == charRange2.j && c2 == charRange2.k) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        char c = this.j;
        char c2 = this.k;
        if (c > c2) {
            return -1;
        }
        return (c * 31) + c2;
    }

    public final String toString() {
        return this.j + ".." + this.k;
    }
}
