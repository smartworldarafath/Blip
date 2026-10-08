package androidx.compose.material;

import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.GestureCancellationException;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.SliderColors;
import androidx.compose.material.SliderKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.a8;
import defpackage.q;
import defpackage.rf;
import defpackage.u2;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SliderKt {
    public static final Modifier a = SizeKt.f(SizeKt.o(), Float.NaN, 48.0f);
    public static final TweenSpec b = new TweenSpec(100, (Easing) null, 6);

    public static final void a(final Function1 function1, final ClosedFloatingPointRange closedFloatingPointRange, final ClosedFloatingPointRange closedFloatingPointRange2, final MutableState mutableState, final float f, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-743965752);
        if (gapComposer.h(function1)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i | i2;
        if (gapComposer.f(closedFloatingPointRange)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        if (gapComposer.f(closedFloatingPointRange2)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4;
        if (gapComposer.c(f)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i9 = i8 | i5;
        boolean z5 = false;
        if ((i9 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            if ((i9 & 112) == 32) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((i9 & 14) == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z6 = z3 | z2;
            if ((57344 & i9) == 16384) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z7 = z6 | z4;
            if ((i9 & 896) == 256) {
                z5 = true;
            }
            boolean z8 = z7 | z5;
            Object K = gapComposer.K();
            if (z8 || K == Composer.Companion.a) {
                Function0 function0 = new Function0() { // from class: tf
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        Modifier modifier = SliderKt.a;
                        ClosedFloatingPointRange closedFloatingPointRange3 = ClosedFloatingPointRange.this;
                        float floatValue = (closedFloatingPointRange3.b().floatValue() - closedFloatingPointRange3.c().floatValue()) / 1000.0f;
                        float floatValue2 = ((Number) function1.b(Float.valueOf(f))).floatValue();
                        MutableState mutableState2 = mutableState;
                        if (Math.abs(floatValue2 - ((Number) mutableState2.getValue()).floatValue()) > floatValue) {
                            if (closedFloatingPointRange2.d((Comparable) mutableState2.getValue())) {
                                mutableState2.setValue(Float.valueOf(floatValue2));
                            }
                        }
                        return Unit.a;
                    }
                };
                gapComposer.g0(function0);
                K = function0;
            }
            EffectsKt.g((Function0) K, gapComposer);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(closedFloatingPointRange, closedFloatingPointRange2, mutableState, f, i) { // from class: uf
                public final /* synthetic */ ClosedFloatingPointRange k;
                public final /* synthetic */ ClosedFloatingPointRange l;
                public final /* synthetic */ MutableState m;
                public final /* synthetic */ float n;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(3073);
                    SliderKt.a(Function1.this, this.k, this.l, this.m, this.n, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(final float f, final Function1 function1, final Modifier modifier, boolean z, final ClosedFloatingPointRange closedFloatingPointRange, final Function0 function0, final SliderColors sliderColors, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        GapComposer gapComposer;
        final boolean z3;
        final boolean z4;
        final boolean z5;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1962335196);
        if (gapComposer2.c(f)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i8 = i | i2;
        if (gapComposer2.h(function1)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i9 = i8 | i3;
        if (gapComposer2.f(modifier)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i10 = i9 | i4 | 3072;
        if (gapComposer2.f(closedFloatingPointRange)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i11 = i10 | i5 | 196608;
        if (gapComposer2.h(function0)) {
            i6 = 1048576;
        } else {
            i6 = 524288;
        }
        int i12 = i11 | i6 | 12582912;
        if (gapComposer2.f(sliderColors)) {
            i7 = 67108864;
        } else {
            i7 = 33554432;
        }
        int i13 = i12 | i7;
        if ((38347923 & i13) != 38347922) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer2.N(i13 & 1, z2)) {
            gapComposer2.S();
            if ((i & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                z4 = z;
            } else {
                z4 = true;
            }
            gapComposer2.q();
            gapComposer2.W(-1127489737);
            Object K = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = InteractionSourceKt.a();
                gapComposer2.g0(K);
            }
            final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K;
            gapComposer2.p(false);
            final MutableState k = SnapshotStateKt.k(function1, gapComposer2);
            final MutableState k2 = SnapshotStateKt.k(function0, gapComposer2);
            Object K2 = gapComposer2.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = EmptyList.j;
                gapComposer2.g0(K2);
            }
            final List list = (List) K2;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
            Modifier i14 = SizeKt.i(modifier.l(MinimumInteractiveModifier.b), 20.0f, 20.0f, 0.0f, 0.0f, 12);
            final float c = RangesKt.c(f, closedFloatingPointRange.c().floatValue(), closedFloatingPointRange.b().floatValue());
            Modifier a2 = FocusableKt.a(SemanticsModifierKt.a(SemanticsModifierKt.a(i14, false, new Function1() { // from class: sf
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                    Modifier modifier2 = SliderKt.a;
                    Unit unit = Unit.a;
                    if (!z4) {
                        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                        semanticsPropertyReceiver.b(SemanticsProperties.j, unit);
                    }
                    yf yfVar = new yf(closedFloatingPointRange, c, function1, function0);
                    KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
                    semanticsPropertyReceiver.b(SemanticsActions.i, new AccessibilityAction(null, yfVar));
                    return unit;
                }
            }), true, new a8(f, closedFloatingPointRange, 1)), z4, mutableInteractionSource);
            if (gapComposer2.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                z5 = true;
            } else {
                z5 = false;
            }
            final boolean z6 = z4;
            gapComposer = gapComposer2;
            BoxWithConstraintsKt.a(KeyInputModifierKt.a(a2, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.material.SliderKt$slideOnKeyEvents$2
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    android.view.KeyEvent keyEvent = ((KeyEvent) obj).a;
                    if (!z6) {
                        return Boolean.FALSE;
                    }
                    int b2 = KeyEvent_androidKt.b(keyEvent);
                    boolean z7 = false;
                    if (b2 == 2) {
                        ClosedFloatingPointRange closedFloatingPointRange2 = closedFloatingPointRange;
                        float abs = Math.abs(closedFloatingPointRange2.b().floatValue() - closedFloatingPointRange2.c().floatValue()) / 100.0f;
                        long a3 = Key_androidKt.a(keyEvent.getKeyCode());
                        boolean a4 = Key.a(a3, Key.d);
                        float f2 = f;
                        MutableState mutableState = k;
                        if (a4) {
                            ((Function1) mutableState.getValue()).b(RangesKt.f(Float.valueOf(f2 + abs), closedFloatingPointRange2));
                        } else if (Key.a(a3, Key.e)) {
                            ((Function1) mutableState.getValue()).b(RangesKt.f(Float.valueOf(f2 - abs), closedFloatingPointRange2));
                        } else {
                            boolean a5 = Key.a(a3, Key.g);
                            int i15 = -1;
                            boolean z8 = z5;
                            if (a5) {
                                if (!z8) {
                                    i15 = 1;
                                }
                                ((Function1) mutableState.getValue()).b(RangesKt.f(Float.valueOf((i15 * abs) + f2), closedFloatingPointRange2));
                            } else if (Key.a(a3, Key.f)) {
                                if (!z8) {
                                    i15 = 1;
                                }
                                ((Function1) mutableState.getValue()).b(RangesKt.f(Float.valueOf(f2 - (i15 * abs)), closedFloatingPointRange2));
                            } else if (Key.a(a3, Key.v)) {
                                ((Function1) mutableState.getValue()).b(closedFloatingPointRange2.c());
                            } else if (Key.a(a3, Key.w)) {
                                ((Function1) mutableState.getValue()).b(closedFloatingPointRange2.b());
                            } else if (Key.a(a3, Key.C)) {
                                ((Function1) mutableState.getValue()).b(RangesKt.f(Float.valueOf(f2 - (RangesKt.d(10, 1, 10) * abs)), closedFloatingPointRange2));
                            } else {
                                if (Key.a(a3, Key.D)) {
                                    ((Function1) mutableState.getValue()).b(RangesKt.f(Float.valueOf((RangesKt.d(10, 1, 10) * abs) + f2), closedFloatingPointRange2));
                                }
                                return Boolean.valueOf(z7);
                            }
                        }
                        z7 = true;
                        return Boolean.valueOf(z7);
                    }
                    if (b2 == 1) {
                        long a6 = Key_androidKt.a(keyEvent.getKeyCode());
                        if (Key.a(a6, Key.d) || Key.a(a6, Key.e) || Key.a(a6, Key.g) || Key.a(a6, Key.f) || Key.a(a6, Key.v) || Key.a(a6, Key.w) || Key.a(a6, Key.C) || Key.a(a6, Key.D)) {
                            Function0 function02 = (Function0) k2.getValue();
                            if (function02 != null) {
                                function02.a();
                            }
                            z7 = true;
                        }
                    }
                    return Boolean.valueOf(z7);
                }
            }), null, ComposableLambdaKt.b(2085116814, new Function3() { // from class: androidx.compose.material.e
                /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
                /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z7;
                    final boolean z8;
                    final MutableFloatState mutableFloatState;
                    final SliderDraggableState sliderDraggableState;
                    Object obj4;
                    Object obj5;
                    final MutableFloatState mutableFloatState2;
                    float f2;
                    float f3;
                    float f4;
                    int i15;
                    BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    Modifier modifier2 = SliderKt.a;
                    if ((intValue & 6) == 0) {
                        if (((GapComposer) composer2).f(boxWithConstraintsScope)) {
                            i15 = 4;
                        } else {
                            i15 = 2;
                        }
                        intValue |= i15;
                    }
                    if ((intValue & 19) != 18) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.N(intValue & 1, z7)) {
                        if (gapComposer3.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        final float h = Constraints.h(boxWithConstraintsScope.a());
                        final ?? obj6 = new Object();
                        final ?? obj7 = new Object();
                        Density density = (Density) gapComposer3.j(CompositionLocalsKt.h);
                        obj6.j = Math.max(h - density.i0(10.0f), 0.0f);
                        obj7.j = Math.min(density.i0(10.0f), obj6.j);
                        Object K3 = gapComposer3.K();
                        Object obj8 = Composer.Companion.a;
                        if (K3 == obj8) {
                            K3 = EffectsKt.h(gapComposer3);
                            gapComposer3.g0(K3);
                        }
                        final CoroutineScope coroutineScope = (CoroutineScope) K3;
                        Object K4 = gapComposer3.K();
                        ClosedFloatingPointRange closedFloatingPointRange2 = ClosedFloatingPointRange.this;
                        float f5 = f;
                        if (K4 == obj8) {
                            float floatValue = closedFloatingPointRange2.c().floatValue();
                            float floatValue2 = closedFloatingPointRange2.b().floatValue();
                            float f6 = obj7.j;
                            float f7 = obj6.j;
                            float f8 = floatValue2 - floatValue;
                            if (f8 == 0.0f) {
                                f4 = 0.0f;
                            } else {
                                f4 = (f5 - floatValue) / f8;
                            }
                            if (f4 < 0.0f) {
                                f4 = 0.0f;
                            }
                            if (f4 > 1.0f) {
                                f4 = 1.0f;
                            }
                            K4 = PrimitiveSnapshotStateKt.a(MathHelpersKt.b(f6, f7, f4));
                            gapComposer3.g0(K4);
                        }
                        MutableFloatState mutableFloatState3 = (MutableFloatState) K4;
                        Object K5 = gapComposer3.K();
                        if (K5 == obj8) {
                            K5 = PrimitiveSnapshotStateKt.a(0.0f);
                            gapComposer3.g0(K5);
                        }
                        MutableFloatState mutableFloatState4 = (MutableFloatState) K5;
                        boolean c2 = gapComposer3.c(obj7.j) | gapComposer3.c(obj6.j) | gapComposer3.f(closedFloatingPointRange2);
                        Object K6 = gapComposer3.K();
                        if (!c2 && K6 != obj8) {
                            mutableFloatState = mutableFloatState4;
                        } else {
                            mutableFloatState = mutableFloatState4;
                            Object sliderDraggableState2 = new SliderDraggableState(new rf(mutableFloatState3, mutableFloatState4, obj7, obj6, k, closedFloatingPointRange2));
                            gapComposer3.g0(sliderDraggableState2);
                            K6 = sliderDraggableState2;
                        }
                        SliderDraggableState sliderDraggableState3 = (SliderDraggableState) K6;
                        boolean f9 = gapComposer3.f(closedFloatingPointRange2) | gapComposer3.c(obj7.j) | gapComposer3.c(obj6.j);
                        Object K7 = gapComposer3.K();
                        if (f9 || K7 == obj8) {
                            K7 = new SliderKt$Slider$2$2$1(closedFloatingPointRange2, obj7, obj6);
                            gapComposer3.g0(K7);
                        }
                        SliderKt.a((Function1) ((KFunction) K7), closedFloatingPointRange2, RangesKt.g(obj7.j, obj6.j), mutableFloatState3, f5, gapComposer3, 3072);
                        final List list2 = list;
                        boolean h2 = gapComposer3.h(list2) | gapComposer3.c(obj7.j) | gapComposer3.c(obj6.j) | gapComposer3.h(coroutineScope) | gapComposer3.h(sliderDraggableState3);
                        final Function0 function02 = function0;
                        boolean f10 = h2 | gapComposer3.f(function02);
                        Object K8 = gapComposer3.K();
                        if (f10 || K8 == obj8) {
                            sliderDraggableState = sliderDraggableState3;
                            obj5 = obj8;
                            mutableFloatState2 = mutableFloatState3;
                            obj4 = new Function1() { // from class: androidx.compose.material.f
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj9) {
                                    Object obj10;
                                    float f11;
                                    float floatValue3 = ((Float) obj9).floatValue();
                                    Modifier modifier3 = SliderKt.a;
                                    float j = ((SnapshotMutableFloatStateImpl) MutableFloatState.this).j();
                                    float f12 = obj7.j;
                                    float f13 = obj6.j;
                                    List list3 = list2;
                                    if (list3.isEmpty()) {
                                        obj10 = null;
                                    } else {
                                        obj10 = list3.get(0);
                                        float abs = Math.abs(MathHelpersKt.b(f12, f13, ((Number) obj10).floatValue()) - j);
                                        int i16 = 1;
                                        int size = list3.size() - 1;
                                        if (1 <= size) {
                                            while (true) {
                                                Object obj11 = list3.get(i16);
                                                float abs2 = Math.abs(MathHelpersKt.b(f12, f13, ((Number) obj11).floatValue()) - j);
                                                if (Float.compare(abs, abs2) > 0) {
                                                    obj10 = obj11;
                                                    abs = abs2;
                                                }
                                                if (i16 == size) {
                                                    break;
                                                }
                                                i16++;
                                            }
                                        }
                                    }
                                    Float f14 = (Float) obj10;
                                    if (f14 != null) {
                                        f11 = MathHelpersKt.b(f12, f13, f14.floatValue());
                                    } else {
                                        f11 = j;
                                    }
                                    SliderDraggableState sliderDraggableState4 = sliderDraggableState;
                                    Function0 function03 = function02;
                                    if (j == f11) {
                                        if (!((Boolean) ((SnapshotMutableStateImpl) sliderDraggableState4.b).getValue()).booleanValue() && function03 != null) {
                                            function03.a();
                                        }
                                    } else {
                                        BuildersKt.c(coroutineScope, null, null, new SliderKt$Slider$2$gestureEndAction$1$1$1(sliderDraggableState4, j, f11, floatValue3, function03, null), 3);
                                    }
                                    return Unit.a;
                                }
                            };
                            gapComposer3.g0(obj4);
                        } else {
                            sliderDraggableState = sliderDraggableState3;
                            obj4 = K8;
                            obj5 = obj8;
                            mutableFloatState2 = mutableFloatState3;
                        }
                        final MutableState k3 = SnapshotStateKt.k((Function1) obj4, gapComposer3);
                        final boolean z9 = z6;
                        final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        final MutableFloatState mutableFloatState5 = mutableFloatState2;
                        Function3 function3 = new Function3() { // from class: androidx.compose.material.g
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj9, Object obj10, Object obj11) {
                                Modifier modifier3 = (Modifier) obj9;
                                ((Integer) obj11).getClass();
                                Modifier modifier4 = SliderKt.a;
                                GapComposer gapComposer4 = (GapComposer) ((Composer) obj10);
                                gapComposer4.W(1945228890);
                                if (z9) {
                                    gapComposer4.W(-1679801122);
                                    Object K9 = gapComposer4.K();
                                    Object obj12 = Composer.Companion.a;
                                    if (K9 == obj12) {
                                        K9 = EffectsKt.h(gapComposer4);
                                        gapComposer4.g0(K9);
                                    }
                                    final CoroutineScope coroutineScope2 = (CoroutineScope) K9;
                                    final float f11 = h;
                                    Float valueOf = Float.valueOf(f11);
                                    final boolean z10 = z8;
                                    Boolean valueOf2 = Boolean.valueOf(z10);
                                    final DraggableState draggableState = sliderDraggableState;
                                    Object[] objArr = {draggableState, mutableInteractionSource2, valueOf, valueOf2};
                                    boolean g = gapComposer4.g(z10) | gapComposer4.c(f11);
                                    final MutableState mutableState = mutableFloatState;
                                    boolean f12 = g | gapComposer4.f(mutableState);
                                    final State state = mutableFloatState5;
                                    boolean f13 = f12 | gapComposer4.f(state) | gapComposer4.h(coroutineScope2) | gapComposer4.h(draggableState);
                                    final MutableState mutableState2 = k3;
                                    boolean f14 = gapComposer4.f(mutableState2) | f13;
                                    Object K10 = gapComposer4.K();
                                    if (f14 || K10 == obj12) {
                                        Object obj13 = new PointerInputEventHandler() { // from class: androidx.compose.material.SliderKt$sliderTapModifier$2$1$1

                                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                                            @DebugMetadata(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$1", f = "Slider.kt", l = {1009}, m = "invokeSuspend", v = 1)
                                            /* renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$1, reason: invalid class name */
                                            /* loaded from: classes.dex */
                                            final class AnonymousClass1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
                                                public int n;
                                                public /* synthetic */ PressGestureScope o;
                                                public /* synthetic */ long p;
                                                public final /* synthetic */ boolean q;
                                                public final /* synthetic */ float r;
                                                public final /* synthetic */ MutableState s;
                                                public final /* synthetic */ State t;

                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                public AnonymousClass1(boolean z, float f, MutableState mutableState, State state, Continuation continuation) {
                                                    super(3, continuation);
                                                    this.q = z;
                                                    this.r = f;
                                                    this.s = mutableState;
                                                    this.t = state;
                                                }

                                                @Override // kotlin.jvm.functions.Function3
                                                public final Object f(Object obj, Object obj2, Object obj3) {
                                                    long j = ((Offset) obj2).a;
                                                    MutableState mutableState = this.s;
                                                    State state = this.t;
                                                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.q, this.r, mutableState, state, (Continuation) obj3);
                                                    anonymousClass1.o = (PressGestureScope) obj;
                                                    anonymousClass1.p = j;
                                                    return anonymousClass1.v(Unit.a);
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Object v(Object obj) {
                                                    float intBitsToFloat;
                                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                                    int i = this.n;
                                                    MutableState mutableState = this.s;
                                                    try {
                                                        if (i != 0) {
                                                            if (i == 1) {
                                                                ResultKt.b(obj);
                                                            } else {
                                                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                                                return null;
                                                            }
                                                        } else {
                                                            ResultKt.b(obj);
                                                            PressGestureScope pressGestureScope = this.o;
                                                            long j = this.p;
                                                            if (this.q) {
                                                                intBitsToFloat = this.r - Float.intBitsToFloat((int) (j >> 32));
                                                            } else {
                                                                intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
                                                            }
                                                            mutableState.setValue(new Float(intBitsToFloat - ((Number) this.t.getValue()).floatValue()));
                                                            this.n = 1;
                                                            if (((PressGestureScopeImpl) pressGestureScope).a(this) == coroutineSingletons) {
                                                                return coroutineSingletons;
                                                            }
                                                        }
                                                    } catch (GestureCancellationException unused) {
                                                        mutableState.setValue(new Float(0.0f));
                                                    }
                                                    return Unit.a;
                                                }
                                            }

                                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(z10, f11, mutableState, state, null);
                                                final CoroutineScope coroutineScope3 = coroutineScope2;
                                                final DraggableState draggableState2 = draggableState;
                                                final MutableState mutableState3 = mutableState2;
                                                Object e = TapGestureDetectorKt.e(pointerInputScope, anonymousClass1, new Function1() { // from class: androidx.compose.material.h
                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object b(Object obj14) {
                                                        BuildersKt.c(CoroutineScope.this, null, null, new SliderKt$sliderTapModifier$2$1$1$2$1(draggableState2, mutableState3, null), 3);
                                                        return Unit.a;
                                                    }
                                                }, continuation, 3);
                                                if (e == CoroutineSingletons.j) {
                                                    return e;
                                                }
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer4.g0(obj13);
                                        K10 = obj13;
                                    }
                                    PointerEvent pointerEvent = SuspendingPointerInputFilterKt.a;
                                    modifier3 = modifier3.l(new SuspendPointerInputElement(null, null, objArr, (PointerInputEventHandler) K10, 3));
                                    gapComposer4.p(false);
                                } else {
                                    gapComposer4.W(-1678708124);
                                    gapComposer4.p(false);
                                }
                                gapComposer4.p(false);
                                return modifier3;
                            }
                        };
                        SliderDraggableState sliderDraggableState4 = sliderDraggableState;
                        Modifier.Companion companion = Modifier.Companion.b;
                        Modifier a3 = ComposedModifierKt.a(companion, function3);
                        Orientation orientation = Orientation.j;
                        boolean booleanValue = ((Boolean) ((SnapshotMutableStateImpl) sliderDraggableState4.b).getValue()).booleanValue();
                        boolean f11 = gapComposer3.f(k3);
                        Object K9 = gapComposer3.K();
                        if (f11 || K9 == obj5) {
                            K9 = new SliderKt$Slider$2$drag$1$1(k3, null);
                            gapComposer3.g0(K9);
                        }
                        Modifier a4 = DraggableKt.a(companion, sliderDraggableState4, z9, mutableInteractionSource2, booleanValue, (Function3) K9, z8);
                        float c3 = RangesKt.c(f5, closedFloatingPointRange2.c().floatValue(), closedFloatingPointRange2.b().floatValue());
                        float floatValue3 = closedFloatingPointRange2.c().floatValue();
                        float floatValue4 = closedFloatingPointRange2.b().floatValue() - floatValue3;
                        if (floatValue4 == 0.0f) {
                            f2 = 0.0f;
                        } else {
                            f2 = (c3 - floatValue3) / floatValue4;
                        }
                        if (f2 < 0.0f) {
                            f2 = 0.0f;
                        }
                        if (f2 > 1.0f) {
                            f3 = 1.0f;
                        } else {
                            f3 = f2;
                        }
                        SliderKt.c(z9, f3, list2, sliderColors, obj6.j - obj7.j, mutableInteractionSource2, a3.l(a4), gapComposer3, 0);
                    } else {
                        gapComposer3.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer2), gapComposer, 3072, 6);
            z3 = z6;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            z3 = z;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(f, function1, modifier, z3, closedFloatingPointRange, function0, sliderColors, i) { // from class: qf
                public final /* synthetic */ float j;
                public final /* synthetic */ Function1 k;
                public final /* synthetic */ Modifier l;
                public final /* synthetic */ boolean m;
                public final /* synthetic */ ClosedFloatingPointRange n;
                public final /* synthetic */ Function0 o;
                public final /* synthetic */ SliderColors p;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a3 = RecomposeScopeImplKt.a(1);
                    SliderKt.b(this.j, this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, a3);
                    return Unit.a;
                }
            };
        }
    }

    public static final void c(final boolean z, final float f, final List list, final SliderColors sliderColors, final float f2, final MutableInteractionSource mutableInteractionSource, final Modifier modifier, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1679682785);
        if (gapComposer.g(z)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i9 = i | i2;
        if (gapComposer.c(f)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i10 = i9 | i3;
        if (gapComposer.h(list)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i11 = i10 | i4;
        if (gapComposer.f(sliderColors)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i12 = i11 | i5;
        if (gapComposer.c(f2)) {
            i6 = 16384;
        } else {
            i6 = 8192;
        }
        int i13 = i12 | i6;
        if (gapComposer.f(mutableInteractionSource)) {
            i7 = 131072;
        } else {
            i7 = 65536;
        }
        int i14 = i13 | i7;
        if (gapComposer.f(modifier)) {
            i8 = 1048576;
        } else {
            i8 = 524288;
        }
        int i15 = i14 | i8;
        if ((599187 & i15) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i15 & 1, z2)) {
            Modifier l = modifier.l(a);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int a2 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, l);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l2, ComposeUiNode.Companion.c);
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
            }
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
            float i0 = density.i0(4.0f);
            float i02 = density.i0(10.0f);
            float X = density.X(f2) * f;
            int i16 = i15 >> 6;
            int i17 = i15 << 9;
            e(SizeKt.c(Modifier.Companion.b, 1.0f), sliderColors, z, f, list, i02, i0, gapComposer, (i16 & 112) | 3078 | ((i15 << 6) & 896) | (i17 & 57344) | (i17 & 458752));
            d(X, mutableInteractionSource, sliderColors, z, gapComposer, (i16 & 7168) | 1572918 | ((i15 << 3) & 57344) | ((i15 << 15) & 458752));
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(z, f, list, sliderColors, f2, mutableInteractionSource, modifier, i) { // from class: vf
                public final /* synthetic */ boolean j;
                public final /* synthetic */ float k;
                public final /* synthetic */ List l;
                public final /* synthetic */ SliderColors m;
                public final /* synthetic */ float n;
                public final /* synthetic */ MutableInteractionSource o;
                public final /* synthetic */ Modifier p;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a3 = RecomposeScopeImplKt.a(1);
                    SliderKt.c(this.j, this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, a3);
                    return Unit.a;
                }
            };
        }
    }

    public static final void d(final float f, final MutableInteractionSource mutableInteractionSource, final SliderColors sliderColors, final boolean z, Composer composer, final int i) {
        int i2;
        boolean z2;
        boolean z3;
        float f2;
        long j;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(428907178);
        int i10 = i & 6;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.a;
        if (i10 == 0) {
            if (gapComposer.f(boxScopeInstance)) {
                i9 = 4;
            } else {
                i9 = 2;
            }
            i2 = i9 | i;
        } else {
            i2 = i;
        }
        int i11 = i & 48;
        Modifier.Companion companion = Modifier.Companion.b;
        if (i11 == 0) {
            if (gapComposer.f(companion)) {
                i8 = 32;
            } else {
                i8 = 16;
            }
            i2 |= i8;
        }
        if ((i & 384) == 0) {
            if (gapComposer.c(f)) {
                i7 = 256;
            } else {
                i7 = 128;
            }
            i2 |= i7;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(mutableInteractionSource)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i2 |= i6;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.f(sliderColors)) {
                i5 = 16384;
            } else {
                i5 = 8192;
            }
            i2 |= i5;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.g(z)) {
                i4 = 131072;
            } else {
                i4 = 65536;
            }
            i2 |= i4;
        }
        if ((1572864 & i) == 0) {
            if (gapComposer.c(20.0f)) {
                i3 = 1048576;
            } else {
                i3 = 524288;
            }
            i2 |= i3;
        }
        if ((599187 & i2) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            Modifier d = boxScopeInstance.d(PaddingKt.h(companion, f, 0.0f, 0.0f, 0.0f, 14), Alignment.Companion.d);
            MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
            int a2 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, d);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d2, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
            }
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = new SnapshotStateList();
                gapComposer.g0(K);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) K;
            if ((i2 & 7168) == 2048) {
                z3 = true;
            } else {
                z3 = false;
            }
            Object K2 = gapComposer.K();
            if (z3 || K2 == composer$Companion$Empty$1) {
                K2 = new SliderKt$SliderThumb$1$1$1(mutableInteractionSource, snapshotStateList, null);
                gapComposer.g0(K2);
            }
            EffectsKt.e(gapComposer, mutableInteractionSource, (Function2) K2);
            if (!snapshotStateList.isEmpty()) {
                f2 = 6.0f;
            } else {
                f2 = 1.0f;
            }
            Modifier a3 = HoverableKt.a(IndicationKt.a(SizeKt.l(companion, 20.0f, 20.0f), mutableInteractionSource, RippleKt.a(4, 0L, false)), mutableInteractionSource);
            if (!z) {
                f2 = 0.0f;
            }
            float f3 = f2;
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.a;
            Modifier a4 = ShadowKt.a(a3, f3, roundedCornerShape, 0L, 24);
            DefaultSliderColors defaultSliderColors = (DefaultSliderColors) sliderColors;
            gapComposer.W(-1733795637);
            if (z) {
                j = defaultSliderColors.a;
            } else {
                j = defaultSliderColors.b;
            }
            MutableState k = SnapshotStateKt.k(new Color(j), gapComposer);
            gapComposer.p(false);
            SpacerKt.a(gapComposer, BackgroundKt.b(a4, ((Color) k.getValue()).a, roundedCornerShape));
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: nf
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SliderKt.d(f, mutableInteractionSource, sliderColors, z, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final void e(final Modifier modifier, final SliderColors sliderColors, final boolean z, final float f, final List list, final float f2, final float f3, Composer composer, final int i) {
        int i2;
        final float f4;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1833126050);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i10 = 4;
            } else {
                i10 = 2;
            }
            i2 = i10 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(sliderColors)) {
                i9 = 32;
            } else {
                i9 = 16;
            }
            i2 |= i9;
        }
        if ((i & 384) == 0) {
            if (gapComposer.g(z)) {
                i8 = 256;
            } else {
                i8 = 128;
            }
            i2 |= i8;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.c(0.0f)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i2 |= i7;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.c(f)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i2 |= i6;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.h(list)) {
                i5 = 131072;
            } else {
                i5 = 65536;
            }
            i2 |= i5;
        }
        if ((1572864 & i) == 0) {
            f4 = f2;
            if (gapComposer.c(f4)) {
                i4 = 1048576;
            } else {
                i4 = 524288;
            }
            i2 |= i4;
        } else {
            f4 = f2;
        }
        if ((12582912 & i) == 0) {
            if (gapComposer.c(f3)) {
                i3 = 8388608;
            } else {
                i3 = 4194304;
            }
            i2 |= i3;
        }
        int i11 = i2;
        if ((4793491 & i11) != 4793490) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i11 & 1, z2)) {
            DefaultSliderColors defaultSliderColors = (DefaultSliderColors) sliderColors;
            final MutableState b2 = defaultSliderColors.b(z, false, gapComposer);
            final MutableState b3 = defaultSliderColors.b(z, true, gapComposer);
            final MutableState a2 = defaultSliderColors.a(z, false, gapComposer);
            final MutableState a3 = defaultSliderColors.a(z, true, gapComposer);
            if ((i11 & 3670016) == 1048576) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean f5 = z3 | gapComposer.f(b2);
            if ((29360128 & i11) == 8388608) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z7 = f5 | z4;
            if ((57344 & i11) == 16384) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z8 = z7 | z5;
            if ((i11 & 7168) == 2048) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean f6 = z8 | z6 | gapComposer.f(b3) | gapComposer.h(list) | gapComposer.f(a2) | gapComposer.f(a3);
            Object K = gapComposer.K();
            if (f6 || K == Composer.Companion.a) {
                Function1 function1 = new Function1() { // from class: of
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        boolean z9;
                        MutableState mutableState;
                        boolean z10;
                        DrawScope drawScope = (DrawScope) obj;
                        Modifier modifier2 = SliderKt.a;
                        if (drawScope.getLayoutDirection() == LayoutDirection.k) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                        char c = ' ';
                        long floatToRawIntBits = (Float.floatToRawIntBits(r4) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
                        float intBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.i() >> 32)) - f4;
                        float intBitsToFloat3 = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                        long floatToRawIntBits2 = (Float.floatToRawIntBits(intBitsToFloat3) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat2) << 32);
                        long j = floatToRawIntBits;
                        if (z9) {
                            floatToRawIntBits = floatToRawIntBits2;
                        }
                        if (!z9) {
                            j = floatToRawIntBits2;
                        }
                        long j2 = ((Color) b2.getValue()).a;
                        float f7 = f3;
                        drawScope.v(f7, j2, floatToRawIntBits, j);
                        long j3 = floatToRawIntBits;
                        long j4 = j;
                        int i12 = (int) (j3 >> 32);
                        float intBitsToFloat4 = Float.intBitsToFloat(i12);
                        int i13 = (int) (j4 >> 32);
                        float intBitsToFloat5 = Float.intBitsToFloat(i13) - Float.intBitsToFloat(i12);
                        float f8 = f;
                        float f9 = (intBitsToFloat5 * f8) + intBitsToFloat4;
                        float intBitsToFloat6 = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                        float intBitsToFloat7 = ((Float.intBitsToFloat(i13) - Float.intBitsToFloat(i12)) * 0.0f) + Float.intBitsToFloat(i12);
                        float intBitsToFloat8 = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                        drawScope.v(f7, ((Color) b3.getValue()).a, (Float.floatToRawIntBits(intBitsToFloat8) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat7) << 32), (Float.floatToRawIntBits(f9) << 32) | (Float.floatToRawIntBits(intBitsToFloat6) & 4294967295L));
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Object obj2 : list) {
                            float floatValue = ((Number) obj2).floatValue();
                            if (floatValue <= f8 && floatValue >= 0.0f) {
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            Boolean valueOf = Boolean.valueOf(z10);
                            Object obj3 = linkedHashMap.get(valueOf);
                            if (obj3 == null) {
                                obj3 = new ArrayList();
                                linkedHashMap.put(valueOf, obj3);
                            }
                            ((List) obj3).add(obj2);
                        }
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            boolean booleanValue = ((Boolean) entry.getKey()).booleanValue();
                            List list2 = (List) entry.getValue();
                            ArrayList arrayList = new ArrayList(list2.size());
                            int size = list2.size();
                            int i14 = 0;
                            while (i14 < size) {
                                float floatValue2 = ((Number) list2.get(i14)).floatValue();
                                float b4 = MathHelpersKt.b(Float.intBitsToFloat((int) (j3 >> c)), Float.intBitsToFloat((int) (j4 >> c)), floatValue2);
                                char c2 = c;
                                float b5 = MathHelpersKt.b(Float.intBitsToFloat((int) (j3 & 4294967295L)), Float.intBitsToFloat((int) (j4 & 4294967295L)), floatValue2);
                                float intBitsToFloat9 = Float.intBitsToFloat((int) (((Float.floatToRawIntBits(b4) << c2) | (Float.floatToRawIntBits(b5) & 4294967295L)) >> c2));
                                float intBitsToFloat10 = Float.intBitsToFloat((int) (drawScope.B0() & 4294967295L));
                                arrayList.add(new Offset((Float.floatToRawIntBits(intBitsToFloat10) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat9) << c2)));
                                i14++;
                                c = c2;
                                j3 = j3;
                            }
                            char c3 = c;
                            long j5 = j3;
                            if (booleanValue) {
                                mutableState = a2;
                            } else {
                                mutableState = a3;
                            }
                            drawScope.x0(arrayList, ((Color) mutableState.getValue()).a, f7);
                            c = c3;
                            j3 = j5;
                        }
                        return Unit.a;
                    }
                };
                gapComposer.g0(function1);
                K = function1;
            }
            CanvasKt.a(i11 & 14, gapComposer, modifier, (Function1) K);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: pf
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SliderKt.e(Modifier.this, sliderColors, z, f, list, f2, f3, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }
}
