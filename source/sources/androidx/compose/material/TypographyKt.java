package androidx.compose.material;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.LineHeightStyle;
import defpackage.hh;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TypographyKt {
    public static final TextStyle a = TextStyle.a(TextStyle.d, 0, 0, null, 0, 0, new LineHeightStyle(LineHeightStyle.Alignment.b, 0, 0), 0, 15204351);
    public static final StaticProvidableCompositionLocal b = new CompositionLocal(new hh(2));

    public static final TextStyle a(TextStyle textStyle) {
        if (textStyle.a.f != null) {
            return textStyle;
        }
        return TextStyle.a(textStyle, 0L, 0L, null, 0L, 0L, null, 0, 16777183);
    }
}
