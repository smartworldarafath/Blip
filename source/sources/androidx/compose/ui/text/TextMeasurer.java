package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextMeasurer {
    public final FontFamily.Resolver a;
    public final Density b;
    public final LayoutDirection c;
    public final TextLayoutCache d = new TextLayoutCache();

    public TextMeasurer(FontFamily.Resolver resolver, Density density, LayoutDirection layoutDirection) {
        this.a = resolver;
        this.b = density;
        this.c = layoutDirection;
    }
}
