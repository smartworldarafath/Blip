package androidx.compose.material;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material.TextFieldColors;
import androidx.compose.material.TextFieldDefaults;
import androidx.compose.material.TextFieldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.e6;
import defpackage.od;
import defpackage.q;
import defpackage.x9;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldKt {
    public static final void a(final TextFieldValue textFieldValue, final Function1 function1, final Modifier modifier, boolean z, final TextStyle textStyle, VisualTransformation visualTransformation, final KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, final boolean z2, int i, int i2, Shape shape, TextFieldColors textFieldColors, Composer composer, final int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z3;
        GapComposer gapComposer;
        final boolean z4;
        final VisualTransformation visualTransformation2;
        final KeyboardActions keyboardActions2;
        final int i9;
        final int i10;
        final Shape shape2;
        final TextFieldColors textFieldColors2;
        int i11;
        int i12;
        VisualTransformation visualTransformation3;
        int i13;
        int i14;
        Shape shape3;
        KeyboardActions keyboardActions3;
        boolean z5;
        long j;
        boolean z6;
        VisualTransformation visualTransformation4;
        long j2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1470183117);
        if (gapComposer2.f(textFieldValue)) {
            i4 = 4;
        } else {
            i4 = 2;
        }
        int i15 = i3 | i4;
        int i16 = 128;
        if (gapComposer2.f(modifier)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i17 = i15 | i5 | 27648;
        if (gapComposer2.f(textStyle)) {
            i6 = 131072;
        } else {
            i6 = 65536;
        }
        int i18 = i17 | i6 | 920125440;
        if (gapComposer2.f(keyboardOptions)) {
            i16 = 256;
        }
        int i19 = i16 | 1078;
        if (gapComposer2.g(z2)) {
            i7 = 16384;
        } else {
            i7 = 8192;
        }
        int i20 = i19 | i7 | 47775744;
        if (gapComposer2.f(textFieldColors)) {
            i8 = 536870912;
        } else {
            i8 = 268435456;
        }
        int i21 = i20 | i8;
        if ((i18 & 306783379) == 306783378 && (306783379 & i21) == 306783378) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (gapComposer2.N(i18 & 1, z3)) {
            gapComposer2.S();
            if ((i3 & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                i12 = i21 & (-235346945);
                z5 = z;
                visualTransformation3 = visualTransformation;
                keyboardActions3 = keyboardActions;
                i13 = i;
                i14 = i2;
                shape3 = shape;
            } else {
                KeyboardActions keyboardActions4 = new KeyboardActions();
                if (z2) {
                    i11 = 1;
                } else {
                    i11 = Integer.MAX_VALUE;
                }
                CornerBasedShape b = TextFieldDefaults.b(gapComposer2);
                i12 = i21 & (-235346945);
                visualTransformation3 = VisualTransformation.Companion.a;
                i13 = i11;
                i14 = 1;
                shape3 = b;
                keyboardActions3 = keyboardActions4;
                z5 = true;
            }
            int i22 = i12;
            gapComposer2.q();
            gapComposer2.W(1852274984);
            Object K = gapComposer2.K();
            if (K == Composer.Companion.a) {
                K = InteractionSourceKt.a();
                gapComposer2.g0(K);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K;
            gapComposer2.p(false);
            gapComposer2.W(198303233);
            long b2 = textStyle.b();
            if (b2 != 16) {
                visualTransformation4 = visualTransformation3;
                z6 = false;
                j2 = b2;
            } else {
                DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) textFieldColors;
                gapComposer2.W(9804418);
                if (z5) {
                    j = defaultTextFieldColors.a;
                } else {
                    j = defaultTextFieldColors.b;
                }
                MutableState k = SnapshotStateKt.k(new Color(j), gapComposer2);
                z6 = false;
                gapComposer2.p(false);
                visualTransformation4 = visualTransformation3;
                j2 = ((Color) k.getValue()).a;
            }
            gapComposer2.p(z6);
            TextStyle d = textStyle.d(new TextStyle(j2, 0L, null, null, 0L, 0, 0L, 0, 16777214));
            Modifier c = TextFieldDefaults.c(modifier, z5, mutableInteractionSource, textFieldColors);
            Strings_androidKt.a(3, gapComposer2);
            Modifier a = SizeKt.a(c, 280.0f, 56.0f);
            DefaultTextFieldColors defaultTextFieldColors2 = (DefaultTextFieldColors) textFieldColors;
            gapComposer2.W(-1446422485);
            MutableState k2 = SnapshotStateKt.k(new Color(defaultTextFieldColors2.c), gapComposer2);
            gapComposer2.p(false);
            SolidColor solidColor = new SolidColor(((Color) k2.getValue()).a);
            VisualTransformation visualTransformation5 = visualTransformation4;
            Shape shape4 = shape3;
            ComposableLambdaImpl b3 = ComposableLambdaKt.b(1565379926, new od(textFieldValue, z5, z2, visualTransformation5, mutableInteractionSource, shape3, defaultTextFieldColors2), gapComposer2);
            int i23 = i22 << 12;
            gapComposer = gapComposer2;
            boolean z7 = z5;
            KeyboardActions keyboardActions5 = keyboardActions3;
            int i24 = i13;
            int i25 = i14;
            BasicTextFieldKt.a(textFieldValue, function1, a, z7, d, keyboardOptions, keyboardActions5, z2, i24, i25, visualTransformation5, null, mutableInteractionSource, solidColor, b3, gapComposer, (i18 & 64638) | (3670016 & i23) | (i23 & 234881024), 196662, 4096);
            z4 = z7;
            visualTransformation2 = visualTransformation5;
            keyboardActions2 = keyboardActions5;
            i9 = i24;
            i10 = i25;
            shape2 = shape4;
            textFieldColors2 = defaultTextFieldColors2;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            z4 = z;
            visualTransformation2 = visualTransformation;
            keyboardActions2 = keyboardActions;
            i9 = i;
            i10 = i2;
            shape2 = shape;
            textFieldColors2 = textFieldColors;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(function1, modifier, z4, textStyle, visualTransformation2, keyboardOptions, keyboardActions2, z2, i9, i10, shape2, textFieldColors2, i3) { // from class: bh
                public final /* synthetic */ Function1 k;
                public final /* synthetic */ Modifier l;
                public final /* synthetic */ boolean m;
                public final /* synthetic */ TextStyle n;
                public final /* synthetic */ VisualTransformation o;
                public final /* synthetic */ KeyboardOptions p;
                public final /* synthetic */ KeyboardActions q;
                public final /* synthetic */ boolean r;
                public final /* synthetic */ int s;
                public final /* synthetic */ int t;
                public final /* synthetic */ Shape u;
                public final /* synthetic */ TextFieldColors v;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(49);
                    TextFieldKt.a(TextFieldValue.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(final String str, final Function1 function1, final Modifier modifier, boolean z, final TextStyle textStyle, final Function2 function2, final Function2 function22, final Function2 function23, VisualTransformation visualTransformation, final KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, int i, int i2, Shape shape, TextFieldColors textFieldColors, Composer composer, final int i3) {
        int i4;
        GapComposer gapComposer;
        final boolean z2;
        final VisualTransformation visualTransformation2;
        final KeyboardActions keyboardActions2;
        final int i5;
        final int i6;
        final Shape shape2;
        final TextFieldColors textFieldColors2;
        int i7;
        int i8;
        KeyboardActions keyboardActions3;
        VisualTransformation visualTransformation3;
        boolean z3;
        final Shape shape3;
        boolean z4;
        long j;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(179130848);
        if ((i3 & 6) == 0) {
            i4 = (gapComposer2.f(str) ? 4 : 2) | i3;
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposer2.h(function1) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i4 |= gapComposer2.f(modifier) ? 256 : 128;
        }
        int i9 = i4 | 27648;
        if ((196608 & i3) == 0) {
            i9 |= gapComposer2.f(textStyle) ? 131072 : 65536;
        }
        int i10 = i9 | 1572864;
        if ((12582912 & i3) == 0) {
            i10 |= gapComposer2.h(function2) ? 8388608 : 4194304;
        }
        if ((100663296 & i3) == 0) {
            i10 |= gapComposer2.h(function22) ? 67108864 : 33554432;
        }
        if ((805306368 & i3) == 0) {
            i10 |= gapComposer2.h(function23) ? 536870912 : 268435456;
        }
        if (gapComposer2.N(i10 & 1, ((i10 & 306783379) == 306783378 && (((gapComposer2.f(textFieldColors) ? (char) 0 : (char) 0) | 26038) & 306783379) == 306783378) ? false : true)) {
            gapComposer2.S();
            if ((i3 & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                z3 = z;
                visualTransformation3 = visualTransformation;
                keyboardActions3 = keyboardActions;
                i8 = i;
                i7 = i2;
                shape3 = shape;
            } else {
                KeyboardActions keyboardActions4 = new KeyboardActions();
                CornerBasedShape b = TextFieldDefaults.b(gapComposer2);
                i7 = 1;
                i8 = Integer.MAX_VALUE;
                keyboardActions3 = keyboardActions4;
                visualTransformation3 = VisualTransformation.Companion.a;
                z3 = true;
                shape3 = b;
            }
            gapComposer2.q();
            gapComposer2.W(2138724187);
            Object K = gapComposer2.K();
            if (K == Composer.Companion.a) {
                K = InteractionSourceKt.a();
                gapComposer2.g0(K);
            }
            final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K;
            gapComposer2.p(false);
            gapComposer2.W(346090862);
            long b2 = textStyle.b();
            if (b2 != 16) {
                j = b2;
                z4 = false;
            } else {
                DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) textFieldColors;
                gapComposer2.W(9804418);
                MutableState k = SnapshotStateKt.k(new Color(z3 ? defaultTextFieldColors.a : defaultTextFieldColors.b), gapComposer2);
                z4 = false;
                gapComposer2.p(false);
                j = ((Color) k.getValue()).a;
            }
            gapComposer2.p(z4);
            TextStyle d = textStyle.d(new TextStyle(j, 0L, null, null, 0L, 0, 0L, 0, 16777214));
            Modifier c = TextFieldDefaults.c(modifier, z3, mutableInteractionSource, textFieldColors);
            Strings_androidKt.a(3, gapComposer2);
            Modifier a = SizeKt.a(c, 280.0f, 56.0f);
            final boolean z5 = z3;
            final VisualTransformation visualTransformation4 = visualTransformation3;
            final DefaultTextFieldColors defaultTextFieldColors2 = (DefaultTextFieldColors) textFieldColors;
            gapComposer2.W(-1446422485);
            MutableState k2 = SnapshotStateKt.k(new Color(defaultTextFieldColors2.c), gapComposer2);
            gapComposer2.p(false);
            Shape shape4 = shape3;
            KeyboardActions keyboardActions5 = keyboardActions3;
            gapComposer = gapComposer2;
            int i11 = i8;
            int i12 = i7;
            BasicTextFieldKt.b(str, function1, a, z5, d, keyboardOptions, keyboardActions5, i11, i12, visualTransformation4, null, mutableInteractionSource, new SolidColor(((Color) k2.getValue()).a), ComposableLambdaKt.b(-83351293, new Function3() { // from class: zg
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z6;
                    int i13;
                    Function2 function24 = (Function2) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    if ((intValue & 6) == 0) {
                        if (((GapComposer) composer2).h(function24)) {
                            i13 = 4;
                        } else {
                            i13 = 2;
                        }
                        intValue |= i13;
                    }
                    if ((intValue & 19) != 18) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.N(intValue & 1, z6)) {
                        TextFieldDefaults.a.a(str, function24, z5, false, visualTransformation4, mutableInteractionSource, function2, function22, function23, shape3, defaultTextFieldColors2, null, gapComposer3, (intValue << 3) & 112);
                    } else {
                        gapComposer3.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer2), gapComposer, (i10 & 64638) | 102236160, 196662);
            visualTransformation2 = visualTransformation4;
            z2 = z5;
            keyboardActions2 = keyboardActions5;
            i5 = i11;
            i6 = i12;
            textFieldColors2 = defaultTextFieldColors2;
            shape2 = shape4;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            z2 = z;
            visualTransformation2 = visualTransformation;
            keyboardActions2 = keyboardActions;
            i5 = i;
            i6 = i2;
            shape2 = shape;
            textFieldColors2 = textFieldColors;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: ah
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(i3 | 1);
                    TextFieldKt.b(str, function1, modifier, z2, textStyle, function2, function22, function23, visualTransformation2, keyboardOptions, keyboardActions2, i5, i6, shape2, textFieldColors2, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0142, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.a(r0.K(), java.lang.Integer.valueOf(r15)) == false) goto L99;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void c(final Modifier modifier, Function2 function2, Function2 function22, Function3 function3, final Function2 function23, final Function2 function24, final boolean z, final float f, PaddingValues paddingValues, Composer composer, final int i) {
        int i2;
        boolean z2;
        Function2 function25;
        Function3 function32;
        final Function2 function26;
        boolean z3;
        boolean z4;
        boolean z5;
        int i3;
        LayoutDirection layoutDirection;
        boolean z6;
        Function3 function33;
        boolean z7;
        Function2 function27;
        boolean z8;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Function2 function28 = function2;
        final PaddingValues paddingValues2 = paddingValues;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1595074580);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i2 = i12 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function28)) {
                i11 = 32;
            } else {
                i11 = 16;
            }
            i2 |= i11;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function22)) {
                i10 = 256;
            } else {
                i10 = 128;
            }
            i2 |= i10;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.h(function3)) {
                i9 = 2048;
            } else {
                i9 = 1024;
            }
            i2 |= i9;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.h(function23)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i2 |= i8;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.h(function24)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i2 |= i7;
        }
        if ((1572864 & i) == 0) {
            if (gapComposer.g(z)) {
                i6 = 1048576;
            } else {
                i6 = 524288;
            }
            i2 |= i6;
        }
        if ((12582912 & i) == 0) {
            if (gapComposer.c(f)) {
                i5 = 8388608;
            } else {
                i5 = 4194304;
            }
            i2 |= i5;
        }
        if ((100663296 & i) == 0) {
            if (gapComposer.f(paddingValues2)) {
                i4 = 67108864;
            } else {
                i4 = 33554432;
            }
            i2 |= i4;
        }
        if ((38347923 & i2) != 38347922) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            if ((3670016 & i2) == 1048576) {
                z3 = true;
            } else {
                z3 = false;
            }
            if ((29360128 & i2) == 8388608) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z9 = z3 | z4;
            if ((234881024 & i2) == 67108864) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z10 = z9 | z5;
            Object K = gapComposer.K();
            if (z10 || K == Composer.Companion.a) {
                K = new TextFieldMeasurePolicy(z, f, paddingValues2);
                gapComposer.g0(K);
            }
            TextFieldMeasurePolicy textFieldMeasurePolicy = (TextFieldMeasurePolicy) K;
            LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
            int a = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z11 = gapComposer.S;
            x9 x9Var = LayoutNode.b0;
            if (z11) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, textFieldMeasurePolicy, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            boolean z12 = gapComposer.S;
            e6 e6Var3 = ComposeUiNode.Companion.e;
            if (!z12) {
                i3 = i2;
            } else {
                i3 = i2;
            }
            q.r(a, gapComposer, a, e6Var3);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var4);
            MinimumInteractiveModifier minimumInteractiveModifier = MinimumInteractiveModifier.b;
            Modifier.Companion companion = Modifier.Companion.b;
            BiasAlignment biasAlignment = Alignment.Companion.e;
            if (function23 != null) {
                gapComposer.W(-1444611617);
                Modifier b = LayoutIdKt.b(companion, "Leading");
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
                Modifier l2 = b.l(minimumInteractiveModifier);
                MeasurePolicy d = BoxKt.d(biasAlignment, false);
                int a2 = ComposablesKt.a(gapComposer);
                PersistentCompositionLocalMap l3 = gapComposer.l();
                Modifier c2 = ComposedModifierKt.c(gapComposer, l2);
                gapComposer.Z();
                layoutDirection = layoutDirection2;
                if (gapComposer.S) {
                    gapComposer.k(x9Var);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d, e6Var);
                Updater.c(gapComposer, l3, e6Var2);
                if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                    q.r(a2, gapComposer, a2, e6Var3);
                }
                Updater.c(gapComposer, c2, e6Var4);
                function23.n(gapComposer, Integer.valueOf((i3 >> 12) & 14));
                gapComposer.p(true);
                z6 = false;
                gapComposer.p(false);
            } else {
                layoutDirection = layoutDirection2;
                z6 = false;
                gapComposer.W(-1444365601);
                gapComposer.p(false);
            }
            if (function24 != null) {
                gapComposer.W(-1444322883);
                Modifier b2 = LayoutIdKt.b(companion, "Trailing");
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = InteractiveComponentSizeKt.a;
                Modifier l4 = b2.l(minimumInteractiveModifier);
                MeasurePolicy d2 = BoxKt.d(biasAlignment, z6);
                int a3 = ComposablesKt.a(gapComposer);
                PersistentCompositionLocalMap l5 = gapComposer.l();
                Modifier c3 = ComposedModifierKt.c(gapComposer, l4);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(x9Var);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d2, e6Var);
                Updater.c(gapComposer, l5, e6Var2);
                if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a3))) {
                    q.r(a3, gapComposer, a3, e6Var3);
                }
                Updater.c(gapComposer, c3, e6Var4);
                function24.n(gapComposer, Integer.valueOf((i3 >> 15) & 14));
                gapComposer.p(true);
                gapComposer.p(false);
            } else {
                gapComposer.W(-1444074945);
                gapComposer.p(z6);
            }
            paddingValues2 = paddingValues;
            LayoutDirection layoutDirection3 = layoutDirection;
            float b3 = PaddingKt.b(paddingValues2, layoutDirection3);
            float a4 = PaddingKt.a(paddingValues2, layoutDirection3);
            if (function23 != null) {
                b3 -= 12.0f;
                if (b3 < 0.0f) {
                    b3 = 0.0f;
                }
            }
            float f2 = b3;
            if (function24 != null) {
                a4 -= 12.0f;
                if (a4 < 0.0f) {
                    a4 = 0.0f;
                }
            }
            Modifier h = PaddingKt.h(companion, f2, 0.0f, a4, 0.0f, 10);
            if (function3 != null) {
                gapComposer.W(-1443222972);
                Function3 function34 = function3;
                function34.f(LayoutIdKt.b(companion, "Hint").l(h), gapComposer, Integer.valueOf((i3 >> 6) & 112));
                z7 = false;
                gapComposer.p(false);
                function33 = function34;
            } else {
                function33 = function3;
                z7 = false;
                gapComposer.W(-1443135521);
                gapComposer.p(false);
            }
            BiasAlignment biasAlignment2 = Alignment.Companion.a;
            if (function22 != null) {
                gapComposer.W(-1443101018);
                Modifier l6 = LayoutIdKt.b(companion, "Label").l(h);
                MeasurePolicy d3 = BoxKt.d(biasAlignment2, z7);
                int a5 = ComposablesKt.a(gapComposer);
                PersistentCompositionLocalMap l7 = gapComposer.l();
                Modifier c4 = ComposedModifierKt.c(gapComposer, l6);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(x9Var);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d3, e6Var);
                Updater.c(gapComposer, l7, e6Var2);
                if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a5))) {
                    q.r(a5, gapComposer, a5, e6Var3);
                }
                Updater.c(gapComposer, c4, e6Var4);
                Function2 function29 = function22;
                function29.n(gapComposer, Integer.valueOf((i3 >> 6) & 14));
                z8 = true;
                gapComposer.p(true);
                gapComposer.p(false);
                function27 = function29;
            } else {
                function27 = function22;
                boolean z13 = z7;
                z8 = true;
                gapComposer.W(-1443015489);
                gapComposer.p(z13);
            }
            Modifier l8 = LayoutIdKt.b(companion, "TextField").l(h);
            MeasurePolicy d4 = BoxKt.d(biasAlignment2, z8);
            int a6 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l9 = gapComposer.l();
            Modifier c5 = ComposedModifierKt.c(gapComposer, l8);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d4, e6Var);
            Updater.c(gapComposer, l9, e6Var2);
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a6))) {
                q.r(a6, gapComposer, a6, e6Var3);
            }
            Updater.c(gapComposer, c5, e6Var4);
            Function2 function210 = function2;
            function210.n(gapComposer, Integer.valueOf((i3 >> 3) & 14));
            gapComposer.p(true);
            gapComposer.p(true);
            function26 = function210;
            function25 = function27;
            function32 = function33;
        } else {
            function25 = function22;
            function32 = function3;
            gapComposer.Q();
            function26 = function28;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Function2 function211 = function25;
            final Function3 function35 = function32;
            r.d = new Function2() { // from class: ch
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TextFieldKt.c(Modifier.this, function26, function211, function35, function23, function24, z, f, paddingValues2, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final int d(int i, boolean z, int i2, int i3, int i4, int i5, long j, float f, PaddingValues paddingValues) {
        float f2;
        float f3 = 2.0f * f;
        float d = paddingValues.d() * f;
        float a = paddingValues.a() * f;
        int max = Math.max(i, i5);
        if (z) {
            f2 = i2 + f3 + max + a;
        } else {
            f2 = d + max + a;
        }
        return ConstraintsKt.f(Math.max(MathKt.b(f2), Math.max(i3, i4)), j);
    }
}
