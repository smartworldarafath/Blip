package androidx.compose.ui.window;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PopupProperties {
    public final int a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final int f;

    public PopupProperties(boolean z, SecureFlagPolicy secureFlagPolicy, boolean z2, int i) {
        int i2;
        boolean z3;
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
        if (!z) {
            i2 = 262152;
        } else {
            i2 = 262144;
        }
        i2 = secureFlagPolicy == SecureFlagPolicy.k ? i2 | 8192 : i2;
        i2 = z2 ? i2 : i2 | 512;
        if (secureFlagPolicy == SecureFlagPolicy.j) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.a = i2;
        this.b = z3;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = 1002;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PopupProperties) {
                PopupProperties popupProperties = (PopupProperties) obj;
                if (this.a != popupProperties.a || this.b != popupProperties.b || this.c != popupProperties.c || this.d != popupProperties.d || this.e != popupProperties.e || this.f != popupProperties.f) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (jb.b(jb.b(jb.b(jb.b(jb.b(this.a * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e), 31, false) + this.f) * 31;
    }

    public PopupProperties(int i) {
        this((i & 1) == 0, SecureFlagPolicy.j, true, 0);
    }
}
