package androidx.compose.ui.input.pointer;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPointerIconType implements PointerIcon {
    public final int b;

    public AndroidPointerIconType(int i) {
        this.b = i;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this != obj) {
            if (obj != null) {
                cls = obj.getClass();
            } else {
                cls = null;
            }
            if (AndroidPointerIconType.class.equals(cls)) {
                obj.getClass();
                if (this.b != ((AndroidPointerIconType) obj).b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b;
    }

    public final String toString() {
        return jb.d("AndroidPointerIcon(type=", this.b, ")");
    }
}
