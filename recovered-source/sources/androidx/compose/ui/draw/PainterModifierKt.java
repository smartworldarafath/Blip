package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PainterModifierKt {
    public static Modifier a(Modifier modifier, Painter painter, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i) {
        if ((i & 4) != 0) {
            alignment = Alignment.Companion.e;
        }
        Alignment alignment2 = alignment;
        if ((i & 16) != 0) {
            f = 1.0f;
        }
        return modifier.l(new PainterElement(painter, alignment2, contentScale, f, colorFilter));
    }
}
