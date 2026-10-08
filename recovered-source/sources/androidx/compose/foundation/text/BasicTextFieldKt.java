package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.DpKt;
import defpackage.p0;
import defpackage.p2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BasicTextFieldKt {
    public static final /* synthetic */ int a = 0;

    static {
        DpKt.a(40.0f, 40.0f);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x018d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final TextFieldValue textFieldValue, final Function1 function1, final Modifier modifier, boolean z, final TextStyle textStyle, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final boolean z2, final int i, final int i2, final VisualTransformation visualTransformation, Function1 function12, MutableInteractionSource mutableInteractionSource, final SolidColor solidColor, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3, final int i4, final int i5) {
        int i6;
        int i7;
        KeyboardActions keyboardActions2;
        int i8;
        int i9;
        int i10;
        final boolean z3;
        final Function1 function13;
        final MutableInteractionSource mutableInteractionSource2;
        RecomposeScopeImpl r;
        Function1 function14;
        MutableInteractionSource mutableInteractionSource3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-971111025);
        if ((i3 & 6) == 0) {
            i6 = (gapComposer.f(textFieldValue) ? 4 : 2) | i3;
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposer.h(function1) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i6 |= gapComposer.f(modifier) ? 256 : 128;
        }
        int i11 = i5 & 8;
        if (i11 != 0) {
            i6 |= 3072;
        } else if ((i3 & 3072) == 0) {
            i6 |= gapComposer.g(z) ? 2048 : 1024;
            if ((i5 & 16) == 0) {
                i6 |= 24576;
            } else if ((i3 & 24576) == 0) {
                i6 |= gapComposer.g(false) ? 16384 : 8192;
            }
            if ((i3 & 196608) == 0) {
                i6 |= gapComposer.f(textStyle) ? 131072 : 65536;
            }
            if ((i3 & 1572864) == 0) {
                i6 |= gapComposer.f(keyboardOptions) ? 1048576 : 524288;
            }
            if ((i3 & 12582912) != 0) {
                i7 = 196608;
                keyboardActions2 = keyboardActions;
                i6 |= gapComposer.f(keyboardActions2) ? 8388608 : 4194304;
            } else {
                i7 = 196608;
                keyboardActions2 = keyboardActions;
            }
            if ((i3 & 100663296) == 0) {
                i6 |= gapComposer.g(z2) ? 67108864 : 33554432;
            }
            if ((i3 & 805306368) == 0) {
                i6 |= gapComposer.d(i) ? 536870912 : 268435456;
            }
            if ((i4 & 6) != 0) {
                i8 = i4 | (gapComposer.d(i2) ? 4 : 2);
            } else {
                i8 = i4;
            }
            if ((i4 & 48) == 0) {
                i8 |= gapComposer.f(visualTransformation) ? 32 : 16;
            }
            int i12 = i8;
            int i13 = i12 | 384;
            i9 = i5 & 8192;
            if (i9 == 0) {
                i10 = i12 | 3456;
            } else if ((i4 & 3072) == 0) {
                i10 = i13 | (gapComposer.f(mutableInteractionSource) ? 2048 : 1024);
            } else {
                i10 = i13;
            }
            if ((i4 & 24576) == 0) {
                i10 |= gapComposer.f(solidColor) ? 16384 : 8192;
            }
            if ((i4 & i7) == 0) {
                i10 |= gapComposer.h(composableLambdaImpl) ? 131072 : 65536;
            }
            if (!gapComposer.N(i6 & 1, (i6 & 306783379) == 306783378 || (i10 & 74899) != 74898)) {
                gapComposer.S();
                int i14 = i3 & 1;
                Object obj = Composer.Companion.a;
                if (i14 != 0 && !gapComposer.x()) {
                    gapComposer.Q();
                    function14 = function12;
                    mutableInteractionSource3 = mutableInteractionSource;
                } else {
                    boolean z4 = i11 != 0 ? true : z;
                    Object K = gapComposer.K();
                    if (K == obj) {
                        z = z4;
                        K = new defpackage.h(22);
                        gapComposer.g0(K);
                    } else {
                        z = z4;
                    }
                    function14 = (Function1) K;
                    mutableInteractionSource3 = i9 != 0 ? null : mutableInteractionSource;
                }
                boolean z5 = z;
                gapComposer.q();
                ImeOptions a2 = keyboardOptions.a(z2);
                boolean z6 = !z2;
                int i15 = z2 ? 1 : i2;
                int i16 = z2 ? 1 : i;
                boolean z7 = ((i6 & 14) == 4) | ((i6 & 112) == 32);
                Object K2 = gapComposer.K();
                if (z7 || K2 == obj) {
                    K2 = new defpackage.b(5, textFieldValue, function1);
                    gapComposer.g0(K2);
                }
                int i17 = i10 << 9;
                Function1 function15 = function14;
                CoreTextFieldKt.a(textFieldValue, (Function1) K2, modifier, textStyle, visualTransformation, function15, mutableInteractionSource3, solidColor, z6, i16, i15, a2, keyboardActions2, z5, composableLambdaImpl, gapComposer, (i6 & 910) | ((i6 >> 6) & 7168) | (i17 & 57344) | (i17 & 458752) | (i17 & 3670016) | (i17 & 29360128), (i6 & 7168) | ((i6 >> 15) & 896) | (i6 & 57344) | (i10 & 458752));
                function13 = function15;
                z3 = z5;
                mutableInteractionSource2 = mutableInteractionSource3;
            } else {
                gapComposer.Q();
                z3 = z;
                function13 = function12;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new Function2() { // from class: e4
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        int a3 = RecomposeScopeImplKt.a(i3 | 1);
                        int a4 = RecomposeScopeImplKt.a(i4);
                        BasicTextFieldKt.a(TextFieldValue.this, function1, modifier, z3, textStyle, keyboardOptions, keyboardActions, z2, i, i2, visualTransformation, function13, mutableInteractionSource2, solidColor, composableLambdaImpl, (Composer) obj2, a3, a4, i5);
                        return Unit.a;
                    }
                };
                return;
            }
            return;
        }
        if ((i5 & 16) == 0) {
        }
        if ((i3 & 196608) == 0) {
        }
        if ((i3 & 1572864) == 0) {
        }
        if ((i3 & 12582912) != 0) {
        }
        if ((i3 & 100663296) == 0) {
        }
        if ((i3 & 805306368) == 0) {
        }
        if ((i4 & 6) != 0) {
        }
        if ((i4 & 48) == 0) {
        }
        int i122 = i8;
        int i132 = i122 | 384;
        i9 = i5 & 8192;
        if (i9 == 0) {
        }
        if ((i4 & 24576) == 0) {
        }
        if ((i4 & i7) == 0) {
        }
        if (!gapComposer.N(i6 & 1, (i6 & 306783379) == 306783378 || (i10 & 74899) != 74898)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    public static final void b(final String str, final Function1 function1, final Modifier modifier, final boolean z, final TextStyle textStyle, final KeyboardOptions keyboardOptions, final KeyboardActions keyboardActions, final int i, final int i2, final VisualTransformation visualTransformation, Function1 function12, final MutableInteractionSource mutableInteractionSource, final SolidColor solidColor, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer;
        final Function1 function13;
        Function1 function14;
        int i9;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(2026950908);
        if ((i3 & 6) == 0) {
            i5 = (gapComposer2.f(str) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposer2.h(function1) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i5 |= gapComposer2.f(modifier) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposer2.g(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposer2.g(false) ? 16384 : 8192;
        }
        if ((i3 & 196608) == 0) {
            i5 |= gapComposer2.f(textStyle) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposer2.f(keyboardOptions) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposer2.f(keyboardActions) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposer2.g(false) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i6 = 196608;
            i7 = i;
            i5 |= gapComposer2.d(i7) ? 536870912 : 268435456;
        } else {
            i6 = 196608;
            i7 = i;
        }
        if ((i4 & 6) == 0) {
            i8 = i4 | (gapComposer2.d(i2) ? 4 : 2);
        } else {
            i8 = i4;
        }
        if ((i4 & 48) == 0) {
            i8 |= gapComposer2.f(visualTransformation) ? 32 : 16;
        }
        int i10 = i8 | 384;
        if ((i4 & 3072) == 0) {
            i10 |= gapComposer2.f(mutableInteractionSource) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i10 |= gapComposer2.f(solidColor) ? 16384 : 8192;
        }
        if ((i4 & i6) == 0) {
            i10 |= gapComposer2.h(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer2.N(i5 & 1, ((i5 & 306783379) == 306783378 && (74899 & i10) == 74898) ? false : true)) {
            gapComposer2.S();
            int i11 = i3 & 1;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (i11 != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                function14 = function12;
            } else {
                Object K = gapComposer2.K();
                if (K == composer$Companion$Empty$1) {
                    K = new defpackage.h(22);
                    gapComposer2.g0(K);
                }
                function14 = (Function1) K;
            }
            gapComposer2.q();
            Object K2 = gapComposer2.K();
            if (K2 == composer$Companion$Empty$1) {
                i9 = i10;
                K2 = SnapshotStateKt.g(new TextFieldValue(6, 0L, str));
                gapComposer2.g0(K2);
            } else {
                i9 = i10;
            }
            MutableState mutableState = (MutableState) K2;
            TextFieldValue textFieldValue = (TextFieldValue) mutableState.getValue();
            TextFieldValue textFieldValue2 = new TextFieldValue(new AnnotatedString(str), textFieldValue.b, textFieldValue.c);
            boolean f = gapComposer2.f(textFieldValue2);
            Object K3 = gapComposer2.K();
            if (f || K3 == composer$Companion$Empty$1) {
                K3 = new p0(5, textFieldValue2, mutableState);
                gapComposer2.g0(K3);
            }
            EffectsKt.g((Function0) K3, gapComposer2);
            boolean z2 = (i5 & 14) == 4;
            Object K4 = gapComposer2.K();
            if (z2 || K4 == composer$Companion$Empty$1) {
                K4 = SnapshotStateKt.g(str);
                gapComposer2.g0(K4);
            }
            MutableState mutableState2 = (MutableState) K4;
            ImeOptions a2 = keyboardOptions.a(false);
            boolean f2 = gapComposer2.f(mutableState2) | ((i5 & 112) == 32);
            Object K5 = gapComposer2.K();
            if (f2 || K5 == composer$Companion$Empty$1) {
                K5 = new p2(function1, mutableState, mutableState2, 2);
                gapComposer2.g0(K5);
            }
            int i12 = i9 << 9;
            gapComposer = gapComposer2;
            CoreTextFieldKt.a(textFieldValue2, (Function1) K5, modifier, textStyle, visualTransformation, function14, mutableInteractionSource, solidColor, true, i7, i2, a2, keyboardActions, z, composableLambdaImpl, gapComposer, (i5 & 896) | ((i5 >> 6) & 7168) | (i12 & 57344) | (i12 & 458752) | (3670016 & i12) | (i12 & 29360128), ((i5 >> 15) & 896) | (i5 & 7168) | (i5 & 57344) | (i9 & 458752));
            function13 = function14;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            function13 = function12;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: f4
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a3 = RecomposeScopeImplKt.a(i3 | 1);
                    int a4 = RecomposeScopeImplKt.a(i4);
                    BasicTextFieldKt.b(str, function1, modifier, z, textStyle, keyboardOptions, keyboardActions, i, i2, visualTransformation, function13, mutableInteractionSource, solidColor, composableLambdaImpl, (Composer) obj, a3, a4);
                    return Unit.a;
                }
            };
        }
    }
}
