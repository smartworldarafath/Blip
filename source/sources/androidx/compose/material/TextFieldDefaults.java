package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSize;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.foundation.shape.CornerSizeKt$ZeroCornerSize$1;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.TextFieldDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Dp;
import defpackage.a8;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldDefaults {
    public static final TextFieldDefaults a = new Object();

    public static CornerBasedShape b(Composer composer) {
        RoundedCornerShape roundedCornerShape = MaterialTheme.b(composer).a;
        CornerSize cornerSize = roundedCornerShape.a;
        CornerSize cornerSize2 = roundedCornerShape.b;
        CornerSizeKt$ZeroCornerSize$1 cornerSizeKt$ZeroCornerSize$1 = CornerSizeKt.a;
        return new CornerBasedShape(cornerSize, cornerSize2, cornerSizeKt$ZeroCornerSize$1, cornerSizeKt$ZeroCornerSize$1);
    }

    public static Modifier c(Modifier modifier, final boolean z, final MutableInteractionSource mutableInteractionSource, final TextFieldColors textFieldColors) {
        return ComposedModifierKt.a(modifier, new Function3() { // from class: androidx.compose.material.l
            @Override // kotlin.jvm.functions.Function3
            public final Object f(Object obj, Object obj2, Object obj3) {
                long j;
                State k;
                float f;
                State k2;
                ((Integer) obj3).getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.W(1398930845);
                InteractionSource interactionSource = mutableInteractionSource;
                MutableState a2 = FocusInteractionKt.a(interactionSource, gapComposer, 0);
                DefaultTextFieldColors defaultTextFieldColors = (DefaultTextFieldColors) textFieldColors;
                gapComposer.W(998675979);
                MutableState a3 = FocusInteractionKt.a(interactionSource, gapComposer, 0);
                boolean z2 = z;
                if (!z2) {
                    j = defaultTextFieldColors.h;
                } else if (((Boolean) a3.getValue()).booleanValue()) {
                    j = defaultTextFieldColors.e;
                } else {
                    j = defaultTextFieldColors.f;
                }
                if (z2) {
                    gapComposer.W(318120148);
                    k = SingleValueAnimationKt.a(j, AnimationSpecKt.c(150, 0, null, 6), gapComposer, 48, 12);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(318223006);
                    k = SnapshotStateKt.k(new Color(j), gapComposer);
                    gapComposer.p(false);
                }
                gapComposer.p(false);
                if (((Boolean) a2.getValue()).booleanValue()) {
                    f = 2.0f;
                } else {
                    f = 1.0f;
                }
                if (z2) {
                    gapComposer.W(1361082574);
                    k2 = AnimateAsStateKt.a(f, AnimationSpecKt.c(150, 0, null, 6), gapComposer, 48);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(1361186796);
                    k2 = SnapshotStateKt.k(new Dp(1.0f), gapComposer);
                    gapComposer.p(false);
                }
                BorderStroke borderStroke = (BorderStroke) SnapshotStateKt.k(new BorderStroke(((Dp) k2.getValue()).j, new SolidColor(((Color) k.getValue()).a)), gapComposer).getValue();
                Modifier d = DrawModifierKt.d(Modifier.Companion.b, new a8(borderStroke.a, borderStroke, 2));
                gapComposer.p(false);
                return d;
            }
        });
    }

    public static TextFieldColors d(long j, long j2, long j3, long j4, long j5, long j6, long j7, Composer composer, int i) {
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        if ((i & 1) != 0) {
            GapComposer gapComposer = (GapComposer) composer;
            j8 = Color.b(((Color) gapComposer.j(ContentColorKt.a)).a, ((Number) gapComposer.j(ContentAlphaKt.a)).floatValue());
        } else {
            j8 = j;
        }
        long b = Color.b(j8, ContentAlpha.a(0.38f, 0.38f, composer));
        if ((i & 4) != 0) {
            j9 = Color.b(MaterialTheme.a(composer).d(), 0.12f);
        } else {
            j9 = j2;
        }
        if ((i & 8) != 0) {
            j10 = MaterialTheme.a(composer).e();
        } else {
            j10 = j3;
        }
        long c = MaterialTheme.a(composer).c();
        if ((i & 32) != 0) {
            j11 = Color.b(MaterialTheme.a(composer).e(), ContentAlpha.b(composer));
        } else {
            j11 = j4;
        }
        if ((i & 64) != 0) {
            j12 = Color.b(MaterialTheme.a(composer).d(), 0.42f);
        } else {
            j12 = j5;
        }
        long b2 = Color.b(j12, ContentAlpha.a(0.38f, 0.38f, composer));
        long c2 = MaterialTheme.a(composer).c();
        if ((i & 512) != 0) {
            j13 = j12;
            j14 = Color.b(MaterialTheme.a(composer).d(), 0.54f);
        } else {
            j13 = j12;
            j14 = j6;
        }
        long b3 = Color.b(j14, ContentAlpha.a(0.38f, 0.38f, composer));
        long j16 = j14;
        long b4 = Color.b(MaterialTheme.a(composer).d(), 0.54f);
        long b5 = Color.b(b4, ContentAlpha.a(0.38f, 0.38f, composer));
        long c3 = MaterialTheme.a(composer).c();
        long b6 = Color.b(MaterialTheme.a(composer).e(), ContentAlpha.b(composer));
        long b7 = Color.b(MaterialTheme.a(composer).d(), ContentAlpha.c(composer));
        long b8 = Color.b(b7, ContentAlpha.a(0.38f, 0.38f, composer));
        long c4 = MaterialTheme.a(composer).c();
        if ((i & 524288) != 0) {
            j15 = Color.b(MaterialTheme.a(composer).d(), ContentAlpha.c(composer));
        } else {
            j15 = j7;
        }
        return new DefaultTextFieldColors(j8, b, j10, c, j11, j13, c2, b2, j16, b3, j16, b4, b5, c3, j9, b6, b7, b8, c4, j15, Color.b(j15, ContentAlpha.a(0.38f, 0.38f, composer)));
    }

    public final void a(final String str, final Function2 function2, final boolean z, final boolean z2, final VisualTransformation visualTransformation, final InteractionSource interactionSource, final Function2 function22, final Function2 function23, final Function2 function24, final Shape shape, final TextFieldColors textFieldColors, PaddingValues paddingValues, Composer composer, final int i) {
        int i2;
        Function2 function25;
        boolean z3;
        boolean z4;
        VisualTransformation visualTransformation2;
        Function2 function26;
        int i3;
        int i4;
        int i5;
        boolean z5;
        GapComposer gapComposer;
        final PaddingValues paddingValues2;
        PaddingValues paddingValuesImpl;
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
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(2088762355);
        if ((i & 6) == 0) {
            if (gapComposer2.f(str)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i2 = i16 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            function25 = function2;
            if (gapComposer2.h(function25)) {
                i15 = 32;
            } else {
                i15 = 16;
            }
            i2 |= i15;
        } else {
            function25 = function2;
        }
        if ((i & 384) == 0) {
            z3 = z;
            if (gapComposer2.g(z3)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i2 |= i14;
        } else {
            z3 = z;
        }
        if ((i & 3072) == 0) {
            z4 = z2;
            if (gapComposer2.g(z4)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i2 |= i13;
        } else {
            z4 = z2;
        }
        if ((i & 24576) == 0) {
            visualTransformation2 = visualTransformation;
            if (gapComposer2.f(visualTransformation2)) {
                i12 = 16384;
            } else {
                i12 = 8192;
            }
            i2 |= i12;
        } else {
            visualTransformation2 = visualTransformation;
        }
        if ((i & 196608) == 0) {
            if (gapComposer2.f(interactionSource)) {
                i11 = 131072;
            } else {
                i11 = 65536;
            }
            i2 |= i11;
        }
        if ((i & 1572864) == 0) {
            if (gapComposer2.g(false)) {
                i10 = 1048576;
            } else {
                i10 = 524288;
            }
            i2 |= i10;
        }
        if ((i & 12582912) == 0) {
            if (gapComposer2.h(null)) {
                i9 = 8388608;
            } else {
                i9 = 4194304;
            }
            i2 |= i9;
        }
        if ((100663296 & i) == 0) {
            function26 = function22;
            if (gapComposer2.h(function26)) {
                i8 = 67108864;
            } else {
                i8 = 33554432;
            }
            i2 |= i8;
        } else {
            function26 = function22;
        }
        if ((i & 805306368) == 0) {
            if (gapComposer2.h(function23)) {
                i7 = 536870912;
            } else {
                i7 = 268435456;
            }
            i2 |= i7;
        }
        if (gapComposer2.h(function24)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i17 = 24576 | i3;
        if (gapComposer2.f(shape)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i18 = i17 | i4;
        if (gapComposer2.f(textFieldColors)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i19 = 1024 | i18 | i5;
        int i20 = i2;
        if ((306783379 & i2) == 306783378 && (i19 & 9363) == 9362) {
            z5 = false;
        } else {
            z5 = true;
        }
        if (gapComposer2.N(i20 & 1, z5)) {
            gapComposer2.S();
            if ((i & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                i6 = i19 & (-7169);
                paddingValuesImpl = paddingValues;
            } else {
                paddingValuesImpl = new PaddingValuesImpl(16.0f, 16.0f, 16.0f, 16.0f);
                i6 = i19 & (-7169);
            }
            gapComposer2.q();
            TextFieldType[] textFieldTypeArr = TextFieldType.j;
            int i21 = i20 << 3;
            int i22 = i20 >> 9;
            int i23 = (i21 & 896) | (i21 & 112) | 6 | ((i20 >> 3) & 7168) | (i22 & 57344) | (i22 & 458752) | (i22 & 3670016) | ((i6 << 21) & 29360128) | ((i20 << 15) & 234881024) | ((i20 << 21) & 1879048192);
            int i24 = i6 << 6;
            int i25 = ((i20 >> 18) & 14) | 196608 | ((i20 >> 12) & 112) | (i24 & 7168) | (i24 & 57344);
            gapComposer = gapComposer2;
            TextFieldImplKt.a(str, function25, visualTransformation2, function26, function23, function24, z4, z3, interactionSource, paddingValuesImpl, shape, textFieldColors, gapComposer, i23, i25);
            paddingValues2 = paddingValuesImpl;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: ug
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(i | 1);
                    TextFieldDefaults.this.a(str, function2, z, z2, visualTransformation, interactionSource, function22, function23, function24, shape, textFieldColors, paddingValues2, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }
}
