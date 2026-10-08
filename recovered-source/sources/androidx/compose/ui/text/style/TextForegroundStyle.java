package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SolidColor;
import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface TextForegroundStyle {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static TextForegroundStyle a(Brush brush, float f) {
            if (brush == null) {
                return Unspecified.a;
            }
            if (brush instanceof SolidColor) {
                return b(TextDrawStyleKt.a(((SolidColor) brush).a, f));
            }
            if (brush instanceof ShaderBrush) {
                return new BrushStyle((ShaderBrush) brush, f);
            }
            k8.e();
            return null;
        }

        public static TextForegroundStyle b(long j) {
            if (j != 16) {
                return new ColorStyle(j);
            }
            return Unspecified.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Unspecified implements TextForegroundStyle {
        public static final Unspecified a = new Object();

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final float a() {
            return Float.NaN;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final long b() {
            int i = Color.i;
            return Color.h;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public final Brush d() {
            return null;
        }
    }

    float a();

    long b();

    default TextForegroundStyle c(TextForegroundStyle textForegroundStyle) {
        boolean z = textForegroundStyle instanceof BrushStyle;
        if (z && (this instanceof BrushStyle)) {
            BrushStyle brushStyle = (BrushStyle) textForegroundStyle;
            ShaderBrush shaderBrush = brushStyle.a;
            float f = brushStyle.b;
            if (Float.isNaN(f)) {
                f = ((BrushStyle) this).b;
            }
            return new BrushStyle(shaderBrush, f);
        }
        if (z && !(this instanceof BrushStyle)) {
            return textForegroundStyle;
        }
        if (!z && (this instanceof BrushStyle)) {
            return this;
        }
        if (!textForegroundStyle.equals(Unspecified.a)) {
            return textForegroundStyle;
        }
        return this;
    }

    Brush d();
}
