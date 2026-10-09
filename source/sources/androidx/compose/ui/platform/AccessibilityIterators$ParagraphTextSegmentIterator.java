package androidx.compose.ui.platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AccessibilityIterators$ParagraphTextSegmentIterator extends AccessibilityIterators$AbstractTextSegmentIterator {
    public static AccessibilityIterators$ParagraphTextSegmentIterator c;

    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    public final int[] a(int i) {
        int length = d().length();
        if (length > 0 && i < length) {
            if (i < 0) {
                i = 0;
            }
            while (i < length && d().charAt(i) == '\n' && (d().charAt(i) == '\n' || (i != 0 && d().charAt(i - 1) != '\n'))) {
                i++;
            }
            if (i >= length) {
                return null;
            }
            int i2 = i + 1;
            while (i2 < length && !e(i2)) {
                i2++;
            }
            return c(i, i2);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        return null;
     */
    @Override // androidx.compose.ui.platform.AccessibilityIterators$TextSegmentIterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int[] b(int i) {
        int length = d().length();
        if (length > 0 && i > 0) {
            if (i > length) {
                i = length;
            }
            while (i > 0 && d().charAt(i - 1) == '\n' && !e(i)) {
                i--;
            }
            int i2 = i - 1;
            while (i2 > 0 && (d().charAt(i2) == '\n' || (i2 != 0 && d().charAt(i2 - 1) != '\n'))) {
                i2--;
            }
            return c(i2, i);
        }
        return null;
    }

    public final boolean e(int i) {
        if (i > 0 && d().charAt(i - 1) != '\n') {
            if (i == d().length() || d().charAt(i) == '\n') {
                return true;
            }
            return false;
        }
        return false;
    }
}
