package androidx.compose.material;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import defpackage.k8;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldTransitionScope {
    public static final TextFieldTransitionScope a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[InputPhase.values().length];
            try {
                InputPhase inputPhase = InputPhase.j;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                InputPhase inputPhase2 = InputPhase.j;
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                InputPhase inputPhase3 = InputPhase.j;
                iArr[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0148, code lost:
    
        if (r28 != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0121, code lost:
    
        if (r28 != false) goto L53;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0198 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x022e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0182  */
    /* JADX WARN: Type inference failed for: r10v2, types: [androidx.compose.material.o, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final InputPhase inputPhase, final long j, final long j2, final Function3 function3, final boolean z, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        float f;
        int ordinal;
        float f2;
        int ordinal2;
        float f3;
        int ordinal3;
        InputPhase inputPhase2;
        int[] iArr;
        long j3;
        boolean f4;
        Object K;
        InputPhase inputPhase3;
        long j4;
        InputPhase inputPhase4;
        long j5;
        boolean f5;
        Object K2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(509439888);
        if (gapComposer.d(inputPhase.ordinal())) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i7 = i | i2;
        if (gapComposer.e(j)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i8 = i7 | i3;
        if (gapComposer.e(j2)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i9 = i8 | i4;
        if (gapComposer.h(function3)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i10 = i9 | i5;
        if (gapComposer.g(z)) {
            i6 = 16384;
        } else {
            i6 = 8192;
        }
        int i11 = i10 | i6;
        if ((74899 & i11) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i11 & 1, z2)) {
            TransitionInstance e = TransitionKt.e(inputPhase, "TextFieldInputState", gapComposer, (i11 & 14) | 48);
            TransitionState transitionState = e.a;
            MutableState mutableState = e.d;
            InputPhase inputPhase5 = (InputPhase) transitionState.a();
            gapComposer.W(389927550);
            int ordinal4 = inputPhase5.ordinal();
            float f6 = 0.0f;
            if (ordinal4 != 0) {
                if (ordinal4 != 1) {
                    if (ordinal4 != 2) {
                        k8.e();
                        return;
                    }
                } else {
                    f = 0.0f;
                    gapComposer.p(false);
                    Float valueOf = Float.valueOf(f);
                    SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
                    InputPhase inputPhase6 = (InputPhase) snapshotMutableStateImpl.getValue();
                    gapComposer.W(389927550);
                    ordinal = inputPhase6.ordinal();
                    if (ordinal != 0) {
                        if (ordinal != 1) {
                            if (ordinal != 2) {
                                k8.e();
                                return;
                            }
                        } else {
                            f2 = 0.0f;
                            gapComposer.p(false);
                            Float valueOf2 = Float.valueOf(f2);
                            e.f();
                            gapComposer.W(-883519390);
                            TweenSpec c = AnimationSpecKt.c(150, 0, null, 6);
                            gapComposer.p(false);
                            TwoWayConverter twoWayConverter = VectorConvertersKt.a;
                            Transition.TransitionAnimationState c2 = TransitionKt.c(e, valueOf, valueOf2, c, twoWayConverter, gapComposer, 196608);
                            ?? obj = new Object();
                            InputPhase inputPhase7 = (InputPhase) transitionState.a();
                            gapComposer.W(1246942589);
                            ordinal2 = inputPhase7.ordinal();
                            if (ordinal2 != 0) {
                                if (ordinal2 != 1) {
                                    if (ordinal2 != 2) {
                                        k8.e();
                                        return;
                                    }
                                }
                                f3 = 0.0f;
                                gapComposer.p(false);
                                Float valueOf3 = Float.valueOf(f3);
                                InputPhase inputPhase8 = (InputPhase) snapshotMutableStateImpl.getValue();
                                gapComposer.W(1246942589);
                                ordinal3 = inputPhase8.ordinal();
                                if (ordinal3 != 0) {
                                    if (ordinal3 != 1) {
                                        if (ordinal3 != 2) {
                                            k8.e();
                                            return;
                                        }
                                    }
                                    gapComposer.p(false);
                                    Transition.TransitionAnimationState c3 = TransitionKt.c(e, valueOf3, Float.valueOf(f6), (FiniteAnimationSpec) obj.f(e.f(), gapComposer, 0), twoWayConverter, gapComposer, 196608);
                                    inputPhase2 = (InputPhase) snapshotMutableStateImpl.getValue();
                                    gapComposer.W(-2001931362);
                                    iArr = WhenMappings.a;
                                    if (iArr[inputPhase2.ordinal()] == 1) {
                                        j3 = j;
                                    } else {
                                        j3 = j2;
                                    }
                                    gapComposer.p(false);
                                    ColorSpace f7 = Color.f(j3);
                                    f4 = gapComposer.f(f7);
                                    K = gapComposer.K();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                    if (!f4 || K == composer$Companion$Empty$1) {
                                        int i12 = Color.i;
                                        K = (TwoWayConverter) ColorVectorConverterKt.a().b(f7);
                                        gapComposer.g0(K);
                                    }
                                    TwoWayConverter twoWayConverter2 = (TwoWayConverter) K;
                                    inputPhase3 = (InputPhase) transitionState.a();
                                    gapComposer.W(-2001931362);
                                    if (iArr[inputPhase3.ordinal()] == 1) {
                                        j4 = j;
                                    } else {
                                        j4 = j2;
                                    }
                                    gapComposer.p(false);
                                    Color color = new Color(j4);
                                    inputPhase4 = (InputPhase) snapshotMutableStateImpl.getValue();
                                    gapComposer.W(-2001931362);
                                    if (iArr[inputPhase4.ordinal()] == 1) {
                                        j5 = j;
                                    } else {
                                        j5 = j2;
                                    }
                                    gapComposer.p(false);
                                    Color color2 = new Color(j5);
                                    e.f();
                                    gapComposer.W(-2017811095);
                                    TweenSpec c4 = AnimationSpecKt.c(150, 0, null, 6);
                                    gapComposer.p(false);
                                    Transition.TransitionAnimationState c5 = TransitionKt.c(e, color, color2, c4, twoWayConverter2, gapComposer, 196608);
                                    int i13 = (i11 & 7168) | 384;
                                    TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$1 = (TextFieldImplKt$CommonDecorationBox$labelColor$1) function3;
                                    ColorSpace f8 = Color.f(((Color) textFieldImplKt$CommonDecorationBox$labelColor$1.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf((i13 >> 6) & 112))).a);
                                    f5 = gapComposer.f(f8);
                                    K2 = gapComposer.K();
                                    if (!f5 || K2 == composer$Companion$Empty$1) {
                                        int i14 = Color.i;
                                        K2 = (TwoWayConverter) ColorVectorConverterKt.a().b(f8);
                                        gapComposer.g0(K2);
                                    }
                                    TwoWayConverter twoWayConverter3 = (TwoWayConverter) K2;
                                    int i15 = ((((i13 << 3) & 57344) | 3072) >> 9) & 112;
                                    Object f9 = textFieldImplKt$CommonDecorationBox$labelColor$1.f(transitionState.a(), gapComposer, Integer.valueOf(i15));
                                    Object f10 = textFieldImplKt$CommonDecorationBox$labelColor$1.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf(i15));
                                    e.f();
                                    gapComposer.W(-1176639650);
                                    TweenSpec c6 = AnimationSpecKt.c(150, 0, null, 6);
                                    gapComposer.p(false);
                                    composableLambdaImpl.k(Float.valueOf(((Number) c2.getValue()).floatValue()), new Color(((Color) c5.getValue()).a), new Color(((Color) TransitionKt.c(e, f9, f10, c6, twoWayConverter3, gapComposer, 196608).getValue()).a), Float.valueOf(((Number) c3.getValue()).floatValue()), gapComposer, 24576);
                                }
                                f6 = 1.0f;
                                gapComposer.p(false);
                                Transition.TransitionAnimationState c32 = TransitionKt.c(e, valueOf3, Float.valueOf(f6), (FiniteAnimationSpec) obj.f(e.f(), gapComposer, 0), twoWayConverter, gapComposer, 196608);
                                inputPhase2 = (InputPhase) snapshotMutableStateImpl.getValue();
                                gapComposer.W(-2001931362);
                                iArr = WhenMappings.a;
                                if (iArr[inputPhase2.ordinal()] == 1) {
                                }
                                gapComposer.p(false);
                                ColorSpace f72 = Color.f(j3);
                                f4 = gapComposer.f(f72);
                                K = gapComposer.K();
                                Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                                if (!f4) {
                                }
                                int i122 = Color.i;
                                K = (TwoWayConverter) ColorVectorConverterKt.a().b(f72);
                                gapComposer.g0(K);
                                TwoWayConverter twoWayConverter22 = (TwoWayConverter) K;
                                inputPhase3 = (InputPhase) transitionState.a();
                                gapComposer.W(-2001931362);
                                if (iArr[inputPhase3.ordinal()] == 1) {
                                }
                                gapComposer.p(false);
                                Color color3 = new Color(j4);
                                inputPhase4 = (InputPhase) snapshotMutableStateImpl.getValue();
                                gapComposer.W(-2001931362);
                                if (iArr[inputPhase4.ordinal()] == 1) {
                                }
                                gapComposer.p(false);
                                Color color22 = new Color(j5);
                                e.f();
                                gapComposer.W(-2017811095);
                                TweenSpec c42 = AnimationSpecKt.c(150, 0, null, 6);
                                gapComposer.p(false);
                                Transition.TransitionAnimationState c52 = TransitionKt.c(e, color3, color22, c42, twoWayConverter22, gapComposer, 196608);
                                int i132 = (i11 & 7168) | 384;
                                TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$12 = (TextFieldImplKt$CommonDecorationBox$labelColor$1) function3;
                                ColorSpace f82 = Color.f(((Color) textFieldImplKt$CommonDecorationBox$labelColor$12.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf((i132 >> 6) & 112))).a);
                                f5 = gapComposer.f(f82);
                                K2 = gapComposer.K();
                                if (!f5) {
                                }
                                int i142 = Color.i;
                                K2 = (TwoWayConverter) ColorVectorConverterKt.a().b(f82);
                                gapComposer.g0(K2);
                                TwoWayConverter twoWayConverter32 = (TwoWayConverter) K2;
                                int i152 = ((((i132 << 3) & 57344) | 3072) >> 9) & 112;
                                Object f92 = textFieldImplKt$CommonDecorationBox$labelColor$12.f(transitionState.a(), gapComposer, Integer.valueOf(i152));
                                Object f102 = textFieldImplKt$CommonDecorationBox$labelColor$12.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf(i152));
                                e.f();
                                gapComposer.W(-1176639650);
                                TweenSpec c62 = AnimationSpecKt.c(150, 0, null, 6);
                                gapComposer.p(false);
                                composableLambdaImpl.k(Float.valueOf(((Number) c2.getValue()).floatValue()), new Color(((Color) c52.getValue()).a), new Color(((Color) TransitionKt.c(e, f92, f102, c62, twoWayConverter32, gapComposer, 196608).getValue()).a), Float.valueOf(((Number) c32.getValue()).floatValue()), gapComposer, 24576);
                            }
                            f3 = 1.0f;
                            gapComposer.p(false);
                            Float valueOf32 = Float.valueOf(f3);
                            InputPhase inputPhase82 = (InputPhase) snapshotMutableStateImpl.getValue();
                            gapComposer.W(1246942589);
                            ordinal3 = inputPhase82.ordinal();
                            if (ordinal3 != 0) {
                            }
                            f6 = 1.0f;
                            gapComposer.p(false);
                            Transition.TransitionAnimationState c322 = TransitionKt.c(e, valueOf32, Float.valueOf(f6), (FiniteAnimationSpec) obj.f(e.f(), gapComposer, 0), twoWayConverter, gapComposer, 196608);
                            inputPhase2 = (InputPhase) snapshotMutableStateImpl.getValue();
                            gapComposer.W(-2001931362);
                            iArr = WhenMappings.a;
                            if (iArr[inputPhase2.ordinal()] == 1) {
                            }
                            gapComposer.p(false);
                            ColorSpace f722 = Color.f(j3);
                            f4 = gapComposer.f(f722);
                            K = gapComposer.K();
                            Composer$Companion$Empty$1 composer$Companion$Empty$122 = Composer.Companion.a;
                            if (!f4) {
                            }
                            int i1222 = Color.i;
                            K = (TwoWayConverter) ColorVectorConverterKt.a().b(f722);
                            gapComposer.g0(K);
                            TwoWayConverter twoWayConverter222 = (TwoWayConverter) K;
                            inputPhase3 = (InputPhase) transitionState.a();
                            gapComposer.W(-2001931362);
                            if (iArr[inputPhase3.ordinal()] == 1) {
                            }
                            gapComposer.p(false);
                            Color color32 = new Color(j4);
                            inputPhase4 = (InputPhase) snapshotMutableStateImpl.getValue();
                            gapComposer.W(-2001931362);
                            if (iArr[inputPhase4.ordinal()] == 1) {
                            }
                            gapComposer.p(false);
                            Color color222 = new Color(j5);
                            e.f();
                            gapComposer.W(-2017811095);
                            TweenSpec c422 = AnimationSpecKt.c(150, 0, null, 6);
                            gapComposer.p(false);
                            Transition.TransitionAnimationState c522 = TransitionKt.c(e, color32, color222, c422, twoWayConverter222, gapComposer, 196608);
                            int i1322 = (i11 & 7168) | 384;
                            TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$122 = (TextFieldImplKt$CommonDecorationBox$labelColor$1) function3;
                            ColorSpace f822 = Color.f(((Color) textFieldImplKt$CommonDecorationBox$labelColor$122.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf((i1322 >> 6) & 112))).a);
                            f5 = gapComposer.f(f822);
                            K2 = gapComposer.K();
                            if (!f5) {
                            }
                            int i1422 = Color.i;
                            K2 = (TwoWayConverter) ColorVectorConverterKt.a().b(f822);
                            gapComposer.g0(K2);
                            TwoWayConverter twoWayConverter322 = (TwoWayConverter) K2;
                            int i1522 = ((((i1322 << 3) & 57344) | 3072) >> 9) & 112;
                            Object f922 = textFieldImplKt$CommonDecorationBox$labelColor$122.f(transitionState.a(), gapComposer, Integer.valueOf(i1522));
                            Object f1022 = textFieldImplKt$CommonDecorationBox$labelColor$122.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf(i1522));
                            e.f();
                            gapComposer.W(-1176639650);
                            TweenSpec c622 = AnimationSpecKt.c(150, 0, null, 6);
                            gapComposer.p(false);
                            composableLambdaImpl.k(Float.valueOf(((Number) c2.getValue()).floatValue()), new Color(((Color) c522.getValue()).a), new Color(((Color) TransitionKt.c(e, f922, f1022, c622, twoWayConverter322, gapComposer, 196608).getValue()).a), Float.valueOf(((Number) c322.getValue()).floatValue()), gapComposer, 24576);
                        }
                    }
                    f2 = 1.0f;
                    gapComposer.p(false);
                    Float valueOf22 = Float.valueOf(f2);
                    e.f();
                    gapComposer.W(-883519390);
                    TweenSpec c7 = AnimationSpecKt.c(150, 0, null, 6);
                    gapComposer.p(false);
                    TwoWayConverter twoWayConverter4 = VectorConvertersKt.a;
                    Transition.TransitionAnimationState c22 = TransitionKt.c(e, valueOf, valueOf22, c7, twoWayConverter4, gapComposer, 196608);
                    ?? obj2 = new Object();
                    InputPhase inputPhase72 = (InputPhase) transitionState.a();
                    gapComposer.W(1246942589);
                    ordinal2 = inputPhase72.ordinal();
                    if (ordinal2 != 0) {
                    }
                    f3 = 1.0f;
                    gapComposer.p(false);
                    Float valueOf322 = Float.valueOf(f3);
                    InputPhase inputPhase822 = (InputPhase) snapshotMutableStateImpl.getValue();
                    gapComposer.W(1246942589);
                    ordinal3 = inputPhase822.ordinal();
                    if (ordinal3 != 0) {
                    }
                    f6 = 1.0f;
                    gapComposer.p(false);
                    Transition.TransitionAnimationState c3222 = TransitionKt.c(e, valueOf322, Float.valueOf(f6), (FiniteAnimationSpec) obj2.f(e.f(), gapComposer, 0), twoWayConverter4, gapComposer, 196608);
                    inputPhase2 = (InputPhase) snapshotMutableStateImpl.getValue();
                    gapComposer.W(-2001931362);
                    iArr = WhenMappings.a;
                    if (iArr[inputPhase2.ordinal()] == 1) {
                    }
                    gapComposer.p(false);
                    ColorSpace f7222 = Color.f(j3);
                    f4 = gapComposer.f(f7222);
                    K = gapComposer.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1222 = Composer.Companion.a;
                    if (!f4) {
                    }
                    int i12222 = Color.i;
                    K = (TwoWayConverter) ColorVectorConverterKt.a().b(f7222);
                    gapComposer.g0(K);
                    TwoWayConverter twoWayConverter2222 = (TwoWayConverter) K;
                    inputPhase3 = (InputPhase) transitionState.a();
                    gapComposer.W(-2001931362);
                    if (iArr[inputPhase3.ordinal()] == 1) {
                    }
                    gapComposer.p(false);
                    Color color322 = new Color(j4);
                    inputPhase4 = (InputPhase) snapshotMutableStateImpl.getValue();
                    gapComposer.W(-2001931362);
                    if (iArr[inputPhase4.ordinal()] == 1) {
                    }
                    gapComposer.p(false);
                    Color color2222 = new Color(j5);
                    e.f();
                    gapComposer.W(-2017811095);
                    TweenSpec c4222 = AnimationSpecKt.c(150, 0, null, 6);
                    gapComposer.p(false);
                    Transition.TransitionAnimationState c5222 = TransitionKt.c(e, color322, color2222, c4222, twoWayConverter2222, gapComposer, 196608);
                    int i13222 = (i11 & 7168) | 384;
                    TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$1222 = (TextFieldImplKt$CommonDecorationBox$labelColor$1) function3;
                    ColorSpace f8222 = Color.f(((Color) textFieldImplKt$CommonDecorationBox$labelColor$1222.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf((i13222 >> 6) & 112))).a);
                    f5 = gapComposer.f(f8222);
                    K2 = gapComposer.K();
                    if (!f5) {
                    }
                    int i14222 = Color.i;
                    K2 = (TwoWayConverter) ColorVectorConverterKt.a().b(f8222);
                    gapComposer.g0(K2);
                    TwoWayConverter twoWayConverter3222 = (TwoWayConverter) K2;
                    int i15222 = ((((i13222 << 3) & 57344) | 3072) >> 9) & 112;
                    Object f9222 = textFieldImplKt$CommonDecorationBox$labelColor$1222.f(transitionState.a(), gapComposer, Integer.valueOf(i15222));
                    Object f10222 = textFieldImplKt$CommonDecorationBox$labelColor$1222.f(snapshotMutableStateImpl.getValue(), gapComposer, Integer.valueOf(i15222));
                    e.f();
                    gapComposer.W(-1176639650);
                    TweenSpec c6222 = AnimationSpecKt.c(150, 0, null, 6);
                    gapComposer.p(false);
                    composableLambdaImpl.k(Float.valueOf(((Number) c22.getValue()).floatValue()), new Color(((Color) c5222.getValue()).a), new Color(((Color) TransitionKt.c(e, f9222, f10222, c6222, twoWayConverter3222, gapComposer, 196608).getValue()).a), Float.valueOf(((Number) c3222.getValue()).floatValue()), gapComposer, 24576);
                }
            }
            f = 1.0f;
            gapComposer.p(false);
            Float valueOf4 = Float.valueOf(f);
            SnapshotMutableStateImpl snapshotMutableStateImpl2 = (SnapshotMutableStateImpl) mutableState;
            InputPhase inputPhase62 = (InputPhase) snapshotMutableStateImpl2.getValue();
            gapComposer.W(389927550);
            ordinal = inputPhase62.ordinal();
            if (ordinal != 0) {
            }
            f2 = 1.0f;
            gapComposer.p(false);
            Float valueOf222 = Float.valueOf(f2);
            e.f();
            gapComposer.W(-883519390);
            TweenSpec c72 = AnimationSpecKt.c(150, 0, null, 6);
            gapComposer.p(false);
            TwoWayConverter twoWayConverter42 = VectorConvertersKt.a;
            Transition.TransitionAnimationState c222 = TransitionKt.c(e, valueOf4, valueOf222, c72, twoWayConverter42, gapComposer, 196608);
            ?? obj22 = new Object();
            InputPhase inputPhase722 = (InputPhase) transitionState.a();
            gapComposer.W(1246942589);
            ordinal2 = inputPhase722.ordinal();
            if (ordinal2 != 0) {
            }
            f3 = 1.0f;
            gapComposer.p(false);
            Float valueOf3222 = Float.valueOf(f3);
            InputPhase inputPhase8222 = (InputPhase) snapshotMutableStateImpl2.getValue();
            gapComposer.W(1246942589);
            ordinal3 = inputPhase8222.ordinal();
            if (ordinal3 != 0) {
            }
            f6 = 1.0f;
            gapComposer.p(false);
            Transition.TransitionAnimationState c32222 = TransitionKt.c(e, valueOf3222, Float.valueOf(f6), (FiniteAnimationSpec) obj22.f(e.f(), gapComposer, 0), twoWayConverter42, gapComposer, 196608);
            inputPhase2 = (InputPhase) snapshotMutableStateImpl2.getValue();
            gapComposer.W(-2001931362);
            iArr = WhenMappings.a;
            if (iArr[inputPhase2.ordinal()] == 1) {
            }
            gapComposer.p(false);
            ColorSpace f72222 = Color.f(j3);
            f4 = gapComposer.f(f72222);
            K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$12222 = Composer.Companion.a;
            if (!f4) {
            }
            int i122222 = Color.i;
            K = (TwoWayConverter) ColorVectorConverterKt.a().b(f72222);
            gapComposer.g0(K);
            TwoWayConverter twoWayConverter22222 = (TwoWayConverter) K;
            inputPhase3 = (InputPhase) transitionState.a();
            gapComposer.W(-2001931362);
            if (iArr[inputPhase3.ordinal()] == 1) {
            }
            gapComposer.p(false);
            Color color3222 = new Color(j4);
            inputPhase4 = (InputPhase) snapshotMutableStateImpl2.getValue();
            gapComposer.W(-2001931362);
            if (iArr[inputPhase4.ordinal()] == 1) {
            }
            gapComposer.p(false);
            Color color22222 = new Color(j5);
            e.f();
            gapComposer.W(-2017811095);
            TweenSpec c42222 = AnimationSpecKt.c(150, 0, null, 6);
            gapComposer.p(false);
            Transition.TransitionAnimationState c52222 = TransitionKt.c(e, color3222, color22222, c42222, twoWayConverter22222, gapComposer, 196608);
            int i132222 = (i11 & 7168) | 384;
            TextFieldImplKt$CommonDecorationBox$labelColor$1 textFieldImplKt$CommonDecorationBox$labelColor$12222 = (TextFieldImplKt$CommonDecorationBox$labelColor$1) function3;
            ColorSpace f82222 = Color.f(((Color) textFieldImplKt$CommonDecorationBox$labelColor$12222.f(snapshotMutableStateImpl2.getValue(), gapComposer, Integer.valueOf((i132222 >> 6) & 112))).a);
            f5 = gapComposer.f(f82222);
            K2 = gapComposer.K();
            if (!f5) {
            }
            int i142222 = Color.i;
            K2 = (TwoWayConverter) ColorVectorConverterKt.a().b(f82222);
            gapComposer.g0(K2);
            TwoWayConverter twoWayConverter32222 = (TwoWayConverter) K2;
            int i152222 = ((((i132222 << 3) & 57344) | 3072) >> 9) & 112;
            Object f92222 = textFieldImplKt$CommonDecorationBox$labelColor$12222.f(transitionState.a(), gapComposer, Integer.valueOf(i152222));
            Object f102222 = textFieldImplKt$CommonDecorationBox$labelColor$12222.f(snapshotMutableStateImpl2.getValue(), gapComposer, Integer.valueOf(i152222));
            e.f();
            gapComposer.W(-1176639650);
            TweenSpec c62222 = AnimationSpecKt.c(150, 0, null, 6);
            gapComposer.p(false);
            composableLambdaImpl.k(Float.valueOf(((Number) c222.getValue()).floatValue()), new Color(((Color) c52222.getValue()).a), new Color(((Color) TransitionKt.c(e, f92222, f102222, c62222, twoWayConverter32222, gapComposer, 196608).getValue()).a), Float.valueOf(((Number) c32222.getValue()).floatValue()), gapComposer, 24576);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(inputPhase, j, j2, function3, z, composableLambdaImpl, i) { // from class: androidx.compose.material.p
                public final /* synthetic */ InputPhase k;
                public final /* synthetic */ long l;
                public final /* synthetic */ long m;
                public final /* synthetic */ Function3 n;
                public final /* synthetic */ boolean o;
                public final /* synthetic */ ComposableLambdaImpl p;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int a2 = RecomposeScopeImplKt.a(1769473);
                    TextFieldTransitionScope.this.a(this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj3, a2);
                    return Unit.a;
                }
            };
        }
    }
}
