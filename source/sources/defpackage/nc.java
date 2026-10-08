package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.UriHandler;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.shared.LinkableTextKt;
import net.blip.shared.SimpleLinkTextButton;
import net.blip.shared.Strings$Onboarding$Splash;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class nc implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function0 k;

    public /* synthetic */ nc(int i, Function0 function0) {
        this.j = i;
        this.k = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        boolean z = false;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    ComposablesKt.a("Done", false, this.k, gapComposer, 6, 2);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(16.0f), Alignment.Companion.n, gapComposer2, 54);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, Modifier.Companion.b);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                    ComposablesKt.a("Sign in with email", false, this.k, gapComposer2, 6, 2);
                    UriHandler uriHandler = (UriHandler) gapComposer2.j(CompositionLocalsKt.s);
                    String str = Strings$Onboarding$Splash.a;
                    TextStyle textStyle = ((AndroidTextStyles) gapComposer2.j(AndroidTextStylesKt.a)).b;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
                    TextStyle a2 = TextStyle.a(textStyle, ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal)).e, TextUnitKt.d(14), null, 0L, 0L, null, 0, 16744444);
                    long j = ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal)).c;
                    boolean h = gapComposer2.h(uriHandler);
                    Object K = gapComposer2.K();
                    if (h || K == Composer.Companion.a) {
                        K = new ma(8, uriHandler);
                        gapComposer2.g0(K);
                    }
                    LinkableTextKt.a(null, str, a2, new SimpleLinkTextButton(j, (Function1) K), gapComposer2, 0, 1);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
