package net.blip.android.ui.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.RippleKt;
import androidx.compose.material.TextFieldColors;
import androidx.compose.material.TextFieldDefaults;
import androidx.compose.material.TextFieldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.lc;
import defpackage.w;
import defpackage.ye;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.ComposableSingletons$SearchFieldKt;
import net.blip.android.ui.components.SearchFieldKt;
import net.blip.android.ui.util.KeyboardKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SearchFieldKt {
    /* JADX WARN: Removed duplicated region for block: B:101:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, final String str, final String str2, boolean z, final boolean z2, FocusRequester focusRequester, final Function1 function1, final Function1 function12, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        boolean z3;
        int i5;
        int i6;
        FocusRequester focusRequester2;
        int i7;
        boolean z4;
        GapComposer gapComposer;
        final Modifier modifier3;
        final boolean z5;
        final FocusRequester focusRequester3;
        RecomposeScopeImpl r;
        boolean z6;
        FocusRequester focusRequester4;
        boolean z7;
        float f;
        boolean z8;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        str.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1483337350);
        int i14 = i2 & 1;
        if (i14 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer2.f(modifier2)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.f(str)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i3 |= i13;
        }
        if ((i & 384) == 0) {
            if (gapComposer2.f(str2)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i3 |= i12;
        }
        int i15 = i2 & 8;
        if (i15 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            z3 = z;
            if (gapComposer2.g(z3)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i3 |= i5;
            if ((i & 24576) == 0) {
                if (gapComposer2.g(z2)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i3 |= i11;
            }
            i6 = i2 & 32;
            if (i6 == 0) {
                i3 |= 196608;
            } else if ((196608 & i) == 0) {
                focusRequester2 = focusRequester;
                if (gapComposer2.f(focusRequester2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
                if ((1572864 & i) == 0) {
                    if (gapComposer2.h(function1)) {
                        i10 = 1048576;
                    } else {
                        i10 = 524288;
                    }
                    i3 |= i10;
                }
                if ((i & 12582912) == 0) {
                    if (gapComposer2.h(function12)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i3 |= i9;
                }
                if ((i3 & 4793491) != 4793490) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposer2.N(i3 & 1, z4)) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    if (i14 != 0) {
                        modifier2 = companion;
                    }
                    if (i15 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (i6 != 0) {
                        Object K = gapComposer2.K();
                        if (K == composer$Companion$Empty$1) {
                            K = new FocusRequester();
                            gapComposer2.g0(K);
                        }
                        focusRequester4 = (FocusRequester) K;
                    } else {
                        focusRequester4 = focusRequester2;
                    }
                    MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, modifier2);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    Modifier modifier4 = modifier2;
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                    Object K2 = gapComposer2.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.g0(K2);
                    }
                    MutableState mutableState = (MutableState) K2;
                    Modifier a = FocusRequesterModifierKt.a(ZIndexModifierKt.a(SizeKt.e(SizeKt.d(companion, 1.0f), 58.0f), 1.0f), focusRequester4);
                    if ((29360128 & i3) == 8388608) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    Object K3 = gapComposer2.K();
                    if (z7 || K3 == composer$Companion$Empty$1) {
                        K3 = new lc(1, mutableState, function12);
                        gapComposer2.g0(K3);
                    }
                    Modifier a2 = KeyboardKt.a(gapComposer2, FocusChangedModifierKt.a(a, (Function1) K3));
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
                    long j = ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal)).d;
                    int i16 = i3;
                    long j2 = ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal)).b;
                    long j3 = ((AndroidColors) gapComposer2.j(dynamicProvidableCompositionLocal)).d;
                    FocusRequester focusRequester5 = focusRequester4;
                    long j4 = Color.g;
                    TextFieldColors d2 = TextFieldDefaults.d(j, j4, j2, 0L, j4, j3, Color.e, gapComposer2, 1572274);
                    TextFieldKt.b(str, function1, a2, false, TextStyle.a(((AndroidTextStyles) gapComposer2.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777213), ComposableLambdaKt.b(126924231, new w(str2, 4), gapComposer2), ComposableSingletons$SearchFieldKt.a, ComposableLambdaKt.b(-142241147, new Function2() { // from class: xe
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            boolean z9;
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            if ((intValue & 3) != 2) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue & 1, z9)) {
                                f7 f7Var = EasingKt.c;
                                AnimatedVisibilityKt.b(z2, null, EnterExitTransitionKt.c(new TweenSpec(300, 300, f7Var), 2), EnterExitTransitionKt.d(AnimationSpecKt.c(300, 0, f7Var, 2), 2), null, ComposableSingletons$SearchFieldKt.b, gapComposer3, 196608);
                            } else {
                                gapComposer3.Q();
                            }
                            return Unit.a;
                        }
                    }, gapComposer2), null, new KeyboardOptions(0, null, 0, 3, 119), null, 0, 0, null, d2, gapComposer2, ((i16 >> 3) & 14) | 918552576 | ((i16 >> 15) & 112));
                    gapComposer = gapComposer2;
                    if (((Boolean) mutableState.getValue()).booleanValue()) {
                        f = 0.0f;
                    } else {
                        f = 2.0f;
                    }
                    Modifier b = BoxScopeInstance.a.b(ZIndexModifierKt.a(companion, f));
                    Object K4 = gapComposer.K();
                    if (K4 == composer$Companion$Empty$1) {
                        K4 = InteractionSourceKt.a();
                        gapComposer.g0(K4);
                    }
                    MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K4;
                    IndicationNodeFactory a3 = RippleKt.a(7, 0L, false);
                    if ((i16 & 458752) == 131072) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    Object K5 = gapComposer.K();
                    if (!z8 && K5 != composer$Companion$Empty$1) {
                        i8 = 0;
                    } else {
                        i8 = 0;
                        K5 = new ye(focusRequester5, 0);
                        gapComposer.g0(K5);
                    }
                    boolean z9 = z6;
                    BoxKt.a(ClickableKt.a(b, mutableInteractionSource, a3, z9, null, (Function0) K5, 24), gapComposer, i8);
                    gapComposer.p(true);
                    modifier3 = modifier4;
                    focusRequester3 = focusRequester5;
                    z5 = z9;
                } else {
                    gapComposer = gapComposer2;
                    gapComposer.Q();
                    modifier3 = modifier2;
                    z5 = z3;
                    focusRequester3 = focusRequester2;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new Function2() { // from class: ze
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            SearchFieldKt.a(Modifier.this, str, str2, z5, z2, focusRequester3, function1, function12, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                            return Unit.a;
                        }
                    };
                    return;
                }
                return;
            }
            focusRequester2 = focusRequester;
            if ((1572864 & i) == 0) {
            }
            if ((i & 12582912) == 0) {
            }
            if ((i3 & 4793491) != 4793490) {
            }
            if (gapComposer2.N(i3 & 1, z4)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        z3 = z;
        if ((i & 24576) == 0) {
        }
        i6 = i2 & 32;
        if (i6 == 0) {
        }
        focusRequester2 = focusRequester;
        if ((1572864 & i) == 0) {
        }
        if ((i & 12582912) == 0) {
        }
        if ((i3 & 4793491) != 4793490) {
        }
        if (gapComposer2.N(i3 & 1, z4)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }
}
