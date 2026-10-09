package defpackage;

import androidx.compose.animation.CrossfadeKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.icons.rounded.MoreVertKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.e6;
import defpackage.i2;
import defpackage.lc;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.StyledTextFieldKt;
import net.blip.android.ui.onboarding.OnboardingEmailEntryStep;
import net.blip.android.ui.util.KeyboardKt;
import net.blip.libblip.frontend.Err;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q9 implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ q9(MutableState mutableState, Function0 function0, Function0 function02, Function0 function03, boolean z) {
        this.l = mutableState;
        this.m = function0;
        this.k = z;
        this.n = function02;
        this.o = function03;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        boolean z = false;
        Unit unit = Unit.a;
        Object obj3 = this.o;
        Object obj4 = this.n;
        Object obj5 = this.m;
        Object obj6 = this.l;
        switch (i) {
            case 0:
                MutableState mutableState = (MutableState) obj6;
                Function0 function0 = (Function0) obj5;
                Function0 function02 = (Function0) obj4;
                Function0 function03 = (Function0) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    ImageKt.b(MoreVertKt.a(), "Menu", null, ColorFilter.Companion.a(((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e), gapComposer, 48, 60);
                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                    Object K = gapComposer.K();
                    if (K == Composer.Companion.a) {
                        K = new o1(mutableState, 16);
                        gapComposer.g0(K);
                    }
                    AndroidMenu_androidKt.a(booleanValue, (Function0) K, null, (Float.floatToRawIntBits(-12.0f) << 32) | (Float.floatToRawIntBits(-32.0f) & 4294967295L), null, null, ComposableLambdaKt.b(-285916661, new o9(mutableState, function0, function02, function03, this.k), gapComposer), gapComposer, 1575984, 52);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                final MutableState mutableState2 = (MutableState) obj6;
                final Function1 function1 = (Function1) obj5;
                final FocusRequester focusRequester = (FocusRequester) obj4;
                final MutableState mutableState3 = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    CrossfadeKt.b(Boolean.valueOf(this.k), null, null, "", ComposableLambdaKt.b(1920473250, new Function3() { // from class: net.blip.android.ui.onboarding.b
                        @Override // kotlin.jvm.functions.Function3
                        public final Object f(Object obj7, Object obj8, Object obj9) {
                            boolean z2;
                            Modifier b;
                            Modifier b2;
                            int i2;
                            boolean booleanValue2 = ((Boolean) obj7).booleanValue();
                            Composer composer3 = (Composer) obj8;
                            int intValue3 = ((Integer) obj9).intValue();
                            if ((intValue3 & 6) == 0) {
                                if (((GapComposer) composer3).g(booleanValue2)) {
                                    i2 = 4;
                                } else {
                                    i2 = 2;
                                }
                                intValue3 |= i2;
                            }
                            if ((intValue3 & 19) != 18) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer3;
                            if (gapComposer3.N(intValue3 & 1, z2)) {
                                e6 e6Var = ComposeUiNode.Companion.b;
                                e6 e6Var2 = ComposeUiNode.Companion.e;
                                e6 e6Var3 = ComposeUiNode.Companion.c;
                                e6 e6Var4 = ComposeUiNode.Companion.d;
                                Modifier.Companion companion = Modifier.Companion.b;
                                Function0 function04 = LayoutNode.b0;
                                if (booleanValue2) {
                                    gapComposer3.W(-440714655);
                                    Modifier b3 = SizeKt.b(companion, 0.75f);
                                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer3, 0);
                                    int hashCode = Long.hashCode(gapComposer3.T);
                                    PersistentCompositionLocalMap l = gapComposer3.l();
                                    Modifier c = ComposedModifierKt.c(gapComposer3, b3);
                                    ComposeUiNode.b.getClass();
                                    gapComposer3.Z();
                                    if (gapComposer3.S) {
                                        gapComposer3.k(function04);
                                    } else {
                                        gapComposer3.j0();
                                    }
                                    Updater.c(gapComposer3, a, e6Var4);
                                    Updater.c(gapComposer3, l, e6Var3);
                                    Updater.c(gapComposer3, Integer.valueOf(hashCode), e6Var2);
                                    Updater.b(gapComposer3);
                                    Updater.c(gapComposer3, c, e6Var);
                                    b = ColumnScopeInstance.a.b(true);
                                    SpacerKt.a(gapComposer3, b);
                                    ComposablesKt.d(SizeKt.d(companion, 1.0f), "Sending sign-in code…", gapComposer3, 54);
                                    b2 = ColumnScopeInstance.a.b(true);
                                    SpacerKt.a(gapComposer3, b2);
                                    gapComposer3.p(true);
                                    gapComposer3.p(false);
                                } else {
                                    gapComposer3.W(-440171659);
                                    Modifier f = PaddingKt.f(companion, 24.0f, 0.0f, 2);
                                    ColumnMeasurePolicy a2 = ColumnKt.a(Arrangement.e(32.0f), Alignment.Companion.n, gapComposer3, 54);
                                    int hashCode2 = Long.hashCode(gapComposer3.T);
                                    PersistentCompositionLocalMap l2 = gapComposer3.l();
                                    Modifier c2 = ComposedModifierKt.c(gapComposer3, f);
                                    ComposeUiNode.b.getClass();
                                    gapComposer3.Z();
                                    if (gapComposer3.S) {
                                        gapComposer3.k(function04);
                                    } else {
                                        gapComposer3.j0();
                                    }
                                    Updater.c(gapComposer3, a2, e6Var4);
                                    Updater.c(gapComposer3, l2, e6Var3);
                                    Updater.c(gapComposer3, Integer.valueOf(hashCode2), e6Var2);
                                    Updater.b(gapComposer3);
                                    Updater.c(gapComposer3, c2, e6Var);
                                    Modifier a3 = KeyboardKt.a(gapComposer3, SizeKt.d(companion, 1.0f));
                                    MutableState mutableState4 = mutableState3;
                                    TextFieldValue textFieldValue = (TextFieldValue) mutableState4.getValue();
                                    KeyboardOptions keyboardOptions = new KeyboardOptions(0, Boolean.TRUE, 6, 4, 112);
                                    Function1 function12 = function1;
                                    boolean f2 = gapComposer3.f(function12);
                                    Object K2 = gapComposer3.K();
                                    Object obj10 = Composer.Companion.a;
                                    if (f2 || K2 == obj10) {
                                        K2 = new lc(0, mutableState4, function12);
                                        gapComposer3.g0(K2);
                                    }
                                    Function1 function13 = (Function1) K2;
                                    KeyboardActions keyboardActions = new KeyboardActions(function13, function13, function13, function13, function13, function13);
                                    Object K3 = gapComposer3.K();
                                    if (K3 == obj10) {
                                        K3 = new i2(mutableState4, 9);
                                        gapComposer3.g0(K3);
                                    }
                                    FocusRequester focusRequester2 = focusRequester;
                                    StyledTextFieldKt.a(a3, textFieldValue, (Function1) K3, "your.email@example.com", null, focusRequester2, null, keyboardOptions, keyboardActions, false, 0, 0, gapComposer3, 12782976, 3664);
                                    PlatformTextKt.c("You’ll receive a code to sign in", null, TextStyle.a(((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).e, TextUnitKt.d(14), null, 0L, 0L, null, 0, 16744444), 0, false, 0, 0, null, gapComposer3, 6, 506);
                                    gapComposer3.p(true);
                                    MutableState mutableState5 = MutableState.this;
                                    Boolean bool = (Boolean) mutableState5.getValue();
                                    bool.booleanValue();
                                    boolean f3 = gapComposer3.f(mutableState5);
                                    Object K4 = gapComposer3.K();
                                    if (f3 || K4 == obj10) {
                                        K4 = new OnboardingEmailEntryStep$Composable$1$1$3$1(focusRequester2, mutableState5, null);
                                        gapComposer3.g0(K4);
                                    }
                                    EffectsKt.e(gapComposer3, bool, (Function2) K4);
                                    gapComposer3.p(false);
                                }
                            } else {
                                gapComposer3.Q();
                            }
                            return Unit.a;
                        }
                    }, gapComposer2), gapComposer2, 27648, 6);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                ((OnboardingEmailEntryStep) obj6).a((String) obj5, this.k, (Err) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ q9(OnboardingEmailEntryStep onboardingEmailEntryStep, String str, boolean z, Err err, Function1 function1, int i) {
        this.l = onboardingEmailEntryStep;
        this.m = str;
        this.k = z;
        this.n = err;
        this.o = function1;
    }

    public /* synthetic */ q9(boolean z, MutableState mutableState, Function1 function1, FocusRequester focusRequester, MutableState mutableState2) {
        this.k = z;
        this.l = mutableState;
        this.m = function1;
        this.n = focusRequester;
        this.o = mutableState2;
    }
}
