package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.transfer.ComposableSingletons$TransferHeaderKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.ColorKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z implements Function3 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;

    public /* synthetic */ z(int i, Object obj, boolean z) {
        this.j = i;
        this.l = obj;
        this.k = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        long j;
        float f;
        int i = this.j;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Unit unit = Unit.a;
        boolean z2 = false;
        final boolean z3 = this.k;
        Object obj4 = this.l;
        switch (i) {
            case 0:
                Pair pair = (Pair) obj4;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue & 17) != 16) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(1 & intValue, z)) {
                    String str = (String) pair.j;
                    TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b;
                    if (z3) {
                        gapComposer.W(8678552);
                        j = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).g;
                    } else {
                        gapComposer.W(8680084);
                        j = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).d;
                    }
                    gapComposer.p(false);
                    PlatformTextKt.c(str, null, TextStyle.a(textStyle, j, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 0, 506);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                final Function0 function0 = (Function0) obj4;
                Modifier modifier = (Modifier) obj;
                ((Integer) obj3).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj2);
                gapComposer2.W(-196777734);
                final long j2 = ((TextSelectionColors) gapComposer2.j(TextSelectionColorsKt.a)).a;
                boolean e = gapComposer2.e(j2) | gapComposer2.f(function0) | gapComposer2.g(z3);
                Object K = gapComposer2.K();
                if (e || K == composer$Companion$Empty$1) {
                    K = new Function1() { // from class: d2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj5) {
                            CacheDrawScope cacheDrawScope = (CacheDrawScope) obj5;
                            return cacheDrawScope.a(new w1(function0, z3, AndroidSelectionHandles_androidKt.d(cacheDrawScope, Float.intBitsToFloat((int) (cacheDrawScope.j.i() >> 32)) / 2.0f), ColorFilter.Companion.a(j2), 0));
                        }
                    };
                    gapComposer2.g0(K);
                }
                Modifier c = DrawModifierKt.c(modifier, (Function1) K);
                gapComposer2.p(false);
                return c;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                String str2 = (String) obj4;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.N(intValue2 & 1, z2)) {
                    TextStyle textStyle2 = ((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).b;
                    long j3 = ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).h;
                    if (z3) {
                        f = 1.0f;
                    } else {
                        f = 0.33f;
                    }
                    PlatformTextKt.c(str2, null, TextStyle.a(textStyle2, ColorKt.a(j3, f), TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer3, 0, 506);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            default:
                Transfer transfer = (Transfer) obj4;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                if ((intValue3 & 17) != 16) {
                    z2 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (gapComposer4.N(intValue3 & 1, z2)) {
                    Pair pair2 = new Pair(transfer, Boolean.valueOf(z3));
                    Object K2 = gapComposer4.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new qg(16);
                        gapComposer4.g0(K2);
                    }
                    AnimatedContentKt.b(pair2, null, (Function1) K2, null, "", null, ComposableSingletons$TransferHeaderKt.a, gapComposer4, 1597824, 42);
                } else {
                    gapComposer4.Q();
                }
                return unit;
        }
    }
}
