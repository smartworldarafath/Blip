package androidx.compose.material;

import androidx.compose.ui.graphics.Color;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultButtonColors implements ButtonColors {
    public final long a;
    public final long b;
    public final long c;
    public final long d;

    public DefaultButtonColors(long j, long j2, long j3, long j4) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultButtonColors.class != obj.getClass()) {
            return false;
        }
        DefaultButtonColors defaultButtonColors = (DefaultButtonColors) obj;
        if (Color.c(this.a, defaultButtonColors.a) && Color.c(this.b, defaultButtonColors.b) && Color.c(this.c, defaultButtonColors.c) && Color.c(this.d, defaultButtonColors.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.d) + jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }
}
