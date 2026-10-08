package net.blip.android.ui.util;

import androidx.compose.ui.unit.Dp;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemBarsMetrics {
    public final float a;
    public final float b;

    public SystemBarsMetrics(float f, float f2) {
        this.a = f;
        this.b = f2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SystemBarsMetrics) {
                SystemBarsMetrics systemBarsMetrics = (SystemBarsMetrics) obj;
                if (!Dp.b(this.a, systemBarsMetrics.a) || !Dp.b(this.b, systemBarsMetrics.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (Float.hashCode(this.a) * 31);
    }

    public final String toString() {
        return jb.h("SystemBarsMetrics(statusBarHeight=", Dp.c(this.a), ", navigationBarHeight=", Dp.c(this.b), ")");
    }
}
