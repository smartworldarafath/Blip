package androidx.compose.ui.input.pointer;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerKeyboardModifiers {
    public final int a;

    public final boolean equals(Object obj) {
        if (obj instanceof PointerKeyboardModifiers) {
            if (this.a != ((PointerKeyboardModifiers) obj).a) {
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
        return jb.d("PointerKeyboardModifiers(packedValue=", this.a, ")");
    }
}
