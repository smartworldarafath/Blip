package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextDelegate {
    public final AnnotatedString a;
    public final TextStyle b;
    public final boolean e;
    public final Density g;
    public final FontFamily.Resolver h;
    public MultiParagraphIntrinsics j;
    public LayoutDirection k;
    public final int c = Integer.MAX_VALUE;
    public final int d = 1;
    public final int f = 1;
    public final List i = EmptyList.j;

    public TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, boolean z, Density density, FontFamily.Resolver resolver, int i) {
        this.a = annotatedString;
        this.b = textStyle;
        this.e = z;
        this.g = density;
        this.h = resolver;
    }

    public final void a(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.j;
        if (multiParagraphIntrinsics == null || layoutDirection != this.k || multiParagraphIntrinsics.a()) {
            this.k = layoutDirection;
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(this.a, TextStyleKt.a(this.b, layoutDirection), this.i, this.g, this.h, this.e);
        }
        this.j = multiParagraphIntrinsics;
    }
}
