package net.blip.android.ui.components;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderModifierNodeElement;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.RippleKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.i2;
import defpackage.ye;
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
import net.blip.shared.ColorKt;
import net.blip.shared.DynamicFontTrackingKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StyledTextFieldKt {
    /* JADX WARN: Removed duplicated region for block: B:100:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Modifier modifier, final TextFieldValue textFieldValue, final Function1 function1, final String str, TextStyle textStyle, FocusRequester focusRequester, VisualTransformation visualTransformation, final KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, boolean z, int i, int i2, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        TextStyle textStyle2;
        int i7;
        int i8;
        FocusRequester focusRequester2;
        int i9;
        int i10;
        VisualTransformation visualTransformation2;
        int i11;
        int i12;
        KeyboardActions keyboardActions2;
        int i13;
        int i14;
        boolean z2;
        final boolean z3;
        final int i15;
        final TextStyle textStyle3;
        final FocusRequester focusRequester3;
        final VisualTransformation visualTransformation3;
        final KeyboardActions keyboardActions3;
        final int i16;
        RecomposeScopeImpl r;
        FocusRequester focusRequester4;
        VisualTransformation visualTransformation4;
        KeyboardActions keyboardActions4;
        int i17;
        TextStyle textStyle4;
        FocusRequester focusRequester5;
        int i18;
        int i19;
        boolean z4;
        VisualTransformation visualTransformation5;
        float f;
        boolean z5;
        long j;
        boolean z6;
        boolean z7;
        textFieldValue.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-722455634);
        if (gapComposer.f(modifier)) {
            i5 = 4;
        } else {
            i5 = 2;
        }
        int i20 = i3 | i5;
        if (gapComposer.f(textFieldValue)) {
            i6 = 32;
        } else {
            i6 = 16;
        }
        int i21 = i20 | i6;
        if ((i4 & 16) == 0) {
            textStyle2 = textStyle;
            if (gapComposer.f(textStyle2)) {
                i7 = 16384;
                int i22 = i21 | i7;
                i8 = i4 & 32;
                if (i8 == 0) {
                    i22 |= 196608;
                } else if ((i3 & 196608) == 0) {
                    focusRequester2 = focusRequester;
                    if (gapComposer.f(focusRequester2)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i22 |= i9;
                    i10 = i4 & 64;
                    if (i10 != 0) {
                        i12 = i22 | 1572864;
                        visualTransformation2 = visualTransformation;
                    } else {
                        visualTransformation2 = visualTransformation;
                        if (gapComposer.f(visualTransformation2)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i12 = i22 | i11;
                    }
                    if ((i4 & 256) == 0) {
                        keyboardActions2 = keyboardActions;
                        if (gapComposer.f(keyboardActions2)) {
                            i13 = 67108864;
                            i14 = i12 | i13 | 805306368;
                            if ((306783379 & i14) != 306783378) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            if (!gapComposer.N(i14 & 1, z2)) {
                                gapComposer.S();
                                int i23 = i3 & 1;
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                if (i23 != 0 && !gapComposer.x()) {
                                    gapComposer.Q();
                                    if ((i4 & 16) != 0) {
                                        i14 &= -57345;
                                    }
                                    if ((i4 & 256) != 0) {
                                        i14 &= -234881025;
                                    }
                                    z4 = z;
                                    i18 = i;
                                    i17 = i14;
                                    textStyle4 = textStyle2;
                                    focusRequester5 = focusRequester2;
                                    visualTransformation5 = visualTransformation2;
                                    i19 = i2;
                                } else {
                                    if ((i4 & 16) != 0) {
                                        textStyle2 = TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213);
                                        i14 &= -57345;
                                    }
                                    if (i8 != 0) {
                                        Object K = gapComposer.K();
                                        if (K == composer$Companion$Empty$1) {
                                            K = new FocusRequester();
                                            gapComposer.g0(K);
                                        }
                                        focusRequester4 = (FocusRequester) K;
                                    } else {
                                        focusRequester4 = focusRequester2;
                                    }
                                    if (i10 != 0) {
                                        visualTransformation4 = VisualTransformation.Companion.a;
                                    } else {
                                        visualTransformation4 = visualTransformation2;
                                    }
                                    if ((i4 & 256) != 0) {
                                        keyboardActions4 = new KeyboardActions();
                                        i14 &= -234881025;
                                    } else {
                                        keyboardActions4 = keyboardActions2;
                                    }
                                    i17 = i14;
                                    textStyle4 = textStyle2;
                                    focusRequester5 = focusRequester4;
                                    keyboardActions2 = keyboardActions4;
                                    i18 = 1;
                                    i19 = 1;
                                    z4 = true;
                                    visualTransformation5 = visualTransformation4;
                                }
                                gapComposer.q();
                                Object K2 = gapComposer.K();
                                if (K2 == composer$Companion$Empty$1) {
                                    K2 = SnapshotStateKt.g(Boolean.FALSE);
                                    gapComposer.g0(K2);
                                }
                                MutableState mutableState = (MutableState) K2;
                                RoundedCornerShape b = RoundedCornerShapeKt.b(12.0f);
                                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
                                VisualTransformation visualTransformation6 = visualTransformation5;
                                final int i24 = i18;
                                TextStyle a = TextStyle.a(textStyle4, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).d, 0L, null, 0L, 0L, null, 0, 16777214);
                                final TextStyle a2 = TextStyle.a(textStyle4, ColorKt.a(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).f, 0.5f), 0L, null, 0L, 0L, null, 0, 16777214);
                                TextStyle textStyle5 = textStyle4;
                                float f2 = 0.0f;
                                if (((Boolean) mutableState.getValue()).booleanValue()) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                State b2 = AnimateAsStateKt.b(f, null, gapComposer, 0, 30);
                                Modifier a3 = ClipKt.a(PaddingKt.d(modifier.l(new BorderModifierNodeElement(3.5f, new SolidColor(ColorKt.a(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((Number) b2.getValue()).floatValue() * 0.4f)), RoundedCornerShapeKt.b(15.0f))), 3.5f).l(new BorderModifierNodeElement(1.0f, new SolidColor(ColorKt.a(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((Number) b2.getValue()).floatValue() * 0.5f)), b)), b);
                                if (((Boolean) mutableState.getValue()).booleanValue()) {
                                    gapComposer.W(1504886949);
                                    j = ColorKt.a(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b, 0.04f);
                                    z5 = false;
                                } else {
                                    z5 = false;
                                    gapComposer.W(1504888732);
                                    j = ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).j;
                                }
                                gapComposer.p(z5);
                                Modifier b3 = BackgroundKt.b(a3, j, RectangleShapeKt.a);
                                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, z5);
                                final int i25 = i19;
                                int hashCode = Long.hashCode(gapComposer.T);
                                PersistentCompositionLocalMap l = gapComposer.l();
                                Modifier c = ComposedModifierKt.c(gapComposer, b3);
                                ComposeUiNode.b.getClass();
                                gapComposer.Z();
                                if (gapComposer.S) {
                                    gapComposer.k(LayoutNode.b0);
                                } else {
                                    gapComposer.j0();
                                }
                                Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
                                Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                                Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                                Updater.b(gapComposer);
                                Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                                Modifier.Companion companion = Modifier.Companion.b;
                                Modifier a4 = FocusRequesterModifierKt.a(SizeKt.d(PaddingKt.d(ZIndexModifierKt.a(companion, 1.0f), 16.0f), 1.0f), focusRequester5);
                                Object K3 = gapComposer.K();
                                if (K3 == composer$Companion$Empty$1) {
                                    K3 = new i2(mutableState, 15);
                                    gapComposer.g0(K3);
                                }
                                visualTransformation3 = visualTransformation6;
                                KeyboardActions keyboardActions5 = keyboardActions2;
                                boolean z8 = z4;
                                BasicTextFieldKt.a(textFieldValue, function1, FocusChangedModifierKt.a(a4, (Function1) K3), false, DynamicFontTrackingKt.a(a), keyboardOptions, keyboardActions5, z8, i24, i25, visualTransformation3, null, null, new SolidColor(((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b), ComposableLambdaKt.b(-478412725, new Function3() { // from class: cg
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj, Object obj2, Object obj3) {
                                        boolean z9;
                                        int i26;
                                        Function2 function2 = (Function2) obj;
                                        Composer composer2 = (Composer) obj2;
                                        int intValue = ((Integer) obj3).intValue();
                                        function2.getClass();
                                        if ((intValue & 6) == 0) {
                                            if (((GapComposer) composer2).h(function2)) {
                                                i26 = 4;
                                            } else {
                                                i26 = 2;
                                            }
                                            intValue |= i26;
                                        }
                                        if ((intValue & 19) != 18) {
                                            z9 = true;
                                        } else {
                                            z9 = false;
                                        }
                                        GapComposer gapComposer2 = (GapComposer) composer2;
                                        if (gapComposer2.N(intValue & 1, z9)) {
                                            function2.n(gapComposer2, Integer.valueOf(intValue & 14));
                                            if (TextFieldValue.this.a.k.length() == 0) {
                                                gapComposer2.W(-1691897813);
                                                PlatformTextKt.a(str, null, a2, visualTransformation3, 0, false, i24, i25, gapComposer2, 0);
                                                gapComposer2.p(false);
                                            } else {
                                                gapComposer2.W(-1691578761);
                                                gapComposer2.p(false);
                                            }
                                        } else {
                                            gapComposer2.Q();
                                        }
                                        return Unit.a;
                                    }
                                }, gapComposer), gapComposer, ((i17 >> 3) & 267911294) | 805306368, 196614 | ((i17 >> 15) & 112), 12312);
                                if (!((Boolean) mutableState.getValue()).booleanValue()) {
                                    f2 = 2.0f;
                                }
                                Modifier b4 = BoxScopeInstance.a.b(ZIndexModifierKt.a(companion, f2));
                                Object K4 = gapComposer.K();
                                if (K4 == composer$Companion$Empty$1) {
                                    K4 = InteractionSourceKt.a();
                                    gapComposer.g0(K4);
                                }
                                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K4;
                                IndicationNodeFactory a5 = RippleKt.a(7, 0L, false);
                                if ((i17 & 458752) == 131072) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                Object K5 = gapComposer.K();
                                if (!z6 && K5 != composer$Companion$Empty$1) {
                                    z7 = true;
                                } else {
                                    z7 = true;
                                    K5 = new ye(focusRequester5, 1);
                                    gapComposer.g0(K5);
                                }
                                BoxKt.a(ClickableKt.a(b4, mutableInteractionSource, a5, false, null, (Function0) K5, 28), gapComposer, 0);
                                gapComposer.p(z7);
                                focusRequester3 = focusRequester5;
                                keyboardActions3 = keyboardActions5;
                                z3 = z8;
                                i16 = i24;
                                i15 = i25;
                                textStyle3 = textStyle5;
                            } else {
                                gapComposer.Q();
                                z3 = z;
                                i15 = i2;
                                textStyle3 = textStyle2;
                                focusRequester3 = focusRequester2;
                                visualTransformation3 = visualTransformation2;
                                keyboardActions3 = keyboardActions2;
                                i16 = i;
                            }
                            r = gapComposer.r();
                            if (r == null) {
                                r.d = new Function2() { // from class: dg
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object n(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int a6 = RecomposeScopeImplKt.a(i3 | 1);
                                        StyledTextFieldKt.a(Modifier.this, textFieldValue, function1, str, textStyle3, focusRequester3, visualTransformation3, keyboardOptions, keyboardActions3, z3, i16, i15, (Composer) obj, a6, i4);
                                        return Unit.a;
                                    }
                                };
                                return;
                            }
                            return;
                        }
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    i13 = 33554432;
                    i14 = i12 | i13 | 805306368;
                    if ((306783379 & i14) != 306783378) {
                    }
                    if (!gapComposer.N(i14 & 1, z2)) {
                    }
                    r = gapComposer.r();
                    if (r == null) {
                    }
                }
                focusRequester2 = focusRequester;
                i10 = i4 & 64;
                if (i10 != 0) {
                }
                if ((i4 & 256) == 0) {
                }
                i13 = 33554432;
                i14 = i12 | i13 | 805306368;
                if ((306783379 & i14) != 306783378) {
                }
                if (!gapComposer.N(i14 & 1, z2)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
        } else {
            textStyle2 = textStyle;
        }
        i7 = 8192;
        int i222 = i21 | i7;
        i8 = i4 & 32;
        if (i8 == 0) {
        }
        focusRequester2 = focusRequester;
        i10 = i4 & 64;
        if (i10 != 0) {
        }
        if ((i4 & 256) == 0) {
        }
        i13 = 33554432;
        i14 = i12 | i13 | 805306368;
        if ((306783379 & i14) != 306783378) {
        }
        if (!gapComposer.N(i14 & 1, z2)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
