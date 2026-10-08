package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ColorStyle implements TextForegroundStyle {
    public final long a;

    public ColorStyle(long j) {
        this.a = j;
        if (j != 16) {
            return;
        }
        InlineClassHelperKt.a("ColorStyle value must be specified, use TextForegroundStyle.Unspecified instead.");
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final float a() {
        return Color.d(this.a);
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final long b() {
        return this.a;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final Brush d() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ColorStyle) && Color.c(this.a, ((ColorStyle) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return q.i("ColorStyle(value=", Color.i(this.a), ")");
    }
}
