package kotlin.text;

import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MatchGroup {
    public final String a;
    public final IntRange b;

    public MatchGroup(String str, IntRange intRange) {
        this.a = str;
        this.b = intRange;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MatchGroup) {
                MatchGroup matchGroup = (MatchGroup) obj;
                if (!this.a.equals(matchGroup.a) || !this.b.equals(matchGroup.b)) {
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
        return "MatchGroup(value=" + this.a + ", range=" + this.b + ')';
    }
}
