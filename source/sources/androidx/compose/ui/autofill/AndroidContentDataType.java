package androidx.compose.ui.autofill;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AndroidContentDataType implements ContentDataType {
    public final int a;

    public final boolean equals(Object obj) {
        if (obj instanceof AndroidContentDataType) {
            if (this.a != ((AndroidContentDataType) obj).a) {
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
        return jb.d("AndroidContentDataType(androidAutofillType=", this.a, ")");
    }
}
