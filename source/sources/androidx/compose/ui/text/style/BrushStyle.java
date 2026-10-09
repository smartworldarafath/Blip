package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BrushStyle implements TextForegroundStyle {
    public final ShaderBrush a;
    public final float b;

    public BrushStyle(ShaderBrush shaderBrush, float f) {
        this.a = shaderBrush;
        this.b = f;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final float a() {
        return this.b;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final long b() {
        int i = Color.i;
        return Color.h;
    }

    @Override // androidx.compose.ui.text.style.TextForegroundStyle
    public final Brush d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BrushStyle)) {
            return false;
        }
        BrushStyle brushStyle = (BrushStyle) obj;
        if (Intrinsics.a(this.a, brushStyle.a) && Float.compare(this.b, brushStyle.b) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BrushStyle(value=" + this.a + ", alpha=" + this.b + ")";
    }
}
