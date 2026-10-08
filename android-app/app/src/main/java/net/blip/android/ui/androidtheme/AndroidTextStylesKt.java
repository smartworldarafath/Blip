package net.blip.android.ui.androidtheme;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontVariation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.ResourceFont;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.h;
import defpackage.n;
import java.util.Arrays;
import java.util.List;
import net.blip.shared.DynamicFontTrackingKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidTextStylesKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new n(12));
    public static final long b = TextUnitKt.d(14);
    public static final FontListFontFamily c;

    static {
        List asList = Arrays.asList(new ResourceFont(FontWeight.n, new FontVariation.Settings(FontVariation.a(250))), new ResourceFont(FontWeight.o, new FontVariation.Settings(FontVariation.a(350))), new ResourceFont(FontWeight.p, new FontVariation.Settings(FontVariation.a(450))), new ResourceFont(FontWeight.q, new FontVariation.Settings(FontVariation.a(525))), new ResourceFont(FontWeight.r, new FontVariation.Settings(FontVariation.a(576))), new ResourceFont(FontWeight.s, new FontVariation.Settings(FontVariation.a(627))), new ResourceFont(FontWeight.t, new FontVariation.Settings(FontVariation.a(680))), new ResourceFont(FontWeight.u, new FontVariation.Settings(FontVariation.a(800))), new ResourceFont(FontWeight.v, new FontVariation.Settings(FontVariation.a(900))));
        asList.getClass();
        FontListFontFamily fontListFontFamily = new FontListFontFamily(asList);
        DynamicFontTrackingKt.a.put(fontListFontFamily, new h(10));
        c = fontListFontFamily;
    }
}
