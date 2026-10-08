package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material.TextFieldImplKt;
import androidx.compose.material.TextFieldType;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
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
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.LayoutIdModifier;
import androidx.compose.ui.layout.LayoutIdParentData;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import defpackage.q;
import defpackage.te;
import defpackage.xg;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldImplKt {
    public static final void a(final String str, final Function2 function2, final VisualTransformation visualTransformation, final Function2 function22, final Function2 function23, final Function2 function24, final boolean z, final boolean z2, final InteractionSource interactionSource, final PaddingValues paddingValues, final Shape shape, final TextFieldColors textFieldColors, Composer composer, final int i, final int i2) {
        int i3;
        Function2 function25;
        int i4;
        Function2 function26;
        int i5;
        boolean z3;
        GapComposer gapComposer;
        boolean z4;
        boolean z5;
        InputPhase inputPhase;
        long j;
        boolean z6;
        boolean z7;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        TextFieldType[] textFieldTypeArr = TextFieldType.j;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(418608794);
        if ((i & 6) == 0) {
            if (gapComposer2.d(0)) {
                i17 = 4;
            } else {
                i17 = 2;
            }
            i3 = i17 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.f(str)) {
                i16 = 32;
            } else {
                i16 = 16;
            }
            i3 |= i16;
        }
        int i18 = 128;
        if ((i & 384) == 0) {
            function25 = function2;
            if (gapComposer2.h(function25)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i3 |= i15;
        } else {
            function25 = function2;
        }
        int i19 = 1024;
        if ((i & 3072) == 0) {
            if (gapComposer2.f(visualTransformation)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i3 |= i14;
        }
        int i20 = 8192;
        if ((i & 24576) == 0) {
            if (gapComposer2.h(null)) {
                i13 = 16384;
            } else {
                i13 = 8192;
            }
            i3 |= i13;
        }
        int i21 = 65536;
        if ((i & 196608) == 0) {
            i4 = 196608;
            function26 = function22;
            if (gapComposer2.h(function26)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i3 |= i12;
        } else {
            i4 = 196608;
            function26 = function22;
        }
        if ((i & 1572864) == 0) {
            if (gapComposer2.h(function23)) {
                i11 = 1048576;
            } else {
                i11 = 524288;
            }
            i3 |= i11;
        }
        if ((i & 12582912) == 0) {
            if (gapComposer2.h(function24)) {
                i10 = 8388608;
            } else {
                i10 = 4194304;
            }
            i3 |= i10;
        }
        if ((i & 100663296) == 0) {
            if (gapComposer2.g(z)) {
                i9 = 67108864;
            } else {
                i9 = 33554432;
            }
            i3 |= i9;
        }
        if ((i & 805306368) == 0) {
            if (gapComposer2.g(z2)) {
                i8 = 536870912;
            } else {
                i8 = 268435456;
            }
            i3 |= i8;
        }
        if ((i2 & 6) == 0) {
            if (gapComposer2.g(false)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i5 = i2 | i7;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            if (gapComposer2.f(interactionSource)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i5 |= i6;
        }
        if ((i2 & 384) == 0) {
            if (gapComposer2.f(paddingValues)) {
                i18 = 256;
            }
            i5 |= i18;
        }
        if ((i2 & 3072) == 0) {
            if (gapComposer2.f(shape)) {
                i19 = 2048;
            }
            i5 |= i19;
        }
        if ((i2 & 24576) == 0) {
            if (gapComposer2.f(textFieldColors)) {
                i20 = 16384;
            }
            i5 |= i20;
        }
        if ((i2 & i4) == 0) {
            if (gapComposer2.h(null)) {
                i21 = 131072;
            }
            i5 |= i21;
        }
        final boolean z8 = true;
        if ((306783379 & i3) == 306783378 && (74899 & i5) == 74898) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (gapComposer2.N(i3 & 1, z3)) {
            if ((i3 & 112) == 32) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((i3 & 7168) == 2048) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z9 = z4 | z5;
            Object K = gapComposer2.K();
            if (z9 || K == Composer.Companion.a) {
                K = visualTransformation.f(new AnnotatedString(str));
                gapComposer2.g0(K);
            }
            final String str2 = ((TransformedText) K).a.k;
            if (((Boolean) FocusInteractionKt.a(interactionSource, gapComposer2, (i5 >> 3) & 14).getValue()).booleanValue()) {
                inputPhase = InputPhase.j;
            } else if (str2.length() == 0) {
                inputPhase = InputPhase.k;
            } else {
                inputPhase = InputPhase.l;
            }
            TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$1 = new TextFieldImplKt$CommonDecorationBox$labelColor$1(interactionSource, textFieldColors, z2);
            Typography c = MaterialTheme.c(gapComposer2);
            TextStyle textStyle = c.g;
            TextStyle textStyle2 = c.l;
            long b = textStyle.b();
            long j2 = Color.h;
            if ((!Color.c(b, j2) || Color.c(textStyle2.b(), j2)) && (Color.c(textStyle.b(), j2) || !Color.c(textStyle2.b(), j2))) {
                z8 = false;
            }
            gapComposer2.W(-1443813555);
            long b2 = MaterialTheme.c(gapComposer2).l.b();
            if (z8) {
                gapComposer2.W(-887928539);
                if (b2 == 16) {
                    b2 = ((Color) textFieldImplKt$CommonDecorationBox$labelColor$1.f(inputPhase, gapComposer2, 0)).a;
                }
                z6 = false;
                gapComposer2.p(false);
                j = 16;
            } else {
                j = 16;
                z6 = false;
                gapComposer2.W(1218284988);
                gapComposer2.p(false);
            }
            gapComposer2.p(z6);
            gapComposer2.W(-1443806289);
            long b3 = MaterialTheme.c(gapComposer2).g.b();
            if (z8) {
                gapComposer2.W(-1026713946);
                if (b3 == j) {
                    b3 = ((Color) textFieldImplKt$CommonDecorationBox$labelColor$1.f(inputPhase, gapComposer2, 0)).a;
                }
                z7 = false;
                gapComposer2.p(false);
            } else {
                z7 = false;
                gapComposer2.W(798166043);
                gapComposer2.p(false);
            }
            long j3 = b3;
            gapComposer2.p(z7);
            gapComposer = gapComposer2;
            final Function2 function27 = function26;
            final Function2 function28 = function25;
            InputPhase inputPhase2 = inputPhase;
            TextFieldTransitionScope.a.a(inputPhase2, b2, j3, textFieldImplKt$CommonDecorationBox$labelColor$1, z7, ComposableLambdaKt.b(33336375, new Function6<Float, Color, Color, Float, Composer, Integer, Unit>(function27, str2, textFieldColors, z2, interactionSource, function23, function24, shape, function28, z, paddingValues, z8) { // from class: androidx.compose.material.TextFieldImplKt$CommonDecorationBox$3
                public final /* synthetic */ Function2 j;
                public final /* synthetic */ String k;
                public final /* synthetic */ TextFieldColors l;
                public final /* synthetic */ boolean m;
                public final /* synthetic */ Function2 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ Shape p;
                public final /* synthetic */ Function2 q;
                public final /* synthetic */ boolean r;
                public final /* synthetic */ PaddingValues s;

                {
                    TextFieldType[] textFieldTypeArr2 = TextFieldType.j;
                    this.n = function23;
                    this.o = function24;
                    this.p = shape;
                    this.q = function28;
                    this.r = z;
                    this.s = paddingValues;
                }

                @Override // kotlin.jvm.functions.Function6
                public final Object k(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                    int i22;
                    boolean z10;
                    ComposableLambdaImpl composableLambdaImpl;
                    long j4;
                    ComposableLambdaImpl b4;
                    long j5;
                    ComposableLambdaImpl composableLambdaImpl2;
                    int i23;
                    int i24;
                    int i25;
                    int i26;
                    float floatValue = ((Number) obj).floatValue();
                    long j6 = ((Color) obj2).a;
                    long j7 = ((Color) obj3).a;
                    final float floatValue2 = ((Number) obj4).floatValue();
                    Composer composer2 = (Composer) obj5;
                    int intValue = ((Number) obj6).intValue();
                    if ((intValue & 6) == 0) {
                        if (((GapComposer) composer2).c(floatValue)) {
                            i26 = 4;
                        } else {
                            i26 = 2;
                        }
                        i22 = i26 | intValue;
                    } else {
                        i22 = intValue;
                    }
                    if ((intValue & 48) == 0) {
                        if (((GapComposer) composer2).e(j6)) {
                            i25 = 32;
                        } else {
                            i25 = 16;
                        }
                        i22 |= i25;
                    }
                    if ((intValue & 384) == 0) {
                        if (((GapComposer) composer2).e(j7)) {
                            i24 = 256;
                        } else {
                            i24 = 128;
                        }
                        i22 |= i24;
                    }
                    if ((intValue & 3072) == 0) {
                        if (((GapComposer) composer2).c(floatValue2)) {
                            i23 = 2048;
                        } else {
                            i23 = 1024;
                        }
                        i22 |= i23;
                    }
                    final int i27 = 1;
                    final int i28 = 0;
                    if ((i22 & 9363) != 9362) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.N(i22 & 1, z10)) {
                        gapComposer3.W(986681709);
                        gapComposer3.p(false);
                        final Function2 function29 = this.j;
                        final boolean z11 = this.m;
                        final TextFieldColors textFieldColors2 = this.l;
                        if (function29 != null && this.k.length() == 0 && floatValue2 > 0.0f) {
                            gapComposer3.W(987666549);
                            ComposableLambdaImpl b5 = ComposableLambdaKt.b(-426706263, new Function3() { // from class: androidx.compose.material.m
                                @Override // kotlin.jvm.functions.Function3
                                public final Object f(Object obj7, Object obj8, Object obj9) {
                                    boolean z12;
                                    long j8;
                                    int i29;
                                    Modifier modifier = (Modifier) obj7;
                                    Composer composer3 = (Composer) obj8;
                                    int intValue2 = ((Integer) obj9).intValue();
                                    if ((intValue2 & 6) == 0) {
                                        if (((GapComposer) composer3).f(modifier)) {
                                            i29 = 4;
                                        } else {
                                            i29 = 2;
                                        }
                                        intValue2 |= i29;
                                    }
                                    if ((intValue2 & 19) != 18) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    GapComposer gapComposer4 = (GapComposer) composer3;
                                    if (gapComposer4.N(intValue2 & 1, z12)) {
                                        Modifier a = AlphaKt.a(modifier, floatValue2);
                                        MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                                        int a2 = ComposablesKt.a(gapComposer4);
                                        PersistentCompositionLocalMap l = gapComposer4.l();
                                        Modifier c2 = ComposedModifierKt.c(gapComposer4, a);
                                        ComposeUiNode.b.getClass();
                                        gapComposer4.Z();
                                        if (gapComposer4.S) {
                                            gapComposer4.k(LayoutNode.b0);
                                        } else {
                                            gapComposer4.j0();
                                        }
                                        Updater.c(gapComposer4, d, ComposeUiNode.Companion.d);
                                        Updater.c(gapComposer4, l, ComposeUiNode.Companion.c);
                                        if (gapComposer4.S || !Intrinsics.a(gapComposer4.K(), Integer.valueOf(a2))) {
                                            q.r(a2, gapComposer4, a2, ComposeUiNode.Companion.e);
                                        }
                                        Updater.c(gapComposer4, c2, ComposeUiNode.Companion.b);
                                        DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) textFieldColors2;
                                        gapComposer4.W(264799724);
                                        if (z11) {
                                            j8 = defaultTextFieldColors.t;
                                        } else {
                                            j8 = defaultTextFieldColors.u;
                                        }
                                        MutableState k = SnapshotStateKt.k(new Color(j8), gapComposer4);
                                        gapComposer4.p(false);
                                        TextFieldImplKt.b(((Color) k.getValue()).a, MaterialTheme.c(gapComposer4).g, function29, gapComposer4, 0, 4);
                                        gapComposer4.p(true);
                                    } else {
                                        gapComposer4.Q();
                                    }
                                    return Unit.a;
                                }
                            }, gapComposer3);
                            gapComposer3.p(false);
                            composableLambdaImpl = b5;
                        } else {
                            gapComposer3.W(988093542);
                            gapComposer3.p(false);
                            composableLambdaImpl = null;
                        }
                        DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) textFieldColors2;
                        gapComposer3.W(-1519634405);
                        if (!z11) {
                            j4 = defaultTextFieldColors.j;
                        } else {
                            j4 = defaultTextFieldColors.i;
                        }
                        MutableState k = SnapshotStateKt.k(new Color(j4), gapComposer3);
                        gapComposer3.p(false);
                        final long j8 = ((Color) k.getValue()).a;
                        final Function2 function210 = this.n;
                        if (function210 == null) {
                            gapComposer3.W(988282301);
                            gapComposer3.p(false);
                            b4 = null;
                        } else {
                            gapComposer3.W(988282302);
                            b4 = ComposableLambdaKt.b(-317090443, new Function2() { // from class: yg
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj7, Object obj8) {
                                    int i29 = i28;
                                    Unit unit = Unit.a;
                                    boolean z12 = false;
                                    Composer composer3 = (Composer) obj7;
                                    int intValue2 = ((Integer) obj8).intValue();
                                    switch (i29) {
                                        case 0:
                                            if ((intValue2 & 3) != 2) {
                                                z12 = true;
                                            }
                                            GapComposer gapComposer4 = (GapComposer) composer3;
                                            if (gapComposer4.N(intValue2 & 1, z12)) {
                                                TextFieldImplKt.b(j8, null, function210, gapComposer4, 0, 6);
                                            } else {
                                                gapComposer4.Q();
                                            }
                                            return unit;
                                        default:
                                            if ((intValue2 & 3) != 2) {
                                                z12 = true;
                                            }
                                            GapComposer gapComposer5 = (GapComposer) composer3;
                                            if (gapComposer5.N(intValue2 & 1, z12)) {
                                                TextFieldImplKt.b(j8, null, function210, gapComposer5, 0, 6);
                                            } else {
                                                gapComposer5.Q();
                                            }
                                            return unit;
                                    }
                                }
                            }, gapComposer3);
                            gapComposer3.p(false);
                        }
                        gapComposer3.W(1383318157);
                        if (!z11) {
                            j5 = defaultTextFieldColors.m;
                        } else {
                            j5 = defaultTextFieldColors.l;
                        }
                        MutableState k2 = SnapshotStateKt.k(new Color(j5), gapComposer3);
                        gapComposer3.p(false);
                        final long j9 = ((Color) k2.getValue()).a;
                        final Function2 function211 = this.o;
                        if (function211 == null) {
                            gapComposer3.W(988575964);
                            gapComposer3.p(false);
                            composableLambdaImpl2 = null;
                        } else {
                            gapComposer3.W(988575965);
                            ComposableLambdaImpl b6 = ComposableLambdaKt.b(262889693, new Function2() { // from class: yg
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj7, Object obj8) {
                                    int i29 = i27;
                                    Unit unit = Unit.a;
                                    boolean z12 = false;
                                    Composer composer3 = (Composer) obj7;
                                    int intValue2 = ((Integer) obj8).intValue();
                                    switch (i29) {
                                        case 0:
                                            if ((intValue2 & 3) != 2) {
                                                z12 = true;
                                            }
                                            GapComposer gapComposer4 = (GapComposer) composer3;
                                            if (gapComposer4.N(intValue2 & 1, z12)) {
                                                TextFieldImplKt.b(j9, null, function211, gapComposer4, 0, 6);
                                            } else {
                                                gapComposer4.Q();
                                            }
                                            return unit;
                                        default:
                                            if ((intValue2 & 3) != 2) {
                                                z12 = true;
                                            }
                                            GapComposer gapComposer5 = (GapComposer) composer3;
                                            if (gapComposer5.N(intValue2 & 1, z12)) {
                                                TextFieldImplKt.b(j9, null, function211, gapComposer5, 0, 6);
                                            } else {
                                                gapComposer5.Q();
                                            }
                                            return unit;
                                    }
                                }
                            }, gapComposer3);
                            gapComposer3.p(false);
                            composableLambdaImpl2 = b6;
                        }
                        gapComposer3.W(-1423938813);
                        MutableState k3 = SnapshotStateKt.k(new Color(defaultTextFieldColors.o), gapComposer3);
                        gapComposer3.p(false);
                        Modifier b7 = BackgroundKt.b(Modifier.Companion.b, ((Color) k3.getValue()).a, this.p);
                        TextFieldType[] textFieldTypeArr2 = TextFieldType.j;
                        gapComposer3.W(988856360);
                        TextFieldKt.c(b7, this.q, null, composableLambdaImpl, b4, composableLambdaImpl2, this.r, floatValue, this.s, gapComposer3, (i22 << 21) & 29360128);
                        gapComposer3.p(false);
                    } else {
                        gapComposer3.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer), gapComposer, 1769472);
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: wg
                {
                    TextFieldType[] textFieldTypeArr2 = TextFieldType.j;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    TextFieldType[] textFieldTypeArr2 = TextFieldType.j;
                    ((Integer) obj2).getClass();
                    int a = RecomposeScopeImplKt.a(i | 1);
                    int a2 = RecomposeScopeImplKt.a(i2);
                    TextFieldImplKt.a(str, function2, visualTransformation, function22, function23, function24, z, z2, interactionSource, paddingValues, shape, textFieldColors, (Composer) obj, a, a2);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(long j, TextStyle textStyle, Function2 function2, Composer composer, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2064632657);
        if (gapComposer.e(j)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i8 = i3 | i;
        int i9 = i2 & 2;
        if (i9 != 0) {
            i5 = i8 | 48;
        } else {
            if (gapComposer.f(textStyle)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i5 = i8 | i4;
        }
        if ((i2 & 4) != 0) {
            i5 |= 384;
        } else if ((i & 384) == 0) {
            if (gapComposer.f(null)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i5 |= i6;
        }
        if (gapComposer.h(function2)) {
            i7 = 2048;
        } else {
            i7 = 1024;
        }
        int i10 = i5 | i7;
        if ((i10 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i10 & 1, z)) {
            if (i9 != 0) {
                textStyle = null;
            }
            ComposableLambdaImpl b = ComposableLambdaKt.b(-650790565, new xg(j, (Float) null, function2), gapComposer);
            if (textStyle != null) {
                gapComposer.W(-162880673);
                TextKt.a(textStyle, b, gapComposer, ((i10 >> 3) & 14) | 48);
            } else {
                gapComposer.W(-162879037);
                b.n(gapComposer, 6);
            }
            gapComposer.p(false);
        } else {
            gapComposer.Q();
        }
        TextStyle textStyle2 = textStyle;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new te(j, textStyle2, function2, i, i2);
        }
    }

    public static final Object c(IntrinsicMeasurable intrinsicMeasurable) {
        LayoutIdParentData layoutIdParentData;
        Object a = intrinsicMeasurable.a();
        if (a instanceof LayoutIdParentData) {
            layoutIdParentData = (LayoutIdParentData) a;
        } else {
            layoutIdParentData = null;
        }
        if (layoutIdParentData == null) {
            return null;
        }
        return ((LayoutIdModifier) layoutIdParentData).x;
    }
}
