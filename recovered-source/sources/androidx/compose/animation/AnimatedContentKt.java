package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import io.sentry.d;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnimatedContentKt {
    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Transition transition, final Modifier modifier, final Function1 function1, Alignment alignment, final Function1 function12, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        Alignment alignment2;
        int i4;
        boolean z;
        final Alignment alignment3;
        RecomposeScopeImpl r;
        Alignment alignment4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(511725103);
        if ((i & 6) == 0) {
            if (gapComposer.f(transition)) {
                i9 = 4;
            } else {
                i9 = 2;
            }
            i3 = i9 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i8 = 32;
            } else {
                i8 = 16;
            }
            i3 |= i8;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function1)) {
                i7 = 256;
            } else {
                i7 = 128;
            }
            i3 |= i7;
        }
        int i10 = i2 & 4;
        if (i10 != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            alignment2 = alignment;
            if (gapComposer.f(alignment2)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i3 |= i4;
            if ((i & 24576) == 0) {
                if (gapComposer.h(function12)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i3 |= i6;
            }
            if ((i & 196608) == 0) {
                if (gapComposer.h(composableLambdaImpl)) {
                    i5 = 131072;
                } else {
                    i5 = 65536;
                }
                i3 |= i5;
            }
            if ((74899 & i3) == 74898) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i3 & 1, z)) {
                if (i10 != 0) {
                    alignment4 = Alignment.Companion.a;
                } else {
                    alignment4 = alignment2;
                }
                Object K = gapComposer.K();
                if (K == Composer.Companion.a) {
                    K = AnimatedContentKt$AnimatedContent$6$1.k;
                    gapComposer.g0(K);
                }
                c(transition, modifier, function1, alignment4, function12, (Function1) K, composableLambdaImpl, gapComposer, (i3 & 14) | 196608 | (i3 & 112) | (i3 & 896) | (i3 & 7168) | (57344 & i3) | ((i3 << 3) & 3670016));
                alignment3 = alignment4;
            } else {
                gapComposer.Q();
                alignment3 = alignment2;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$7
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AnimatedContentKt.a(Transition.this, modifier, function1, alignment3, function12, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                        return Unit.a;
                    }
                };
                return;
            }
            return;
        }
        alignment2 = alignment;
        if ((i & 24576) == 0) {
        }
        if ((i & 196608) == 0) {
        }
        if ((74899 & i3) == 74898) {
        }
        if (!gapComposer.N(i3 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(final Object obj, Modifier modifier, Function1 function1, Alignment alignment, final String str, Function1 function12, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        int i5;
        Function1 function13;
        int i6;
        int i7;
        Alignment alignment2;
        int i8;
        int i9;
        boolean z;
        final Modifier modifier3;
        final Function1 function14;
        final Alignment alignment3;
        final Function1 function15;
        RecomposeScopeImpl r;
        Modifier modifier4;
        Function1 function16;
        Alignment alignment4;
        int i10;
        int i11;
        boolean h;
        int i12;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1501828832);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(obj);
            } else {
                h = gapComposer.h(obj);
            }
            if (h) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i3 = i12 | i;
        } else {
            i3 = i;
        }
        int i13 = i2 & 2;
        if (i13 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
            i5 = i2 & 4;
            if (i5 == 0) {
                i3 |= 384;
            } else if ((i & 384) == 0) {
                function13 = function1;
                if (gapComposer.h(function13)) {
                    i6 = 256;
                } else {
                    i6 = 128;
                }
                i3 |= i6;
                i7 = i2 & 8;
                if (i7 != 0) {
                    i3 |= 3072;
                } else if ((i & 3072) == 0) {
                    alignment2 = alignment;
                    if (gapComposer.f(alignment2)) {
                        i8 = 2048;
                    } else {
                        i8 = 1024;
                    }
                    i3 |= i8;
                    if ((i & 24576) == 0) {
                        if (gapComposer.f(str)) {
                            i11 = 16384;
                        } else {
                            i11 = 8192;
                        }
                        i3 |= i11;
                    }
                    i9 = i3 | 196608;
                    if ((1572864 & i) == 0) {
                        if (gapComposer.h(composableLambdaImpl)) {
                            i10 = 1048576;
                        } else {
                            i10 = 524288;
                        }
                        i9 |= i10;
                    }
                    if ((599187 & i9) == 599186) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!gapComposer.N(i9 & 1, z)) {
                        if (i13 != 0) {
                            modifier4 = Modifier.Companion.b;
                        } else {
                            modifier4 = modifier2;
                        }
                        Object obj2 = Composer.Companion.a;
                        if (i5 != 0) {
                            Object K = gapComposer.K();
                            if (K == obj2) {
                                K = AnimatedContentKt$AnimatedContent$1$1.k;
                                gapComposer.g0(K);
                            }
                            function16 = (Function1) K;
                        } else {
                            function16 = function13;
                        }
                        if (i7 != 0) {
                            alignment4 = Alignment.Companion.a;
                        } else {
                            alignment4 = alignment2;
                        }
                        Object K2 = gapComposer.K();
                        if (K2 == obj2) {
                            K2 = AnimatedContentKt$AnimatedContent$2$1.k;
                            gapComposer.g0(K2);
                        }
                        Function1 function17 = (Function1) K2;
                        TransitionInstance e = TransitionKt.e(obj, str, gapComposer, (i9 & 14) | ((i9 >> 9) & 112));
                        int i14 = i9 & 8176;
                        int i15 = i9 >> 3;
                        a(e, modifier4, function16, alignment4, function17, composableLambdaImpl, gapComposer, i14 | (57344 & i15) | (i15 & 458752), 0);
                        modifier3 = modifier4;
                        function14 = function16;
                        alignment3 = alignment4;
                        function15 = function17;
                    } else {
                        gapComposer.Q();
                        modifier3 = modifier2;
                        function14 = function13;
                        alignment3 = alignment2;
                        function15 = function12;
                    }
                    r = gapComposer.r();
                    if (r == null) {
                        r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContent$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj3, Object obj4) {
                                ((Number) obj4).intValue();
                                AnimatedContentKt.b(obj, modifier3, function14, alignment3, str, function15, composableLambdaImpl, (Composer) obj3, RecomposeScopeImplKt.a(i | 1), i2);
                                return Unit.a;
                            }
                        };
                        return;
                    }
                    return;
                }
                alignment2 = alignment;
                if ((i & 24576) == 0) {
                }
                i9 = i3 | 196608;
                if ((1572864 & i) == 0) {
                }
                if ((599187 & i9) == 599186) {
                }
                if (!gapComposer.N(i9 & 1, z)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
            function13 = function1;
            i7 = i2 & 8;
            if (i7 != 0) {
            }
            alignment2 = alignment;
            if ((i & 24576) == 0) {
            }
            i9 = i3 | 196608;
            if ((1572864 & i) == 0) {
            }
            if ((599187 & i9) == 599186) {
            }
            if (!gapComposer.N(i9 & 1, z)) {
            }
            r = gapComposer.r();
            if (r == null) {
            }
        }
        modifier2 = modifier;
        i5 = i2 & 4;
        if (i5 == 0) {
        }
        function13 = function1;
        i7 = i2 & 8;
        if (i7 != 0) {
        }
        alignment2 = alignment;
        if ((i & 24576) == 0) {
        }
        i9 = i3 | 196608;
        if ((1572864 & i) == 0) {
        }
        if ((599187 & i9) == 599186) {
        }
        if (!gapComposer.N(i9 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    public static final void c(final Transition transition, final Modifier modifier, final Function1 function1, final Alignment alignment, final Function1 function12, final Function1 function13, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z;
        Function1 function14;
        GapComposer gapComposer;
        boolean z2;
        boolean z3;
        boolean z4;
        SnapshotMutableStateImpl snapshotMutableStateImpl;
        boolean z5;
        Transition.DeferredAnimation deferredAnimation;
        Object obj;
        MutableScatterMap mutableScatterMap;
        Transition.DeferredAnimation deferredAnimation2;
        AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl;
        SnapshotStateList snapshotStateList;
        SnapshotStateList snapshotStateList2;
        Transition.DeferredAnimation deferredAnimation3;
        boolean z6;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1935038908);
        if ((i & 6) == 0) {
            if (gapComposer2.f(transition)) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            i2 = i11 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.f(modifier)) {
                i10 = 32;
            } else {
                i10 = 16;
            }
            i2 |= i10;
        }
        if ((i & 384) == 0) {
            if (gapComposer2.h(function1)) {
                i9 = 256;
            } else {
                i9 = 128;
            }
            i2 |= i9;
        }
        if ((i & 3072) == 0) {
            if (gapComposer2.f(alignment)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i2 |= i8;
        }
        if ((i & 24576) == 0) {
            if (gapComposer2.h(function12)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i2 |= i7;
        }
        if ((196608 & i) == 0) {
            if (gapComposer2.h(function13)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i2 |= i6;
        }
        final ComposableLambdaImpl composableLambdaImpl2 = composableLambdaImpl;
        if ((1572864 & i) == 0) {
            if (gapComposer2.h(composableLambdaImpl2)) {
                i5 = 1048576;
            } else {
                i5 = 524288;
            }
            i2 |= i5;
        }
        if ((599187 & i2) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer2.N(i2 & 1, z)) {
            int i12 = i2 & 14;
            if (i12 == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            Object K = gapComposer2.K();
            Object obj2 = Composer.Companion.a;
            if (z2 || K == obj2) {
                K = new AnimatedContentTransitionScopeImpl(transition, alignment);
                gapComposer2.g0(K);
            }
            final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl2 = (AnimatedContentTransitionScopeImpl) K;
            if (i12 == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            Object K2 = gapComposer2.K();
            Object obj3 = K2;
            if (z3 || K2 == obj2) {
                Object[] objArr = {transition.a.a()};
                SnapshotStateList snapshotStateList3 = new SnapshotStateList();
                snapshotStateList3.addAll(ArraysKt.v(objArr));
                gapComposer2.g0(snapshotStateList3);
                obj3 = snapshotStateList3;
            }
            final SnapshotStateList snapshotStateList4 = (SnapshotStateList) obj3;
            MutableState mutableState = transition.e;
            MutableState mutableState2 = transition.d;
            int i13 = i2;
            TransitionState transitionState = transition.a;
            Object value = ((SnapshotMutableStateImpl) mutableState).getValue();
            if (i12 == 4) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean f = gapComposer2.f(value) | z4;
            Object K3 = gapComposer2.K();
            if (f || K3 == obj2) {
                long[] jArr = ScatterMapKt.a;
                K3 = new MutableScatterMap();
                gapComposer2.g0(K3);
            }
            MutableScatterMap mutableScatterMap2 = (MutableScatterMap) K3;
            if (!snapshotStateList4.contains(transitionState.a())) {
                snapshotStateList4.clear();
                snapshotStateList4.add(transitionState.a());
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl2 = (SnapshotMutableStateImpl) mutableState2;
            if (Intrinsics.a(transitionState.a(), snapshotMutableStateImpl2.getValue()) && ((SnapshotMutableStateImpl) mutableState).getValue() == null) {
                if (snapshotStateList4.size() != 1 || !Intrinsics.a(snapshotStateList4.get(0), transitionState.a())) {
                    snapshotStateList4.clear();
                    snapshotStateList4.add(transitionState.a());
                }
                if (mutableScatterMap2.e != 1 || mutableScatterMap2.c(transitionState.a())) {
                    mutableScatterMap2.h();
                }
                animatedContentTransitionScopeImpl2.b = alignment;
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl3 = (SnapshotMutableStateImpl) mutableState;
            Object value2 = snapshotMutableStateImpl3.getValue();
            if (value2 != null && !value2.equals(transitionState.a())) {
                ListIterator listIterator = snapshotStateList4.listIterator();
                int i14 = 0;
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (stateListIterator.hasNext()) {
                        snapshotMutableStateImpl = snapshotMutableStateImpl2;
                        if (Intrinsics.a(function12.b(stateListIterator.next()), function12.b(value2))) {
                            i4 = i14;
                            break;
                        } else {
                            i14++;
                            snapshotMutableStateImpl2 = snapshotMutableStateImpl;
                        }
                    } else {
                        snapshotMutableStateImpl = snapshotMutableStateImpl2;
                        i4 = -1;
                        break;
                    }
                }
                if (i4 == -1) {
                    snapshotStateList4.add(value2);
                } else if (!Intrinsics.a(snapshotStateList4.get(i4), value2)) {
                    snapshotStateList4.set(i4, value2);
                }
            } else {
                snapshotMutableStateImpl = snapshotMutableStateImpl2;
            }
            if (!Intrinsics.a(transitionState.a(), snapshotMutableStateImpl.getValue())) {
                ListIterator listIterator2 = snapshotStateList4.listIterator();
                int i15 = 0;
                while (true) {
                    StateListIterator stateListIterator2 = (StateListIterator) listIterator2;
                    if (stateListIterator2.hasNext()) {
                        if (Intrinsics.a(function12.b(stateListIterator2.next()), function12.b(snapshotMutableStateImpl.getValue()))) {
                            i3 = i15;
                            break;
                        }
                        i15++;
                    } else {
                        i3 = -1;
                        break;
                    }
                }
                if (i3 == -1) {
                    snapshotStateList4.add(snapshotMutableStateImpl.getValue());
                } else if (!Intrinsics.a(snapshotStateList4.get(i3), snapshotMutableStateImpl.getValue()) || i3 != snapshotStateList4.size() - 1) {
                    Intrinsics.a(snapshotMutableStateImpl.getValue(), snapshotStateList4.get(i3));
                    snapshotStateList4.remove(i3);
                    snapshotStateList4.add(snapshotMutableStateImpl.getValue());
                }
            }
            Object value3 = snapshotMutableStateImpl3.getValue();
            boolean f2 = gapComposer2.f(value3);
            Object K4 = gapComposer2.K();
            if (f2 || K4 == obj2) {
                if (value3 != null) {
                    K4 = new PendingAnimatedContentTransitionScope(animatedContentTransitionScopeImpl2, snapshotMutableStateImpl.getValue(), value3);
                } else {
                    K4 = null;
                }
                gapComposer2.g0(K4);
            }
            final PendingAnimatedContentTransitionScope pendingAnimatedContentTransitionScope = (PendingAnimatedContentTransitionScope) K4;
            boolean f3 = gapComposer2.f(pendingAnimatedContentTransitionScope);
            if ((i13 & 458752) == 131072) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z7 = f3 | z5;
            Object K5 = gapComposer2.K();
            if (!z7 && K5 != obj2) {
                obj = K5;
                deferredAnimation = null;
            } else if (pendingAnimatedContentTransitionScope == null || function13.b(pendingAnimatedContentTransitionScope) == null) {
                deferredAnimation = null;
                gapComposer2.g0(null);
                obj = null;
            } else {
                d.i();
                return;
            }
            if (obj == null) {
                if (mutableScatterMap2.b(snapshotMutableStateImpl.getValue()) && mutableScatterMap2.b(transitionState.a()) && (value3 == null || mutableScatterMap2.b(value3))) {
                    gapComposer2.W(-297322234);
                    gapComposer2.p(false);
                    mutableScatterMap = mutableScatterMap2;
                    deferredAnimation2 = deferredAnimation;
                    animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl2;
                    snapshotStateList = snapshotStateList4;
                    function14 = function1;
                } else {
                    gapComposer2.W(-302069574);
                    mutableScatterMap2.h();
                    int size = snapshotStateList4.size();
                    int i16 = 0;
                    while (i16 < size) {
                        int i17 = size;
                        final Object obj4 = snapshotStateList4.get(i16);
                        MutableScatterMap mutableScatterMap3 = mutableScatterMap2;
                        mutableScatterMap3.o(obj4, ComposableLambdaKt.b(427839334, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$8$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj5, Object obj6) {
                                boolean z8;
                                ContentTransform contentTransform;
                                ExitTransition exitTransition;
                                Composer composer2 = (Composer) obj5;
                                int intValue = ((Number) obj6).intValue();
                                boolean z9 = false;
                                if ((intValue & 3) != 2) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                GapComposer gapComposer3 = (GapComposer) composer2;
                                if (gapComposer3.N(intValue & 1, z8)) {
                                    Transition transition2 = transition;
                                    MutableState mutableState3 = transition2.e;
                                    MutableState mutableState4 = transition2.d;
                                    Object value4 = ((SnapshotMutableStateImpl) mutableState3).getValue();
                                    final Object obj7 = obj4;
                                    boolean g = gapComposer3.g(Intrinsics.a(obj7, value4));
                                    Object K6 = gapComposer3.K();
                                    Function1 function15 = function1;
                                    PendingAnimatedContentTransitionScope pendingAnimatedContentTransitionScope2 = pendingAnimatedContentTransitionScope;
                                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                    final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl3 = animatedContentTransitionScopeImpl2;
                                    if (g || K6 == composer$Companion$Empty$1) {
                                        if (Intrinsics.a(obj7, ((SnapshotMutableStateImpl) mutableState3).getValue()) && pendingAnimatedContentTransitionScope2 != null) {
                                            contentTransform = (ContentTransform) function15.b(pendingAnimatedContentTransitionScope2);
                                        } else if (!Intrinsics.a(obj7, transition2.f().a()) && !Intrinsics.a(obj7, transition2.f().c())) {
                                            contentTransform = (ContentTransform) function15.b(new PendingAnimatedContentTransitionScope(animatedContentTransitionScopeImpl3, transition2.f().a(), obj7));
                                        } else {
                                            contentTransform = (ContentTransform) function15.b(animatedContentTransitionScopeImpl3);
                                        }
                                        K6 = contentTransform;
                                        gapComposer3.g0(K6);
                                    }
                                    ContentTransform contentTransform2 = (ContentTransform) K6;
                                    SnapshotMutableStateImpl snapshotMutableStateImpl4 = (SnapshotMutableStateImpl) mutableState3;
                                    boolean g2 = gapComposer3.g(Intrinsics.a(transition2.f().c(), obj7)) | gapComposer3.g(Intrinsics.a(obj7, snapshotMutableStateImpl4.getValue()));
                                    Object K7 = gapComposer3.K();
                                    if (g2 || K7 == composer$Companion$Empty$1) {
                                        if (!Intrinsics.a(transition2.f().c(), obj7) && (!Intrinsics.a(obj7, snapshotMutableStateImpl4.getValue()) || pendingAnimatedContentTransitionScope2 == null)) {
                                            if (!Intrinsics.a(obj7, transition2.f().a()) && !Intrinsics.a(obj7, transition2.f().c())) {
                                                exitTransition = ((ContentTransform) function15.b(new PendingAnimatedContentTransitionScope(animatedContentTransitionScopeImpl3, obj7, transition2.f().a()))).b;
                                            } else {
                                                exitTransition = ((ContentTransform) function15.b(animatedContentTransitionScopeImpl3)).b;
                                            }
                                        } else {
                                            exitTransition = ExitTransition.a;
                                        }
                                        K7 = exitTransition;
                                        gapComposer3.g0(K7);
                                    }
                                    final ExitTransition exitTransition2 = (ExitTransition) K7;
                                    Object K8 = gapComposer3.K();
                                    if (K8 == composer$Companion$Empty$1) {
                                        K8 = new AnimatedContentTransitionScopeImpl.ChildData(Intrinsics.a(obj7, ((SnapshotMutableStateImpl) mutableState4).getValue()));
                                        gapComposer3.g0(K8);
                                    }
                                    AnimatedContentTransitionScopeImpl.ChildData childData = (AnimatedContentTransitionScopeImpl.ChildData) K8;
                                    EnterTransition enterTransition = contentTransform2.a;
                                    ZIndexModifierElement zIndexModifierElement = new ZIndexModifierElement(((SnapshotMutableFloatStateImpl) contentTransform2.c).j(), obj7);
                                    SnapshotMutableStateImpl snapshotMutableStateImpl5 = (SnapshotMutableStateImpl) mutableState4;
                                    ((SnapshotMutableStateImpl) childData.b).setValue(Boolean.valueOf(Intrinsics.a(obj7, snapshotMutableStateImpl5.getValue())));
                                    if (Intrinsics.a(obj7, snapshotMutableStateImpl4.getValue()) && !Intrinsics.a(obj7, snapshotMutableStateImpl5.getValue()) && !Intrinsics.a(obj7, transition2.a.a())) {
                                        z9 = true;
                                    }
                                    ((SnapshotMutableStateImpl) childData.c).setValue(Boolean.valueOf(z9));
                                    Modifier l = zIndexModifierElement.l(childData);
                                    boolean h = gapComposer3.h(obj7);
                                    Object K9 = gapComposer3.K();
                                    if (h || K9 == composer$Companion$Empty$1) {
                                        K9 = new Function1<Object, Boolean>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$8$1$3$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj8) {
                                                return Boolean.valueOf(Intrinsics.a(obj8, obj7));
                                            }
                                        };
                                        gapComposer3.g0(K9);
                                    }
                                    Function1 function16 = (Function1) K9;
                                    boolean f4 = gapComposer3.f(exitTransition2);
                                    Object K10 = gapComposer3.K();
                                    if (f4 || K10 == composer$Companion$Empty$1) {
                                        K10 = new Function2<EnterExitState, EnterExitState, Boolean>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$8$1$4$1
                                            {
                                                super(2);
                                            }

                                            @Override // kotlin.jvm.functions.Function2
                                            public final Object n(Object obj8, Object obj9) {
                                                boolean z10;
                                                EnterExitState enterExitState = (EnterExitState) obj8;
                                                EnterExitState enterExitState2 = (EnterExitState) obj9;
                                                EnterExitState enterExitState3 = EnterExitState.l;
                                                if (enterExitState == enterExitState3 && enterExitState2 == enterExitState3 && !((ExitTransitionImpl) ExitTransition.this).c.e) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                return Boolean.valueOf(z10);
                                            }
                                        };
                                        gapComposer3.g0(K10);
                                    }
                                    final SnapshotStateList snapshotStateList5 = snapshotStateList4;
                                    final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                    AnimatedVisibilityKt.a(transition, function16, l, enterTransition, exitTransition2, (Function2) K10, ComposableLambdaKt.b(1831990167, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$8$1.5
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(3);
                                        }

                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object f(Object obj8, Object obj9, Object obj10) {
                                            boolean z10;
                                            boolean h2;
                                            int i18;
                                            AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj8;
                                            Composer composer3 = (Composer) obj9;
                                            int intValue2 = ((Number) obj10).intValue();
                                            if ((intValue2 & 6) == 0) {
                                                if ((intValue2 & 8) == 0) {
                                                    h2 = ((GapComposer) composer3).f(animatedVisibilityScope);
                                                } else {
                                                    h2 = ((GapComposer) composer3).h(animatedVisibilityScope);
                                                }
                                                if (h2) {
                                                    i18 = 4;
                                                } else {
                                                    i18 = 2;
                                                }
                                                intValue2 |= i18;
                                            }
                                            if ((intValue2 & 19) != 18) {
                                                z10 = true;
                                            } else {
                                                z10 = false;
                                            }
                                            GapComposer gapComposer4 = (GapComposer) composer3;
                                            if (gapComposer4.N(intValue2 & 1, z10)) {
                                                final SnapshotStateList snapshotStateList6 = snapshotStateList5;
                                                boolean f5 = gapComposer4.f(snapshotStateList6);
                                                final Object obj11 = obj7;
                                                boolean h3 = f5 | gapComposer4.h(obj11);
                                                final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl4 = animatedContentTransitionScopeImpl3;
                                                boolean h4 = h3 | gapComposer4.h(animatedContentTransitionScopeImpl4);
                                                Object K11 = gapComposer4.K();
                                                Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                                                if (h4 || K11 == composer$Companion$Empty$12) {
                                                    K11 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1
                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        {
                                                            super(1);
                                                        }

                                                        @Override // kotlin.jvm.functions.Function1
                                                        public final Object b(Object obj12) {
                                                            final SnapshotStateList snapshotStateList7 = SnapshotStateList.this;
                                                            final Object obj13 = obj11;
                                                            final AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl5 = animatedContentTransitionScopeImpl4;
                                                            return new DisposableEffectResult() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$8$1$5$1$1$invoke$$inlined$onDispose$1
                                                                @Override // androidx.compose.runtime.DisposableEffectResult
                                                                public final void a() {
                                                                    SnapshotStateList snapshotStateList8 = SnapshotStateList.this;
                                                                    Object obj14 = obj13;
                                                                    snapshotStateList8.remove(obj14);
                                                                    animatedContentTransitionScopeImpl5.d.m(obj14);
                                                                }
                                                            };
                                                        }
                                                    };
                                                    gapComposer4.g0(K11);
                                                }
                                                EffectsKt.b(animatedVisibilityScope, obj11, (Function1) K11, gapComposer4);
                                                MutableScatterMap mutableScatterMap4 = animatedContentTransitionScopeImpl4.d;
                                                animatedVisibilityScope.getClass();
                                                mutableScatterMap4.o(obj11, ((AnimatedVisibilityScopeImpl) animatedVisibilityScope).a);
                                                Object K12 = gapComposer4.K();
                                                if (K12 == composer$Companion$Empty$12) {
                                                    K12 = new Object();
                                                    gapComposer4.g0(K12);
                                                }
                                                composableLambdaImpl3.j((AnimatedContentScopeImpl) K12, obj11, gapComposer4, 0);
                                            } else {
                                                gapComposer4.Q();
                                            }
                                            return Unit.a;
                                        }
                                    }, gapComposer3), gapComposer3, 100663296);
                                } else {
                                    gapComposer3.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer2));
                        i16++;
                        snapshotStateList4 = snapshotStateList4;
                        mutableScatterMap2 = mutableScatterMap3;
                        size = i17;
                        deferredAnimation = deferredAnimation;
                        composableLambdaImpl2 = composableLambdaImpl;
                    }
                    mutableScatterMap = mutableScatterMap2;
                    deferredAnimation2 = deferredAnimation;
                    animatedContentTransitionScopeImpl = animatedContentTransitionScopeImpl2;
                    snapshotStateList = snapshotStateList4;
                    function14 = function1;
                    gapComposer2.p(false);
                }
                boolean f4 = gapComposer2.f(transition.f()) | gapComposer2.f(animatedContentTransitionScopeImpl) | gapComposer2.f(snapshotMutableStateImpl3.getValue());
                Object K6 = gapComposer2.K();
                if (f4 || K6 == obj2) {
                    K6 = (ContentTransform) function14.b(animatedContentTransitionScopeImpl);
                    gapComposer2.g0(K6);
                }
                ContentTransform contentTransform = (ContentTransform) K6;
                Transition transition2 = animatedContentTransitionScopeImpl.a;
                boolean f5 = gapComposer2.f(animatedContentTransitionScopeImpl);
                Object K7 = gapComposer2.K();
                if (f5 || K7 == obj2) {
                    K7 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposer2.g0(K7);
                }
                MutableState mutableState3 = (MutableState) K7;
                MutableState k = SnapshotStateKt.k(contentTransform.d, gapComposer2);
                if (Intrinsics.a(transition2.a.a(), ((SnapshotMutableStateImpl) transition2.d).getValue())) {
                    mutableState3.setValue(Boolean.FALSE);
                } else if (k.getValue() != null) {
                    mutableState3.setValue(Boolean.TRUE);
                }
                boolean booleanValue = ((Boolean) mutableState3.getValue()).booleanValue();
                Modifier modifier2 = Modifier.Companion.b;
                if (booleanValue) {
                    gapComposer2.W(1353077497);
                    snapshotStateList2 = snapshotStateList;
                    gapComposer = gapComposer2;
                    deferredAnimation3 = TransitionKt.b(animatedContentTransitionScopeImpl.a, VectorConvertersKt.h, null, gapComposer, 0, 2);
                    boolean f6 = gapComposer.f(deferredAnimation3);
                    Object K8 = gapComposer.K();
                    if (f6 || K8 == obj2) {
                        K8 = ClipKt.b(modifier2);
                        gapComposer.g0(K8);
                    }
                    modifier2 = (Modifier) K8;
                    gapComposer.p(false);
                } else {
                    gapComposer = gapComposer2;
                    snapshotStateList2 = snapshotStateList;
                    gapComposer.W(1353343539);
                    gapComposer.p(false);
                    deferredAnimation3 = deferredAnimation2;
                }
                Modifier l = modifier.l(modifier2.l(new AnimatedContentTransitionScopeImpl.SizeModifierElement(deferredAnimation3, k, animatedContentTransitionScopeImpl)));
                Object K9 = gapComposer.K();
                if (K9 == obj2) {
                    K9 = new AnimatedContentMeasurePolicy(animatedContentTransitionScopeImpl);
                    gapComposer.g0(K9);
                }
                AnimatedContentMeasurePolicy animatedContentMeasurePolicy = (AnimatedContentMeasurePolicy) K9;
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l2 = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, l);
                ComposeUiNode.b.getClass();
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(LayoutNode.b0);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, animatedContentMeasurePolicy, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, l2, ComposeUiNode.Companion.c);
                Updater.a(gapComposer, Integer.valueOf(hashCode));
                Updater.b(gapComposer);
                Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                gapComposer.W(758586195);
                int size2 = snapshotStateList2.size();
                for (int i18 = 0; i18 < size2; i18++) {
                    Object obj5 = snapshotStateList2.get(i18);
                    gapComposer.U(1420119555, function12.b(obj5));
                    Function2 function2 = (Function2) mutableScatterMap.e(obj5);
                    if (function2 == null) {
                        gapComposer.W(1074069702);
                        z6 = false;
                    } else {
                        z6 = false;
                        gapComposer.W(1420120731);
                        function2.n(gapComposer, 0);
                    }
                    gapComposer.p(z6);
                    gapComposer.p(z6);
                }
                gapComposer.p(false);
                gapComposer.p(true);
            } else {
                d.i();
                return;
            }
        } else {
            function14 = function1;
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Function1 function15 = function14;
            r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedContentKt$AnimatedContentImpl$11
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj6, Object obj7) {
                    ((Number) obj7).intValue();
                    AnimatedContentKt.c(Transition.this, modifier, function15, alignment, function12, function13, composableLambdaImpl, (Composer) obj6, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final ContentTransform d(EnterTransition enterTransition, ExitTransition exitTransition) {
        return new ContentTransform(enterTransition, exitTransition, 0.0f, new SizeTransformImpl(AnimatedContentKt$SizeTransform$1.k));
    }
}
