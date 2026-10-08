package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.graphics.Color;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContextMenuColors {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;

    public ContextMenuColors(long j, long j2, long j3, long j4, long j5) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextMenuColors)) {
            return false;
        }
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj;
        if (Color.c(this.a, contextMenuColors.a) && Color.c(this.b, contextMenuColors.b) && Color.c(this.c, contextMenuColors.c) && Color.c(this.d, contextMenuColors.d) && Color.c(this.e, contextMenuColors.e)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.e) + jb.a(jb.a(jb.a(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        String i = Color.i(this.a);
        String i2 = Color.i(this.b);
        String i3 = Color.i(this.c);
        String i4 = Color.i(this.d);
        String i5 = Color.i(this.e);
        StringBuilder o = q.o("ContextMenuColors(backgroundColor=", i, ", textColor=", i2, ", iconColor=");
        q.B(o, i3, ", disabledTextColor=", i4, ", disabledIconColor=");
        return q.l(o, i5, ")");
    }
}
