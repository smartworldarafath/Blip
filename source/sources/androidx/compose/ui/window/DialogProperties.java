package androidx.compose.ui.window;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DialogProperties {
    public final boolean a;
    public final boolean b;
    public final SecureFlagPolicy c;
    public final boolean d;
    public final boolean e;
    public final String f;
    public final int g;

    public DialogProperties() {
        SecureFlagPolicy secureFlagPolicy = SecureFlagPolicy.j;
        this.a = true;
        this.b = true;
        this.c = secureFlagPolicy;
        this.d = true;
        this.e = true;
        this.f = "";
        this.g = 2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DialogProperties) {
                DialogProperties dialogProperties = (DialogProperties) obj;
                if (this.a != dialogProperties.a || this.b != dialogProperties.b || this.c != dialogProperties.c || this.d != dialogProperties.d || this.e != dialogProperties.e || this.g != dialogProperties.g) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (jb.b(jb.b((this.c.hashCode() + jb.b(Boolean.hashCode(this.a) * 31, 31, this.b)) * 31, 31, this.d), 31, this.e) + this.g) * 31;
    }
}
