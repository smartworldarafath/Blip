package androidx.compose.foundation.text;

import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import defpackage.qg;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldDelegateKt {
    public static final String a = StringsKt.D(10, "H");

    public static long a(TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
        AndroidParagraph b = b(textStyle, density, resolver, 1, false);
        return (TextDelegateKt.a(b.a.b()) << 32) | (TextDelegateKt.a(b.f) & 4294967295L);
    }

    public static final AndroidParagraph b(TextStyle textStyle, Density density, FontFamily.Resolver resolver, int i, boolean z) {
        String y = CollectionsKt.y(RangesKt.j(0, i), "\n", null, null, new qg(1), 30);
        EmptyList emptyList = EmptyList.j;
        return new AndroidParagraph(new AndroidParagraphIntrinsics(y, textStyle, emptyList, emptyList, resolver, density, z), i, 1, ConstraintsKt.b(0, 0, 0, 0, 15));
    }
}
