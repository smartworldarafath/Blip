package net.blip.android.ui.onboarding;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.RepeatMode;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.foundation.text.InlineTextContentKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import com.google.accompanist.drawablepainter.DrawablePainter;
import defpackage.e6;
import defpackage.f6;
import defpackage.q;
import defpackage.r4;
import defpackage.w;
import defpackage.x9;
import defpackage.z6;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.util.AppIconKt;
import net.blip.shared.ColorKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OnboardingShareInstructionsStepKt {
    public static final void a(int i, Composer composer) {
        boolean z;
        final int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-672315635);
        final int i3 = 0;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            final DrawablePainter a = AppIconKt.a(gapComposer);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = ComposedModifierKt.c(gapComposer, companion);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z2 = gapComposer.S;
            x9 x9Var = LayoutNode.b0;
            if (z2) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, d, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            q.s(hashCode, gapComposer, e6Var3, gapComposer);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var4);
            BoxKt.a(BackgroundKt.b(ClipKt.a(ShadowKt.a(SizeKt.c(companion, 1.0f), 8.0f, RoundedCornerShapeKt.b(24.0f), ColorKt.a(Color.b, 0.75f), 12), RoundedCornerShapeKt.b(24.0f)), ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).j, RectangleShapeKt.a), gapComposer, 0);
            Modifier g = PaddingKt.g(companion, 16.0f, 24.0f, 16.0f, 24.0f);
            ColumnMeasurePolicy a2 = ColumnKt.a(Arrangement.e(16.0f), Alignment.Companion.n, gapComposer, 54);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, g);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a2, e6Var);
            Updater.c(gapComposer, l2, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c2, e6Var4);
            Modifier d2 = SizeKt.d(companion, 1.0f);
            Arrangement.SpacedAligned e = Arrangement.e(16.0f);
            BiasAlignment.Vertical vertical = Alignment.Companion.j;
            RowMeasurePolicy a3 = RowKt.a(e, vertical, gapComposer, 6);
            int hashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l3 = gapComposer.l();
            Modifier c3 = ComposedModifierKt.c(gapComposer, d2);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a3, e6Var);
            Updater.c(gapComposer, l3, e6Var2);
            q.s(hashCode3, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c3, e6Var4);
            RowScopeInstance rowScopeInstance = RowScopeInstance.a;
            b(rowScopeInstance.a(), "Your Laptop", ComposableSingletons$OnboardingShareInstructionsStepKt.f, ComposableLambdaKt.b(-1905115151, new Function2() { // from class: oc
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i4 = i3;
                    Unit unit = Unit.a;
                    boolean z3 = false;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    switch (i4) {
                        case 0:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, null, null, null, 0.0f, null, gapComposer2, 56, 124);
                            } else {
                                gapComposer2.Q();
                            }
                            return unit;
                        case 1:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, null, null, null, 0.0f, null, gapComposer3, 56, 124);
                            } else {
                                gapComposer3.Q();
                            }
                            return unit;
                        default:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer4 = (GapComposer) composer2;
                            if (gapComposer4.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, SizeKt.c(Modifier.Companion.b, 1.0f), null, null, 0.0f, null, gapComposer4, 440, 120);
                            } else {
                                gapComposer4.Q();
                            }
                            return unit;
                    }
                }
            }, gapComposer), ComposableSingletons$OnboardingShareInstructionsStepKt.g, gapComposer, 28080, 0);
            final int i4 = 1;
            b(rowScopeInstance.a(), "Alicia", ComposableSingletons$OnboardingShareInstructionsStepKt.h, ComposableLambdaKt.b(1353124072, new Function2() { // from class: oc
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i42 = i4;
                    Unit unit = Unit.a;
                    boolean z3 = false;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    switch (i42) {
                        case 0:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, null, null, null, 0.0f, null, gapComposer2, 56, 124);
                            } else {
                                gapComposer2.Q();
                            }
                            return unit;
                        case 1:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, null, null, null, 0.0f, null, gapComposer3, 56, 124);
                            } else {
                                gapComposer3.Q();
                            }
                            return unit;
                        default:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer4 = (GapComposer) composer2;
                            if (gapComposer4.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, SizeKt.c(Modifier.Companion.b, 1.0f), null, null, 0.0f, null, gapComposer4, 440, 120);
                            } else {
                                gapComposer4.Q();
                            }
                            return unit;
                    }
                }
            }, gapComposer), null, gapComposer, 3504, 16);
            gapComposer.W(-1666725537);
            String[] strArr = {"Hannah Thorpe", "Louie"};
            int i5 = 0;
            while (true) {
                i2 = 2;
                if (i5 >= 2) {
                    break;
                }
                String str = strArr[i5];
                b(AlphaKt.a(rowScopeInstance.a(), 0.3f), str, ComposableLambdaKt.b(-375916616, new w(str, 3), gapComposer), ComposableSingletons$OnboardingShareInstructionsStepKt.i, null, gapComposer, 3456, 16);
                i5++;
            }
            gapComposer.p(false);
            gapComposer.p(true);
            Modifier d3 = SizeKt.d(companion, 1.0f);
            RowMeasurePolicy a4 = RowKt.a(Arrangement.e(16.0f), vertical, gapComposer, 6);
            int hashCode4 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l4 = gapComposer.l();
            Modifier c4 = ComposedModifierKt.c(gapComposer, d3);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a4, e6Var);
            Updater.c(gapComposer, l4, e6Var2);
            q.s(hashCode4, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c4, e6Var4);
            b(AlphaKt.a(rowScopeInstance.a(), 0.3f), "Messages", ComposableSingletons$OnboardingShareInstructionsStepKt.j, null, null, gapComposer, 432, 24);
            b(AlphaKt.a(rowScopeInstance.a(), 0.3f), "Gmail", ComposableSingletons$OnboardingShareInstructionsStepKt.k, null, null, gapComposer, 432, 24);
            b(rowScopeInstance.a(), "Blip", ComposableLambdaKt.b(-1891335423, new Function2() { // from class: oc
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i42 = i2;
                    Unit unit = Unit.a;
                    boolean z3 = false;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    switch (i42) {
                        case 0:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, null, null, null, 0.0f, null, gapComposer2, 56, 124);
                            } else {
                                gapComposer2.Q();
                            }
                            return unit;
                        case 1:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, null, null, null, 0.0f, null, gapComposer3, 56, 124);
                            } else {
                                gapComposer3.Q();
                            }
                            return unit;
                        default:
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer4 = (GapComposer) composer2;
                            if (gapComposer4.N(intValue & 1, z3)) {
                                ImageKt.a(a, null, SizeKt.c(Modifier.Companion.b, 1.0f), null, null, 0.0f, null, gapComposer4, 440, 120);
                            } else {
                                gapComposer4.Q();
                            }
                            return unit;
                    }
                }
            }, gapComposer), null, ComposableSingletons$OnboardingShareInstructionsStepKt.l, gapComposer, 25008, 8);
            b(AlphaKt.a(rowScopeInstance.a(), 0.3f), "Print", ComposableSingletons$OnboardingShareInstructionsStepKt.m, null, null, gapComposer, 432, 24);
            gapComposer.p(true);
            gapComposer.p(true);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, 16);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0053  */
    /* JADX WARN: Type inference failed for: r1v12, types: [androidx.compose.runtime.internal.ComposableLambdaImpl] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function2 function22, Composer composer, int i, int i2) {
        int i3;
        int i4;
        Function2 function23;
        int i5;
        Function2 function24;
        int i6;
        boolean z;
        ComposableLambdaImpl composableLambdaImpl2;
        Function2 function25;
        Function2 function26;
        RecomposeScopeImpl r;
        Function2 function27;
        BiasAlignment biasAlignment;
        boolean z2;
        boolean z3;
        int i7;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2071890224);
        if (gapComposer.f(modifier)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i8 = i3 | i;
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i8 |= i7;
        }
        int i9 = i2 & 8;
        if (i9 != 0) {
            i8 |= 3072;
        } else if ((i & 3072) == 0) {
            Function2 function28 = function2;
            if (gapComposer.h(function28)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i8 |= i4;
            function23 = function28;
            i5 = i2 & 16;
            if (i5 == 0) {
                i8 |= 24576;
            } else if ((i & 24576) == 0) {
                function24 = function22;
                if (gapComposer.h(function24)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i8 |= i6;
                if ((i8 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposer.N(i8 & 1, z)) {
                    Function2 function29 = function23;
                    if (i9 != 0) {
                        function29 = null;
                    }
                    if (i5 != 0) {
                        function27 = null;
                    } else {
                        function27 = function24;
                    }
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(8.0f), Alignment.Companion.n, gapComposer, 54);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, modifier);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    boolean z4 = gapComposer.S;
                    x9 x9Var = LayoutNode.b0;
                    if (z4) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    e6 e6Var = ComposeUiNode.Companion.d;
                    Updater.c(gapComposer, a, e6Var);
                    e6 e6Var2 = ComposeUiNode.Companion.c;
                    Updater.c(gapComposer, l, e6Var2);
                    Integer valueOf = Integer.valueOf(hashCode);
                    e6 e6Var3 = ComposeUiNode.Companion.e;
                    Updater.c(gapComposer, valueOf, e6Var3);
                    Updater.b(gapComposer);
                    e6 e6Var4 = ComposeUiNode.Companion.b;
                    Updater.c(gapComposer, c, e6Var4);
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier a2 = AspectRatioKt.a(companion);
                    BiasAlignment biasAlignment2 = Alignment.Companion.a;
                    int i10 = i8;
                    MeasurePolicy d = BoxKt.d(biasAlignment2, false);
                    int hashCode2 = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l2 = gapComposer.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer, a2);
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, d, e6Var);
                    Updater.c(gapComposer, l2, e6Var2);
                    q.s(hashCode2, gapComposer, e6Var3, gapComposer);
                    Updater.c(gapComposer, c2, e6Var4);
                    float f = 1.0f;
                    if (function27 == null) {
                        gapComposer.W(-1914758344);
                        z2 = false;
                        gapComposer.p(false);
                        biasAlignment = biasAlignment2;
                    } else {
                        gapComposer.W(-1914758343);
                        Modifier a3 = ZIndexModifierKt.a(companion, 1.0f);
                        biasAlignment = biasAlignment2;
                        MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                        int hashCode3 = Long.hashCode(gapComposer.T);
                        PersistentCompositionLocalMap l3 = gapComposer.l();
                        Modifier c3 = ComposedModifierKt.c(gapComposer, a3);
                        gapComposer.Z();
                        if (gapComposer.S) {
                            gapComposer.k(x9Var);
                        } else {
                            gapComposer.j0();
                        }
                        Updater.c(gapComposer, d2, e6Var);
                        Updater.c(gapComposer, l3, e6Var2);
                        q.s(hashCode3, gapComposer, e6Var3, gapComposer);
                        Updater.c(gapComposer, c3, e6Var4);
                        function27.n(gapComposer, 0);
                        gapComposer.p(true);
                        z2 = false;
                        gapComposer.p(false);
                        f = 1.0f;
                    }
                    Modifier c4 = SizeKt.c(companion, f);
                    RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.a;
                    Modifier a4 = ZIndexModifierKt.a(ClipKt.a(c4, roundedCornerShape), 2.0f);
                    MeasurePolicy d3 = BoxKt.d(biasAlignment, z2);
                    int hashCode4 = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l4 = gapComposer.l();
                    Modifier c5 = ComposedModifierKt.c(gapComposer, a4);
                    gapComposer.Z();
                    Function2 function210 = function27;
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, d3, e6Var);
                    Updater.c(gapComposer, l4, e6Var2);
                    q.s(hashCode4, gapComposer, e6Var3, gapComposer);
                    Updater.c(gapComposer, c5, e6Var4);
                    ?? r1 = composableLambdaImpl;
                    r1.n(gapComposer, 6);
                    gapComposer.p(true);
                    if (function29 == null) {
                        gapComposer.W(-1914484149);
                        gapComposer.p(false);
                        z3 = true;
                    } else {
                        gapComposer.W(-1914484148);
                        Modifier a5 = ZIndexModifierKt.a(BoxScopeInstance.a.d(ClipKt.a(AspectRatioKt.a(SizeKt.c(companion, 0.333f)), roundedCornerShape), Alignment.Companion.i), 3.0f);
                        MeasurePolicy d4 = BoxKt.d(biasAlignment, false);
                        int hashCode5 = Long.hashCode(gapComposer.T);
                        PersistentCompositionLocalMap l5 = gapComposer.l();
                        Modifier c6 = ComposedModifierKt.c(gapComposer, a5);
                        gapComposer.Z();
                        if (gapComposer.S) {
                            gapComposer.k(x9Var);
                        } else {
                            gapComposer.j0();
                        }
                        Updater.c(gapComposer, d4, e6Var);
                        Updater.c(gapComposer, l5, e6Var2);
                        q.s(hashCode5, gapComposer, e6Var3, gapComposer);
                        Updater.c(gapComposer, c6, e6Var4);
                        function29.n(gapComposer, 0);
                        z3 = true;
                        gapComposer.p(true);
                        gapComposer.p(false);
                    }
                    gapComposer.p(z3);
                    PlatformTextKt.c(str, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(12), null, 0L, 0L, null, 0, 16744445), 0, false, 2, 2, null, gapComposer, ((i10 >> 3) & 14) | 14155776, 314);
                    gapComposer.p(z3);
                    function25 = function29;
                    function26 = function210;
                    composableLambdaImpl2 = r1;
                } else {
                    composableLambdaImpl2 = composableLambdaImpl;
                    gapComposer.Q();
                    function25 = function23;
                    function26 = function24;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new f6(modifier, str, composableLambdaImpl2, function25, function26, i, i2);
                    return;
                }
                return;
            }
            function24 = function22;
            if ((i8 & 9363) != 9362) {
            }
            if (gapComposer.N(i8 & 1, z)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        function23 = function2;
        i5 = i2 & 16;
        if (i5 == 0) {
        }
        function24 = function22;
        if ((i8 & 9363) != 9362) {
        }
        if (gapComposer.N(i8 & 1, z)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }

    public static final void c(Modifier modifier, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1488463592);
        int i2 = i | 6;
        if ((i2 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            InfiniteTransition c = InfiniteTransitionKt.c(gapComposer);
            TweenSpec c2 = AnimationSpecKt.c(1000, 0, EasingKt.c, 2);
            RepeatMode repeatMode = RepeatMode.j;
            InfiniteTransition.TransitionAnimationState a = InfiniteTransitionKt.a(c, 0.01f, 0.15f, AnimationSpecKt.a(c2, 4), gapComposer, 29112, 0);
            Modifier.Companion companion = Modifier.Companion.b;
            BoxKt.a(BackgroundKt.b(AlphaKt.a(ClipKt.a(ScaleKt.a(SizeKt.c(companion, 1.0f), 2.5f), RoundedCornerShapeKt.a), ((Number) a.getValue()).floatValue()), ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).b, RectangleShapeKt.a), gapComposer, 0);
            modifier = companion;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r4(modifier, i, 2);
        }
    }

    public static final void d(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1748597193);
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            gapComposer.W(-1069686601);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            builder.j.append("Tap ");
            InlineTextContentKt.a(builder, "shareIcon", "[shareIcon]");
            gapComposer.W(-1069682981);
            AnnotatedString.Builder builder2 = new AnnotatedString.Builder();
            int r = StringsKt.r(" Share to send", "Share", 0, false, 6);
            builder2.j.append(" Share to send");
            builder2.a(new TextStyle(((AndroidColors) gapComposer.j(AndroidColorsKt.a)).b, 0L, null, null, 0L, 0, 0L, 0, 16777214).a, r, r + 5);
            AnnotatedString e = builder2.e();
            gapComposer.p(false);
            builder.b(e);
            AnnotatedString e2 = builder.e();
            gapComposer.p(false);
            ComposablesKt.f(e2, MapsKt.e(new Pair("shareIcon", new InlineTextContent(new Placeholder(7, TextUnitKt.e(8589934592L, 1.0f), TextUnitKt.e(8589934592L, 1.0f)), ComposableSingletons$OnboardingShareInstructionsStepKt.e))), gapComposer, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r2 = gapComposer.r();
        if (r2 != null) {
            r2.d = new z6(i, 17);
        }
    }
}
