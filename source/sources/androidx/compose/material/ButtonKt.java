package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import defpackage.u;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ButtonKt {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Function0 function0, Modifier modifier, boolean z, ButtonElevation buttonElevation, Shape shape, ButtonColors buttonColors, PaddingValues paddingValues, final Function3 function3, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        ButtonElevation buttonElevation2;
        Shape shape2;
        int i8;
        ButtonColors buttonColors2;
        int i9;
        int i10;
        int i11;
        boolean z3;
        GapComposer gapComposer;
        final Modifier modifier3;
        final boolean z4;
        final ButtonElevation buttonElevation3;
        final ButtonColors buttonColors3;
        final PaddingValues paddingValues2;
        RecomposeScopeImpl r;
        Modifier modifier4;
        float f;
        Modifier modifier5;
        ButtonColors buttonColors4;
        int i12;
        PaddingValues paddingValues3;
        int i13;
        ButtonElevation buttonElevation4;
        ButtonColors buttonColors5;
        long j;
        long j2;
        long j3;
        float f2;
        MutableInteractionSource mutableInteractionSource;
        Shape shape3;
        Modifier modifier6;
        boolean z5;
        boolean z6;
        AnimationState animationState;
        float f3;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1084573925);
        if ((i & 6) == 0) {
            if (gapComposer2.h(function0)) {
                i19 = 4;
            } else {
                i19 = 2;
            }
            i3 = i19 | i;
        } else {
            i3 = i;
        }
        int i20 = i2 & 2;
        if (i20 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            modifier2 = modifier;
            if (gapComposer2.f(modifier2)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
            i5 = i2 & 4;
            if (i5 == 0) {
                i3 |= 384;
            } else if ((i & 384) == 0) {
                z2 = z;
                if (gapComposer2.g(z2)) {
                    i6 = 256;
                } else {
                    i6 = 128;
                }
                i3 |= i6;
                if ((i2 & 8) != 0) {
                    i3 |= 3072;
                } else if ((i & 3072) == 0) {
                    if (gapComposer2.f(null)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i3 |= i7;
                }
                if ((i & 24576) == 0) {
                    if ((i2 & 16) == 0) {
                        buttonElevation2 = buttonElevation;
                        if (gapComposer2.f(buttonElevation2)) {
                            i18 = 16384;
                            i3 |= i18;
                        }
                    } else {
                        buttonElevation2 = buttonElevation;
                    }
                    i18 = 8192;
                    i3 |= i18;
                } else {
                    buttonElevation2 = buttonElevation;
                }
                if ((196608 & i) == 0) {
                    if ((i2 & 32) == 0) {
                        shape2 = shape;
                        if (gapComposer2.f(shape2)) {
                            i17 = 131072;
                            i3 |= i17;
                        }
                    } else {
                        shape2 = shape;
                    }
                    i17 = 65536;
                    i3 |= i17;
                } else {
                    shape2 = shape;
                }
                if ((i2 & 64) != 0) {
                    i3 |= 1572864;
                } else if ((i & 1572864) == 0) {
                    if (gapComposer2.f(null)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                }
                if ((12582912 & i) == 0) {
                    if ((i2 & 128) == 0) {
                        buttonColors2 = buttonColors;
                        if (gapComposer2.f(buttonColors2)) {
                            i16 = 8388608;
                            i3 |= i16;
                        }
                    } else {
                        buttonColors2 = buttonColors;
                    }
                    i16 = 4194304;
                    i3 |= i16;
                } else {
                    buttonColors2 = buttonColors;
                }
                i9 = i2 & 256;
                if (i9 != 0) {
                    i3 |= 100663296;
                } else if ((i & 100663296) == 0) {
                    if (gapComposer2.f(paddingValues)) {
                        i10 = 67108864;
                    } else {
                        i10 = 33554432;
                    }
                    i3 |= i10;
                }
                if ((i & 805306368) == 0) {
                    if (gapComposer2.h(function3)) {
                        i15 = 536870912;
                    } else {
                        i15 = 268435456;
                    }
                    i3 |= i15;
                }
                i11 = i3;
                boolean z7 = true;
                if ((i3 & 306783379) != 306783378) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposer2.N(i11 & 1, z3)) {
                    gapComposer2.S();
                    int i21 = i & 1;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (i21 != 0 && !gapComposer2.x()) {
                        gapComposer2.Q();
                        if ((i2 & 16) != 0) {
                            i14 = i11 & (-57345);
                        } else {
                            i14 = i11;
                        }
                        if ((i2 & 32) != 0) {
                            i14 &= -458753;
                        }
                        if ((i2 & 128) != 0) {
                            i14 &= -29360129;
                        }
                        paddingValues3 = paddingValues;
                        i13 = i14;
                        buttonElevation4 = buttonElevation2;
                        buttonColors5 = buttonColors2;
                        f = 4.0f;
                    } else {
                        if (i20 != 0) {
                            modifier4 = Modifier.Companion.b;
                        } else {
                            modifier4 = modifier2;
                        }
                        if (i5 != 0) {
                            z2 = true;
                        }
                        if ((i2 & 16) != 0) {
                            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.a;
                            boolean c = gapComposer2.c(2.0f) | gapComposer2.c(8.0f) | gapComposer2.c(0.0f) | gapComposer2.c(4.0f) | gapComposer2.c(4.0f);
                            Object K = gapComposer2.K();
                            if (c || K == composer$Companion$Empty$1) {
                                K = new Object();
                                gapComposer2.g0(K);
                            }
                            i11 &= -57345;
                            f = 4.0f;
                            buttonElevation2 = (DefaultButtonElevation) K;
                        } else {
                            f = 4.0f;
                        }
                        if ((i2 & 32) != 0) {
                            i11 &= -458753;
                            shape2 = MaterialTheme.b(gapComposer2).a;
                        }
                        if ((i2 & 128) != 0) {
                            PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.a;
                            long e = MaterialTheme.a(gapComposer2).e();
                            modifier5 = modifier4;
                            buttonColors4 = new DefaultButtonColors(e, ColorsKt.b(e, gapComposer2), ColorKt.d(Color.b(MaterialTheme.a(gapComposer2).d(), 0.12f), MaterialTheme.a(gapComposer2).f()), Color.b(MaterialTheme.a(gapComposer2).d(), ContentAlpha.a(0.38f, 0.38f, gapComposer2)));
                            i12 = i11 & (-29360129);
                        } else {
                            modifier5 = modifier4;
                            buttonColors4 = buttonColors2;
                            i12 = i11;
                        }
                        if (i9 != 0) {
                            modifier2 = modifier5;
                            i13 = i12;
                            paddingValues3 = ButtonDefaults.a;
                        } else {
                            modifier2 = modifier5;
                            paddingValues3 = paddingValues;
                            i13 = i12;
                        }
                        buttonElevation4 = buttonElevation2;
                        buttonColors5 = buttonColors4;
                    }
                    gapComposer2.q();
                    gapComposer2.W(497721888);
                    Object K2 = gapComposer2.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = InteractionSourceKt.a();
                        gapComposer2.g0(K2);
                    }
                    MutableInteractionSource mutableInteractionSource2 = (MutableInteractionSource) K2;
                    gapComposer2.p(false);
                    int i22 = i13 >> 6;
                    DefaultButtonColors defaultButtonColors = (DefaultButtonColors) buttonColors5;
                    defaultButtonColors.getClass();
                    ButtonElevation buttonElevation5 = buttonElevation4;
                    gapComposer2.W(-2133647540);
                    ButtonColors buttonColors6 = buttonColors5;
                    if (z2) {
                        j = defaultButtonColors.b;
                    } else {
                        j = defaultButtonColors.d;
                    }
                    MutableState k = SnapshotStateKt.k(new Color(j), gapComposer2);
                    gapComposer2.p(false);
                    Object K3 = gapComposer2.K();
                    if (K3 == composer$Companion$Empty$1) {
                        K3 = new defpackage.h(25);
                        gapComposer2.g0(K3);
                    }
                    Modifier a = SemanticsModifierKt.a(modifier2, false, (Function1) K3);
                    DefaultButtonColors defaultButtonColors2 = (DefaultButtonColors) buttonColors6;
                    Modifier modifier7 = modifier2;
                    gapComposer2.W(-655254499);
                    if (z2) {
                        j2 = defaultButtonColors2.a;
                    } else {
                        j2 = defaultButtonColors2.c;
                    }
                    MutableState k2 = SnapshotStateKt.k(new Color(j2), gapComposer2);
                    gapComposer2.p(false);
                    long j4 = ((Color) k2.getValue()).a;
                    long b = Color.b(((Color) k.getValue()).a, 1.0f);
                    if (buttonElevation5 == null) {
                        gapComposer2.W(498128545);
                        gapComposer2.p(false);
                        mutableInteractionSource = mutableInteractionSource2;
                        z6 = z2;
                        j3 = b;
                        shape3 = shape2;
                        modifier6 = a;
                        animationState = null;
                    } else {
                        gapComposer2.W(1401541984);
                        DefaultButtonElevation defaultButtonElevation = (DefaultButtonElevation) buttonElevation5;
                        gapComposer2.W(-1588756907);
                        Object K4 = gapComposer2.K();
                        if (K4 == composer$Companion$Empty$1) {
                            K4 = new SnapshotStateList();
                            gapComposer2.g0(K4);
                        }
                        SnapshotStateList snapshotStateList = (SnapshotStateList) K4;
                        boolean f4 = gapComposer2.f(mutableInteractionSource2);
                        j3 = b;
                        Object K5 = gapComposer2.K();
                        if (f4 || K5 == composer$Companion$Empty$1) {
                            K5 = new DefaultButtonElevation$elevation$1$1(mutableInteractionSource2, snapshotStateList, null);
                            gapComposer2.g0(K5);
                        }
                        EffectsKt.e(gapComposer2, mutableInteractionSource2, (Function2) K5);
                        Interaction interaction = (Interaction) CollectionsKt.A(snapshotStateList);
                        if (!z2) {
                            f2 = 0.0f;
                        } else if (interaction instanceof PressInteraction.Press) {
                            f2 = 8.0f;
                        } else if ((interaction instanceof HoverInteraction$Enter) || (interaction instanceof FocusInteraction$Focus)) {
                            f2 = f;
                        } else {
                            f2 = 2.0f;
                        }
                        Object K6 = gapComposer2.K();
                        if (K6 == composer$Companion$Empty$1) {
                            mutableInteractionSource = mutableInteractionSource2;
                            shape3 = shape2;
                            modifier6 = a;
                            K6 = new Animatable(new Dp(f2), VectorConvertersKt.c, null, 12);
                            gapComposer2.g0(K6);
                        } else {
                            mutableInteractionSource = mutableInteractionSource2;
                            shape3 = shape2;
                            modifier6 = a;
                        }
                        Animatable animatable = (Animatable) K6;
                        Dp dp = new Dp(f2);
                        boolean h = gapComposer2.h(animatable) | gapComposer2.c(f2);
                        if ((((i22 & 14) ^ 6) > 4 && gapComposer2.g(z2)) || (i22 & 6) == 4) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        boolean z8 = h | z5;
                        if ((((i22 & 896) ^ 384) <= 256 || !gapComposer2.f(defaultButtonElevation)) && (i22 & 384) != 256) {
                            z7 = false;
                        }
                        boolean h2 = z8 | z7 | gapComposer2.h(interaction);
                        Object K7 = gapComposer2.K();
                        if (!h2 && K7 != composer$Companion$Empty$1) {
                            z6 = z2;
                        } else {
                            boolean z9 = z2;
                            K7 = new DefaultButtonElevation$elevation$2$1(animatable, f2, z9, defaultButtonElevation, interaction, null);
                            z6 = z9;
                            gapComposer2.g0(K7);
                        }
                        EffectsKt.e(gapComposer2, dp, (Function2) K7);
                        animationState = animatable.c;
                        gapComposer2.p(false);
                        gapComposer2.p(false);
                    }
                    if (animationState != null) {
                        f3 = ((Dp) ((SnapshotMutableStateImpl) animationState.k).getValue()).j;
                    } else {
                        f3 = 0.0f;
                    }
                    int i23 = (i13 & 14) | 805306368 | (i13 & 896) | (i22 & 7168) | (3670016 & i13);
                    shape2 = shape3;
                    gapComposer = gapComposer2;
                    SurfaceKt.b(function0, modifier6, z6, shape2, j4, j3, f3, mutableInteractionSource, ComposableLambdaKt.b(-20345758, new u(k, paddingValues3, function3, 5), gapComposer2), gapComposer, i23);
                    buttonElevation3 = buttonElevation5;
                    buttonColors3 = buttonColors6;
                    paddingValues2 = paddingValues3;
                    z4 = z6;
                    modifier3 = modifier7;
                } else {
                    gapComposer = gapComposer2;
                    gapComposer.Q();
                    modifier3 = modifier2;
                    z4 = z2;
                    buttonElevation3 = buttonElevation2;
                    buttonColors3 = buttonColors2;
                    paddingValues2 = paddingValues;
                }
                final Shape shape4 = shape2;
                r = gapComposer.r();
                if (r != null) {
                    r.d = new Function2() { // from class: u4
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            ButtonKt.a(Function0.this, modifier3, z4, buttonElevation3, shape4, buttonColors3, paddingValues2, function3, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                            return Unit.a;
                        }
                    };
                    return;
                }
                return;
            }
            z2 = z;
            if ((i2 & 8) != 0) {
            }
            if ((i & 24576) == 0) {
            }
            if ((196608 & i) == 0) {
            }
            if ((i2 & 64) != 0) {
            }
            if ((12582912 & i) == 0) {
            }
            i9 = i2 & 256;
            if (i9 != 0) {
            }
            if ((i & 805306368) == 0) {
            }
            i11 = i3;
            boolean z72 = true;
            if ((i3 & 306783379) != 306783378) {
            }
            if (gapComposer2.N(i11 & 1, z3)) {
            }
            final Shape shape42 = shape2;
            r = gapComposer.r();
            if (r != null) {
            }
        }
        modifier2 = modifier;
        i5 = i2 & 4;
        if (i5 == 0) {
        }
        z2 = z;
        if ((i2 & 8) != 0) {
        }
        if ((i & 24576) == 0) {
        }
        if ((196608 & i) == 0) {
        }
        if ((i2 & 64) != 0) {
        }
        if ((12582912 & i) == 0) {
        }
        i9 = i2 & 256;
        if (i9 != 0) {
        }
        if ((i & 805306368) == 0) {
        }
        i11 = i3;
        boolean z722 = true;
        if ((i3 & 306783379) != 306783378) {
        }
        if (gapComposer2.N(i11 & 1, z3)) {
        }
        final Shape shape422 = shape2;
        r = gapComposer.r();
        if (r != null) {
        }
    }

    public static final void b(Function0 function0, boolean z, ButtonColors buttonColors, Function3 function3, Composer composer, int i) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z2 = z;
        RoundedCornerShape roundedCornerShape = MaterialTheme.b(composer).a;
        if ((i & 128) != 0) {
            buttonColors = ButtonDefaults.a(0L, composer, 7);
        }
        PaddingValuesImpl paddingValuesImpl = ButtonDefaults.d;
        a(function0, Modifier.Companion.b, z2, null, roundedCornerShape, buttonColors, paddingValuesImpl, function3, composer, 805306368, 0);
    }
}
