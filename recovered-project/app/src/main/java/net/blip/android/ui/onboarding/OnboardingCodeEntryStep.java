package net.blip.android.ui.onboarding;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.e6;
import defpackage.ec;
import defpackage.i2;
import defpackage.o1;
import defpackage.s;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.android.ui.components.InlineTextButtonKt;
import net.blip.android.ui.components.StyledTextFieldKt;
import net.blip.android.ui.onboarding.OnboardingCodeEntryStep;
import net.blip.android.ui.util.KeyboardKt;
import net.blip.libblip.frontend.Err;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingCodeEntryStep {
    public static final OnboardingCodeEntryStep a = new Object();

    public final void a(final String str, final boolean z, final Err err, final Function1 function1, final Function0 function0, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        GapComposer gapComposer;
        boolean z3;
        boolean z4;
        boolean z5;
        function1.getClass();
        function0.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-418960822);
        if (gapComposer2.f(str)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i7 = i | i2;
        if (gapComposer2.g(z)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i8 = i7 | i3;
        if (gapComposer2.h(err)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i9 = i8 | i4;
        if (gapComposer2.h(function1)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i10 = i9 | i5;
        if (gapComposer2.h(function0)) {
            i6 = 16384;
        } else {
            i6 = 8192;
        }
        int i11 = i10 | i6;
        if ((i11 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i11 & 1, z2)) {
            final Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(new TextFieldValue(6, 0L, ""));
                gapComposer2.g0(K);
            }
            final MutableState mutableState = (MutableState) K;
            if ((i11 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean f = z3 | gapComposer2.f(err);
            Object K2 = gapComposer2.K();
            if (f || K2 == composer$Companion$Empty$1) {
                if (!z && err != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                K2 = SnapshotStateKt.g(Boolean.valueOf(z4));
                gapComposer2.g0(K2);
            }
            final MutableState mutableState2 = (MutableState) K2;
            Object K3 = gapComposer2.K();
            if (K3 == composer$Companion$Empty$1) {
                K3 = new FocusRequester();
                gapComposer2.g0(K3);
            }
            final FocusRequester focusRequester = (FocusRequester) K3;
            if ((i11 & 57344) == 16384) {
                z5 = true;
            } else {
                z5 = false;
            }
            Object K4 = gapComposer2.K();
            if (z5 || K4 == composer$Companion$Empty$1) {
                K4 = new s(5, function0);
                gapComposer2.g0(K4);
            }
            BackHandlerKt.a(false, (Function0) K4, gapComposer2, 0, 1);
            ComposableLambdaImpl b = ComposableLambdaKt.b(937158939, new Function2() { // from class: ic
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    boolean z6;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if ((intValue & 3) != 2) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.N(intValue & 1, z6)) {
                        Boolean valueOf = Boolean.valueOf(z);
                        final MutableState mutableState3 = mutableState2;
                        final Function1 function12 = function1;
                        final FocusRequester focusRequester2 = focusRequester;
                        final Context context2 = context;
                        final String str2 = str;
                        final Function0 function02 = function0;
                        final MutableState mutableState4 = mutableState;
                        CrossfadeKt.b(valueOf, null, null, "", ComposableLambdaKt.b(-2023713574, new Function3() { // from class: net.blip.android.ui.onboarding.a
                            /* JADX WARN: Type inference failed for: r14v3, types: [androidx.compose.ui.text.input.VisualTransformation, java.lang.Object] */
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj3, Object obj4, Object obj5) {
                                boolean z7;
                                Modifier b2;
                                Modifier b3;
                                int i12;
                                boolean booleanValue = ((Boolean) obj3).booleanValue();
                                Composer composer3 = (Composer) obj4;
                                int intValue2 = ((Integer) obj5).intValue();
                                if ((intValue2 & 6) == 0) {
                                    if (((GapComposer) composer3).g(booleanValue)) {
                                        i12 = 4;
                                    } else {
                                        i12 = 2;
                                    }
                                    intValue2 |= i12;
                                }
                                if ((intValue2 & 19) != 18) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                                GapComposer gapComposer4 = (GapComposer) composer3;
                                if (gapComposer4.N(intValue2 & 1, z7)) {
                                    e6 e6Var = ComposeUiNode.Companion.b;
                                    e6 e6Var2 = ComposeUiNode.Companion.e;
                                    e6 e6Var3 = ComposeUiNode.Companion.c;
                                    e6 e6Var4 = ComposeUiNode.Companion.d;
                                    Modifier.Companion companion = Modifier.Companion.b;
                                    Function0 function03 = LayoutNode.b0;
                                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.b;
                                    if (booleanValue) {
                                        gapComposer4.W(4892398);
                                        Modifier b4 = SizeKt.b(companion, 0.75f);
                                        ColumnMeasurePolicy a2 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.m, gapComposer4, 0);
                                        int hashCode = Long.hashCode(gapComposer4.T);
                                        PersistentCompositionLocalMap l = gapComposer4.l();
                                        Modifier c = ComposedModifierKt.c(gapComposer4, b4);
                                        ComposeUiNode.b.getClass();
                                        gapComposer4.Z();
                                        if (gapComposer4.S) {
                                            gapComposer4.k(function03);
                                        } else {
                                            gapComposer4.j0();
                                        }
                                        Updater.c(gapComposer4, a2, e6Var4);
                                        Updater.c(gapComposer4, l, e6Var3);
                                        Updater.c(gapComposer4, Integer.valueOf(hashCode), e6Var2);
                                        Updater.b(gapComposer4);
                                        Updater.c(gapComposer4, c, e6Var);
                                        b2 = ColumnScopeInstance.a.b(true);
                                        SpacerKt.a(gapComposer4, b2);
                                        ComposablesKt.d(SizeKt.d(companion, 1.0f), "Checking code…", gapComposer4, 54);
                                        b3 = ColumnScopeInstance.a.b(true);
                                        SpacerKt.a(gapComposer4, b3);
                                        gapComposer4.p(true);
                                        gapComposer4.p(false);
                                    } else {
                                        gapComposer4.W(5399806);
                                        Modifier d = SizeKt.d(companion, 1.0f);
                                        ColumnMeasurePolicy a3 = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposer4, 48);
                                        int hashCode2 = Long.hashCode(gapComposer4.T);
                                        PersistentCompositionLocalMap l2 = gapComposer4.l();
                                        Modifier c2 = ComposedModifierKt.c(gapComposer4, d);
                                        ComposeUiNode.b.getClass();
                                        gapComposer4.Z();
                                        if (gapComposer4.S) {
                                            gapComposer4.k(function03);
                                        } else {
                                            gapComposer4.j0();
                                        }
                                        Updater.c(gapComposer4, a3, e6Var4);
                                        Updater.c(gapComposer4, l2, e6Var3);
                                        Updater.c(gapComposer4, Integer.valueOf(hashCode2), e6Var2);
                                        Updater.b(gapComposer4);
                                        Updater.c(gapComposer4, c2, e6Var);
                                        gapComposer4.W(-780807691);
                                        Density density = (Density) gapComposer4.j(CompositionLocalsKt.h);
                                        CompositionLocal compositionLocal = AndroidTextStylesKt.a;
                                        TextStyle a4 = TextStyle.a(((AndroidTextStyles) gapComposer4.j(compositionLocal)).a, 0L, density.x(36.0f), FontWeight.q, density.x(7.0f), 0L, null, 0, 16777017);
                                        gapComposer4.p(false);
                                        Modifier n = SizeKt.n(224.0f);
                                        FocusRequester focusRequester3 = focusRequester2;
                                        Modifier a5 = KeyboardKt.a(gapComposer4, FocusRequesterModifierKt.a(n, focusRequester3));
                                        MutableState mutableState5 = mutableState4;
                                        TextFieldValue textFieldValue = (TextFieldValue) mutableState5.getValue();
                                        ?? obj6 = new Object();
                                        KeyboardOptions keyboardOptions = new KeyboardOptions(0, Boolean.FALSE, 8, 7, 112);
                                        Object obj7 = context2;
                                        boolean h = gapComposer4.h(obj7);
                                        String str3 = str2;
                                        boolean f2 = h | gapComposer4.f(str3);
                                        Object K5 = gapComposer4.K();
                                        Object obj8 = Composer.Companion.a;
                                        if (f2 || K5 == obj8) {
                                            K5 = new ec(3, obj7, str3);
                                            gapComposer4.g0(K5);
                                        }
                                        Function1 function13 = (Function1) K5;
                                        KeyboardActions keyboardActions = new KeyboardActions(function13, function13, function13, function13, function13, function13);
                                        Object K6 = gapComposer4.K();
                                        if (K6 == obj8) {
                                            K6 = new i2(mutableState5, 8);
                                            gapComposer4.g0(K6);
                                        }
                                        StyledTextFieldKt.a(a5, textFieldValue, (Function1) K6, "123456", a4, null, obj6, keyboardOptions, keyboardActions, false, 0, 0, gapComposer4, 12586368, 3616);
                                        SpacerKt.a(gapComposer4, SizeKt.e(companion, 32.0f));
                                        String concat = "Code sent to ".concat(str3);
                                        TextStyle textStyle = ((AndroidTextStyles) gapComposer4.j(compositionLocal)).b;
                                        CompositionLocal compositionLocal2 = AndroidColorsKt.a;
                                        PlatformTextKt.c(concat, null, TextStyle.a(textStyle, ((AndroidColors) gapComposer4.j(compositionLocal2)).e, TextUnitKt.d(14), null, 0L, 0L, null, LineBreak.c, 14647292), 0, false, 0, 0, null, gapComposer4, 0, 506);
                                        SpacerKt.a(gapComposer4, SizeKt.e(companion, 4.0f));
                                        InlineTextButtonKt.a(null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(compositionLocal)).b, 0L, TextUnitKt.d(14), null, 0L, 0L, null, 0, 16777213), new PaddingValuesImpl(8.0f, 3.0f, 8.0f, 3.0f), new Color(((AndroidColors) gapComposer4.j(compositionLocal2)).b), function02, gapComposer4, 3120);
                                        gapComposer4.p(true);
                                        MutableState mutableState6 = MutableState.this;
                                        Boolean bool = (Boolean) mutableState6.getValue();
                                        bool.booleanValue();
                                        boolean f3 = gapComposer4.f(mutableState6);
                                        Object K7 = gapComposer4.K();
                                        if (f3 || K7 == obj8) {
                                            K7 = new OnboardingCodeEntryStep$Composable$2$1$3$1(focusRequester3, mutableState6, mutableState5, null);
                                            gapComposer4.g0(K7);
                                        }
                                        EffectsKt.e(gapComposer4, bool, (Function2) K7);
                                        TextFieldValue textFieldValue2 = (TextFieldValue) mutableState5.getValue();
                                        Function1 function14 = function12;
                                        boolean f4 = gapComposer4.f(function14);
                                        Object K8 = gapComposer4.K();
                                        if (f4 || K8 == obj8) {
                                            K8 = new OnboardingCodeEntryStep$Composable$2$1$4$1(function14, focusRequester3, mutableState5, null);
                                            gapComposer4.g0(K8);
                                        }
                                        EffectsKt.e(gapComposer4, textFieldValue2, (Function2) K8);
                                        gapComposer4.p(false);
                                    }
                                } else {
                                    gapComposer4.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer3), gapComposer3, 27648, 6);
                    } else {
                        gapComposer3.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer2);
            gapComposer = gapComposer2;
            ComposablesKt.c(ComposableSingletons$OnboardingCodeEntryStepKt.a, ComposableSingletons$OnboardingCodeEntryStepKt.b, null, b, ComposableSingletons$OnboardingCodeEntryStepKt.c, gapComposer, 27702, 4);
            if (((Boolean) mutableState2.getValue()).booleanValue()) {
                gapComposer.W(-81184628);
                String valueOf = String.valueOf(err);
                boolean f2 = gapComposer.f(mutableState2);
                Object K5 = gapComposer.K();
                if (f2 || K5 == composer$Companion$Empty$1) {
                    K5 = new o1(mutableState2, 21);
                    gapComposer.g0(K5);
                }
                Pair pair = new Pair("OK", (Function0) K5);
                boolean f3 = gapComposer.f(mutableState2);
                Object K6 = gapComposer.K();
                if (f3 || K6 == composer$Companion$Empty$1) {
                    K6 = new o1(mutableState2, 22);
                    gapComposer.g0(K6);
                }
                AlertDialogKt.a("Failed to verify sign-in code", valueOf, false, null, pair, (Function0) K6, gapComposer, 6, 12);
                gapComposer = gapComposer;
                gapComposer.p(false);
            } else {
                gapComposer.W(-80927080);
                gapComposer.p(false);
            }
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(str, z, err, function1, function0, i) { // from class: jc
                public final /* synthetic */ String k;
                public final /* synthetic */ boolean l;
                public final /* synthetic */ Err m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function0 o;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(1);
                    OnboardingCodeEntryStep.this.a(this.k, this.l, this.m, this.n, this.o, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }
}
