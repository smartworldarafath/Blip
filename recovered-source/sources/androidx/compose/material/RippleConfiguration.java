package androidx.compose.material;

import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RippleConfiguration {
    public final long a;
    public final RippleAlpha b;

    public RippleConfiguration(long j, RippleAlpha rippleAlpha) {
        this.a = j;
        this.b = rippleAlpha;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleConfiguration)) {
            return false;
        }
        RippleConfiguration rippleConfiguration = (RippleConfiguration) obj;
        if (Color.c(this.a, rippleConfiguration.a) && Intrinsics.a(this.b, rippleConfiguration.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = Color.i;
        int hashCode = Long.hashCode(this.a) * 31;
        RippleAlpha rippleAlpha = this.b;
        if (rippleAlpha != null) {
            i = rippleAlpha.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "RippleConfiguration(color=" + Color.i(this.a) + ", rippleAlpha=" + this.b + ")";
    }
}
