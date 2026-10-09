package defpackage;

import android.graphics.Typeface;
import android.text.Spannable;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.PagerSnapLayoutInfoProviderKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.ColorMatrixColorFilter;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.a;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.math.MathKt;
import kotlin.text.StringsKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.components.ComposableSingletons$AndroidAvatarEditorKt;
import net.blip.android.ui.lockups.ButtonRowItem;
import net.blip.android.ui.onboarding.ComposablesKt;
import net.blip.libblip.User;
import net.blip.shared.AvatarEditorScope;
import net.blip.shared.AvatarKt;
import net.blip.shared.AvatarTheme;
import net.blip.shared.Modifier_ColorFilterKt;
import net.blip.shared.Paintable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i0 implements Function3 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ i0(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x018b, code lost:
    
        if (r4 != false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01ca, code lost:
    
        r7 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c8, code lost:
    
        if (r15 == 2) goto L89;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        ColorMatrixColorFilter colorMatrixColorFilter;
        float f;
        boolean h;
        boolean z2;
        float max;
        TextUnit textUnit;
        long d;
        boolean z3;
        float a;
        int i;
        int i2 = this.j;
        int i3 = 5;
        float f2 = 0.0f;
        Object obj4 = Composer.Companion.a;
        int i4 = 4;
        int i5 = 2;
        boolean z4 = true;
        Unit unit = Unit.a;
        Object obj5 = this.l;
        Object obj6 = this.k;
        boolean z5 = false;
        int i6 = 0;
        Object[] objArr = 0;
        boolean z6 = false;
        switch (i2) {
            case 0:
                Modifier modifier = (Modifier) obj6;
                User user = (User) obj5;
                AvatarEditorScope avatarEditorScope = (AvatarEditorScope) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                avatarEditorScope.getClass();
                boolean z7 = avatarEditorScope.a;
                if ((intValue & 6) == 0) {
                    GapComposer gapComposer = (GapComposer) composer;
                    if ((intValue & 8) == 0) {
                        h = gapComposer.f(avatarEditorScope);
                    } else {
                        h = gapComposer.h(avatarEditorScope);
                    }
                    if (!h) {
                        i4 = 2;
                    }
                    intValue |= i4;
                }
                if ((intValue & 19) != 18) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z)) {
                    Function0 function0 = avatarEditorScope.b;
                    Role role = new Role(5);
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier b = ClickableKt.b(companion, false, "Choose avatar image", role, function0, 9);
                    MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, modifier);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    boolean z8 = gapComposer2.S;
                    x9 x9Var = LayoutNode.b0;
                    if (z8) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    e6 e6Var = ComposeUiNode.Companion.d;
                    Updater.c(gapComposer2, d2, e6Var);
                    e6 e6Var2 = ComposeUiNode.Companion.c;
                    Updater.c(gapComposer2, l, e6Var2);
                    Integer valueOf = Integer.valueOf(hashCode);
                    e6 e6Var3 = ComposeUiNode.Companion.e;
                    Updater.c(gapComposer2, valueOf, e6Var3);
                    Updater.b(gapComposer2);
                    e6 e6Var4 = ComposeUiNode.Companion.b;
                    Updater.c(gapComposer2, c, e6Var4);
                    Modifier c2 = SizeKt.c(companion, 1.0f);
                    if (z7) {
                        colorMatrixColorFilter = Modifier_ColorFilterKt.a(0.0f);
                    } else {
                        colorMatrixColorFilter = null;
                    }
                    c2.getClass();
                    Modifier c3 = DrawModifierKt.c(c2, new ma(i5, colorMatrixColorFilter));
                    if (z7) {
                        f = 0.75f;
                    } else {
                        f = 1.0f;
                    }
                    Modifier a2 = AlphaKt.a(c3, f);
                    RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.a;
                    AvatarKt.c(ClipKt.a(a2, roundedCornerShape).l(b), null, user, null, gapComposer2, 0, 10);
                    Modifier l2 = BackgroundKt.b(ClipKt.a(ShadowKt.a(OffsetKt.b(BoxScopeInstance.a.d(SizeKt.k(companion, 40.0f), Alignment.Companion.i), 8.0f, 2.0f), 16.0f, roundedCornerShape, 0L, 28), roundedCornerShape), ((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).j, RectangleShapeKt.a).l(b);
                    BiasAlignment biasAlignment = Alignment.Companion.e;
                    MeasurePolicy d3 = BoxKt.d(biasAlignment, false);
                    int hashCode2 = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l3 = gapComposer2.l();
                    Modifier c4 = ComposedModifierKt.c(gapComposer2, l2);
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, d3, e6Var);
                    Updater.c(gapComposer2, l3, e6Var2);
                    q.s(hashCode2, gapComposer2, e6Var3, gapComposer2);
                    Updater.c(gapComposer2, c4, e6Var4);
                    AnimatedContentKt.b(Boolean.valueOf(z7), null, null, biasAlignment, "", null, ComposableSingletons$AndroidAvatarEditorKt.a, gapComposer2, 1600512, 38);
                    gapComposer2.p(true);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case 1:
                Function1 function1 = (Function1) obj6;
                AvatarTheme.Appearance appearance = (AvatarTheme.Appearance) obj5;
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AvatarKt.a;
                boxWithConstraintsScope.getClass();
                if ((intValue2 & 6) == 0) {
                    if (!((GapComposer) composer2).f(boxWithConstraintsScope)) {
                        i4 = 2;
                    }
                    intValue2 |= i4;
                }
                if ((intValue2 & 19) != 18) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.N(intValue2 & 1, z2)) {
                    float U = ((Density) gapComposer3.j(CompositionLocalsKt.h)).U(Math.min(Constraints.h(boxWithConstraintsScope.a()), Constraints.g(boxWithConstraintsScope.a())));
                    if (new Dp(U).compareTo(new Dp(80.0f)) <= 0 && new Dp(U).compareTo(new Dp(0.0f)) >= 0) {
                        max = U / 1.5f;
                    } else {
                        max = Math.max(80.0f, U / 1.75f);
                    }
                    Modifier k = SizeKt.k(Modifier.Companion.b, MathKt.b(max / 1.0f) * 1.0f);
                    Paintable paintable = (Paintable) function1.b(appearance);
                    paintable.getClass();
                    Object obj7 = (Painter) paintable.a.n(gapComposer3, 0);
                    boolean f3 = gapComposer3.f(paintable) | gapComposer3.f(obj7);
                    Object K = gapComposer3.K();
                    if (!f3 && K != obj4) {
                        obj7 = K;
                    } else {
                        gapComposer3.g0(obj7);
                    }
                    ImageKt.a((Painter) obj7, "", k, null, null, 0.0f, null, gapComposer3, 56, 120);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AvatarTheme.Appearance appearance2 = (AvatarTheme.Appearance) obj6;
                String str = (String) obj5;
                BoxWithConstraintsScope boxWithConstraintsScope2 = (BoxWithConstraintsScope) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AvatarKt.a;
                boxWithConstraintsScope2.getClass();
                if ((intValue3 & 6) == 0) {
                    if (!((GapComposer) composer3).f(boxWithConstraintsScope2)) {
                        i4 = 2;
                    }
                    intValue3 |= i4;
                }
                if ((intValue3 & 19) != 18) {
                    z5 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (gapComposer4.N(intValue3 & 1, z5)) {
                    float U2 = ((Density) gapComposer4.j(CompositionLocalsKt.h)).U(Math.min(Constraints.h(boxWithConstraintsScope2.a()), Constraints.g(boxWithConstraintsScope2.a()))) / 64.0f;
                    long j = appearance2.c.a.b;
                    TextUnit textUnit2 = new TextUnit(j);
                    if ((j & 1095216660480L) == 0) {
                        textUnit = null;
                    } else {
                        textUnit = textUnit2;
                    }
                    if (textUnit != null) {
                        d = textUnit.a;
                    } else {
                        d = TextUnitKt.d(20);
                    }
                    long j2 = d & 1095216660480L;
                    if (j2 == 0) {
                        InlineClassHelperKt.a("Cannot perform operation for Unspecified type.");
                    }
                    long e = TextUnitKt.e(j2, TextUnit.c(d) * U2);
                    String upperCase = str.toUpperCase(Locale.ROOT);
                    upperCase.getClass();
                    BasicTextKt.b(upperCase, null, TextStyle.a(appearance2.c, 0L, e, null, 0L, e, null, 0, 16613373), 0, false, 0, 0, null, gapComposer4, 0, 1018);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Function1 function12 = (Function1) obj6;
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj5;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ContextMenuColors contextMenuColors2 = ContextMenuUiKt.a;
                if ((intValue4 & 17) != 16) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (gapComposer5.N(intValue4 & 1, z3)) {
                    Object K2 = gapComposer5.K();
                    if (K2 == obj4) {
                        K2 = new ContextMenuScope();
                        gapComposer5.g0(K2);
                    }
                    ContextMenuScope contextMenuScope = (ContextMenuScope) K2;
                    contextMenuScope.a.clear();
                    function12.b(contextMenuScope);
                    contextMenuScope.a(contextMenuColors, gapComposer5, 0);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Function1 function13 = (Function1) obj6;
                MutableState mutableState = (MutableState) obj5;
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                if ((intValue5 & 17) != 16) {
                    z6 = true;
                }
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (gapComposer6.N(intValue5 & 1, z6)) {
                    boolean z9 = !StringsKt.t(((TextFieldValue) mutableState.getValue()).a.k);
                    boolean f4 = gapComposer6.f(function13);
                    Object K3 = gapComposer6.K();
                    if (f4 || K3 == obj4) {
                        K3 = new k9(i3, mutableState, function13);
                        gapComposer6.g0(K3);
                    }
                    ComposablesKt.a("Send code", z9, (Function0) K3, gapComposer6, 6, 0);
                } else {
                    gapComposer6.Q();
                }
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                PagerState pagerState = (PagerState) obj6;
                LayoutDirection layoutDirection = (LayoutDirection) obj5;
                float floatValue = ((Float) obj).floatValue();
                float floatValue2 = ((Float) obj2).floatValue();
                float floatValue3 = ((Float) obj3).floatValue();
                boolean b2 = PagerSnapLayoutInfoProviderKt.b(pagerState, floatValue);
                if (((PagerMeasureResult) pagerState.k()).e != Orientation.j && layoutDirection != LayoutDirection.j) {
                    b2 = !b2;
                }
                int i7 = ((PagerMeasureResult) pagerState.k()).b;
                if (i7 == 0) {
                    a = 0.0f;
                } else {
                    a = PagerSnapLayoutInfoProviderKt.a(pagerState) / i7;
                }
                float f5 = a - ((int) a);
                if (Math.abs(floatValue) >= pagerState.n.i0(400.0f)) {
                    if (floatValue > 0.0f) {
                        objArr = 1;
                    } else {
                        objArr = 2;
                    }
                }
                if (objArr == 0) {
                    if (Math.abs(f5) <= 0.5f) {
                        float abs = Math.abs(a);
                        Density density = pagerState.n;
                        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.a;
                        if (abs < Math.abs(Math.min(density.i0(56.0f), pagerState.m() / 2.0f) / pagerState.m())) {
                            f2 = floatValue3;
                            break;
                        } else {
                            f2 = floatValue3;
                        }
                    }
                } else {
                    if (objArr != 1) {
                    }
                    f2 = floatValue3;
                }
                return Float.valueOf(f2);
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Function4 function4 = (Function4) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                Object obj8 = (ColumnScope) obj;
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                obj8.getClass();
                if ((intValue6 & 6) == 0) {
                    if (!((GapComposer) composer6).f(obj8)) {
                        i4 = 2;
                    }
                    intValue6 |= i4;
                }
                if ((intValue6 & 19) == 18) {
                    z4 = false;
                }
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (gapComposer7.N(intValue6 & 1, z4)) {
                    Object K4 = gapComposer7.K();
                    if (K4 == obj4) {
                        K4 = new cd(mutableState2, 0);
                        gapComposer7.g0(K4);
                    }
                    function4.j(obj8, (Function0) K4, gapComposer7, Integer.valueOf((intValue6 & 14) | 48));
                } else {
                    gapComposer7.Q();
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ButtonRowItem.IconMenu iconMenu = (ButtonRowItem.IconMenu) obj6;
                MutableState mutableState3 = (MutableState) obj5;
                ColumnScope columnScope = (ColumnScope) obj;
                Composer composer7 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                columnScope.getClass();
                if ((intValue7 & 6) == 0) {
                    if (!((GapComposer) composer7).f(columnScope)) {
                        i4 = 2;
                    }
                    intValue7 |= i4;
                }
                if ((intValue7 & 19) == 18) {
                    z4 = false;
                }
                GapComposer gapComposer8 = (GapComposer) composer7;
                if (gapComposer8.N(intValue7 & 1, z4)) {
                    ComposableLambdaImpl composableLambdaImpl = iconMenu.a;
                    Object K5 = gapComposer8.K();
                    if (K5 == obj4) {
                        K5 = new cd(mutableState3, 9);
                        gapComposer8.g0(K5);
                    }
                    composableLambdaImpl.j(columnScope, (Function0) K5, gapComposer8, Integer.valueOf((intValue7 & 14) | 48));
                } else {
                    gapComposer8.Q();
                }
                return unit;
            default:
                Spannable spannable = (Spannable) obj6;
                a aVar = (a) obj5;
                SpanStyle spanStyle = (SpanStyle) obj;
                int intValue8 = ((Integer) obj2).intValue();
                int intValue9 = ((Integer) obj3).intValue();
                FontFamily fontFamily = spanStyle.f;
                FontWeight fontWeight = spanStyle.c;
                if (fontWeight == null) {
                    fontWeight = FontWeight.q;
                }
                FontStyle fontStyle = spanStyle.d;
                if (fontStyle != null) {
                    i6 = fontStyle.a;
                }
                FontStyle fontStyle2 = new FontStyle(i6);
                FontSynthesis fontSynthesis = spanStyle.e;
                if (fontSynthesis != null) {
                    i = fontSynthesis.a;
                } else {
                    i = 65535;
                }
                spannable.setSpan(new TypefaceSpan((Typeface) aVar.j(fontFamily, fontWeight, fontStyle2, new FontSynthesis(i))), intValue8, intValue9, 33);
                return unit;
        }
    }
}
