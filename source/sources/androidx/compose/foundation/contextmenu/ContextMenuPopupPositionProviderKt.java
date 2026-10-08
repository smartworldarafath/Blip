package androidx.compose.foundation.contextmenu;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContextMenuPopupPositionProviderKt {
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0011, code lost:
    
        if (r5 == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0015, code lost:
    
        return r2 - r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0026 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int a(int i, int i2, int i3, boolean z) {
        if (i2 >= i3) {
            if (z) {
                return 0;
            }
            return i3 - i2;
        }
        if (!z) {
            if (z ? i3 - i2 > i : i2 <= i) {
                if (z) {
                    return i - i2;
                }
            } else {
                if (!z) {
                    return 0;
                }
                return i3 - i2;
            }
        } else if (z) {
            if (!z) {
            }
        } else if (!z) {
        }
        return i;
    }
}
