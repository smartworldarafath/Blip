package androidx.compose.animation.core;

import androidx.compose.animation.EnterExitState;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotLongStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import defpackage.t2;
import defpackage.wh;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Transition<S> {
    public final TransitionState a;
    public final Transition b;
    public final String c;
    public final MutableState d;
    public final MutableState f;
    public final MutableState i;
    public final SnapshotStateList j;
    public final SnapshotStateList k;
    public final MutableState l;
    public final State m;
    public final MutableState e = SnapshotStateKt.g(null);
    public final MutableLongState g = SnapshotLongStateKt.a(0);
    public final MutableLongState h = SnapshotLongStateKt.a(Long.MIN_VALUE);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class DeferredAnimation<T, V extends AnimationVector> {
        public final TwoWayConverter a;
        public final MutableState b = SnapshotStateKt.g(null);

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public final class DeferredAnimationData<T, V extends AnimationVector> implements State<T> {
            public final TransitionAnimationState j;
            public Function1 k;
            public Function1 l;

            public DeferredAnimationData(TransitionAnimationState transitionAnimationState, Function1 function1, Function1 function12) {
                this.j = transitionAnimationState;
                this.k = function1;
                this.l = function12;
            }

            public final void b(Segment segment, Object obj, AnimationVector animationVector) {
                Object b = this.l.b(segment.c());
                boolean h = Transition.this.h();
                TransitionAnimationState transitionAnimationState = this.j;
                if (h) {
                    transitionAnimationState.j(this.l.b(segment.a()), b, (FiniteAnimationSpec) this.k.b(segment));
                } else {
                    transitionAnimationState.k(b, (FiniteAnimationSpec) this.k.b(segment), obj, animationVector);
                }
            }

            @Override // androidx.compose.runtime.State
            public final Object getValue() {
                b(Transition.this.f(), null, null);
                return ((SnapshotMutableStateImpl) this.j.s).getValue();
            }
        }

        public DeferredAnimation(TwoWayConverter twoWayConverter, String str) {
            this.a = twoWayConverter;
        }

        public final DeferredAnimationData a(Function1 function1, Object obj, AnimationVector animationVector, Function1 function12) {
            MutableState mutableState = this.b;
            DeferredAnimationData deferredAnimationData = (DeferredAnimationData) ((SnapshotMutableStateImpl) mutableState).getValue();
            Transition transition = Transition.this;
            if (deferredAnimationData == null) {
                Object b = function12.b(transition.a.a());
                Object b2 = function12.b(transition.a.a());
                TwoWayConverter twoWayConverter = this.a;
                AnimationVector animationVector2 = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(b2);
                animationVector2.d();
                TransitionAnimationState transitionAnimationState = new TransitionAnimationState(b, animationVector2, twoWayConverter);
                deferredAnimationData = new DeferredAnimationData(transitionAnimationState, function1, function12);
                ((SnapshotMutableStateImpl) mutableState).setValue(deferredAnimationData);
                transition.j.add(transitionAnimationState);
            }
            deferredAnimationData.l = function12;
            deferredAnimationData.k = function1;
            deferredAnimationData.b(transition.f(), obj, animationVector);
            return deferredAnimationData;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Segment<S> {
        Object a();

        default boolean b(Object obj, Object obj2) {
            if (obj.equals(a()) && obj2.equals(c())) {
                return true;
            }
            return false;
        }

        Object c();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SegmentImpl<S> implements Segment<S> {
        public final Object a;
        public final Object b;

        public SegmentImpl(Object obj, Object obj2) {
            this.a = obj;
            this.b = obj2;
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        public final Object a() {
            return this.a;
        }

        @Override // androidx.compose.animation.core.Transition.Segment
        public final Object c() {
            return this.b;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Segment) {
                Segment segment = (Segment) obj;
                if (Intrinsics.a(this.a, segment.a()) && Intrinsics.a(this.b, segment.c())) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int i2 = 0;
            Object obj = this.a;
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            int i3 = i * 31;
            Object obj2 = this.b;
            if (obj2 != null) {
                i2 = obj2.hashCode();
            }
            return i3 + i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class TransitionAnimationState<T, V extends AnimationVector> implements State<T> {
        public final TwoWayConverter j;
        public final MutableState k;
        public final MutableState l;
        public final MutableState m;
        public SeekableTransitionState.SeekingAnimationState n;
        public TargetBasedAnimation o;
        public final MutableState p;
        public final MutableFloatState q;
        public boolean r;
        public final MutableState s;
        public AnimationVector t;
        public final MutableLongState u;
        public boolean v;
        public final SpringSpec w;

        public TransitionAnimationState(Object obj, AnimationVector animationVector, TwoWayConverter twoWayConverter) {
            this.j = twoWayConverter;
            MutableState g = SnapshotStateKt.g(obj);
            this.k = g;
            Object obj2 = null;
            MutableState g2 = SnapshotStateKt.g(AnimationSpecKt.b(0.0f, 0.0f, null, 7));
            this.l = g2;
            this.m = SnapshotStateKt.g(new TargetBasedAnimation((FiniteAnimationSpec) ((SnapshotMutableStateImpl) g2).getValue(), twoWayConverter, obj, ((SnapshotMutableStateImpl) g).getValue(), animationVector));
            this.p = SnapshotStateKt.g(Boolean.TRUE);
            this.q = PrimitiveSnapshotStateKt.a(-1.0f);
            this.s = SnapshotStateKt.g(obj);
            this.t = animationVector;
            this.u = SnapshotLongStateKt.a(b().b());
            Float f = (Float) VisibilityThresholdsKt.a.get(twoWayConverter);
            if (f != null) {
                float floatValue = f.floatValue();
                AnimationVector animationVector2 = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(obj);
                int b = animationVector2.b();
                for (int i = 0; i < b; i++) {
                    animationVector2.e(i, floatValue);
                }
                obj2 = ((TwoWayConverterImpl) this.j).b.b(animationVector2);
            }
            this.w = AnimationSpecKt.b(0.0f, 0.0f, obj2, 3);
        }

        public final TargetBasedAnimation b() {
            return (TargetBasedAnimation) ((SnapshotMutableStateImpl) this.m).getValue();
        }

        public final float c() {
            return ((SnapshotMutableFloatStateImpl) this.q).j();
        }

        public final void e(long j) {
            if (c() == -1.0f) {
                this.v = true;
                if (Intrinsics.a(b().c, b().d)) {
                    h(b().c);
                } else {
                    h(b().f(j));
                    this.t = b().d(j);
                }
            }
        }

        @Override // androidx.compose.runtime.State
        public final Object getValue() {
            return ((SnapshotMutableStateImpl) this.s).getValue();
        }

        public final void h(Object obj) {
            this.s.setValue(obj);
        }

        public final void i(Object obj, boolean z) {
            Object obj2;
            FiniteAnimationSpec finiteAnimationSpec;
            AnimationSpec startDelayAnimationSpec;
            TargetBasedAnimation targetBasedAnimation = this.o;
            if (targetBasedAnimation != null) {
                obj2 = targetBasedAnimation.c;
            } else {
                obj2 = null;
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) this.k;
            boolean a = Intrinsics.a(obj2, snapshotMutableStateImpl.getValue());
            MutableLongState mutableLongState = this.u;
            MutableState mutableState = this.m;
            if (a) {
                ((SnapshotMutableStateImpl) mutableState).setValue(new TargetBasedAnimation(this.w, this.j, obj, obj, this.t.c()));
                this.r = true;
                ((SnapshotMutableLongStateImpl) mutableLongState).k(b().b());
                return;
            }
            MutableState mutableState2 = this.l;
            if (z && !this.v) {
                if (((FiniteAnimationSpec) ((SnapshotMutableStateImpl) mutableState2).getValue()) instanceof SpringSpec) {
                    finiteAnimationSpec = (FiniteAnimationSpec) ((SnapshotMutableStateImpl) mutableState2).getValue();
                } else {
                    finiteAnimationSpec = this.w;
                }
            } else {
                finiteAnimationSpec = (FiniteAnimationSpec) ((SnapshotMutableStateImpl) mutableState2).getValue();
            }
            Transition transition = Transition.this;
            if (transition.e() <= 0) {
                startDelayAnimationSpec = finiteAnimationSpec;
            } else {
                startDelayAnimationSpec = new StartDelayAnimationSpec(finiteAnimationSpec, transition.e());
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(new TargetBasedAnimation(startDelayAnimationSpec, this.j, obj, snapshotMutableStateImpl.getValue(), this.t));
            ((SnapshotMutableLongStateImpl) mutableLongState).k(b().b());
            this.r = false;
            transition.p(true);
            if (transition.h()) {
                SnapshotStateList snapshotStateList = transition.j;
                int size = snapshotStateList.size();
                long j = 0;
                for (int i = 0; i < size; i++) {
                    TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i);
                    j = Math.max(j, ((SnapshotMutableLongStateImpl) transitionAnimationState.u).j());
                    transitionAnimationState.e(0L);
                }
                transition.p(false);
            }
        }

        public final void j(Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec) {
            ((SnapshotMutableStateImpl) this.k).setValue(obj2);
            ((SnapshotMutableStateImpl) this.l).setValue(finiteAnimationSpec);
            if (Intrinsics.a(b().d, obj) && Intrinsics.a(b().c, obj2)) {
                return;
            }
            i(obj, false);
        }

        public final void k(Object obj, FiniteAnimationSpec finiteAnimationSpec, Object obj2, AnimationVector animationVector) {
            Object obj3;
            Object obj4;
            if (this.r) {
                TargetBasedAnimation targetBasedAnimation = this.o;
                if (targetBasedAnimation != null) {
                    obj4 = targetBasedAnimation.c;
                } else {
                    obj4 = null;
                }
                if (Intrinsics.a(obj, obj4)) {
                    return;
                }
            }
            MutableState mutableState = this.k;
            if (Intrinsics.a(((SnapshotMutableStateImpl) mutableState).getValue(), obj) && c() == -1.0f && (obj2 == null || obj2.equals(b().d))) {
                return;
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(obj);
            ((SnapshotMutableStateImpl) this.l).setValue(finiteAnimationSpec);
            if (obj2 == null) {
                if (c() == -3.0f) {
                    obj3 = obj;
                } else {
                    obj3 = ((SnapshotMutableStateImpl) this.s).getValue();
                }
            } else {
                obj3 = obj2;
            }
            if (obj2 != null) {
                h(obj3);
                if (animationVector != null) {
                    this.t = animationVector;
                }
            }
            MutableState mutableState2 = this.p;
            boolean z = true;
            i(obj3, !((Boolean) ((SnapshotMutableStateImpl) mutableState2).getValue()).booleanValue());
            if (c() != -3.0f) {
                z = false;
            }
            ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(z));
            if (c() >= 0.0f) {
                long b = b().b();
                h(b().f(c() * ((float) b)));
            } else if (c() == -3.0f) {
                h(obj);
            }
            this.r = false;
            ((SnapshotMutableFloatStateImpl) this.q).k(-1.0f);
        }

        public final String toString() {
            return "current value: " + ((SnapshotMutableStateImpl) this.s).getValue() + ", target: " + ((SnapshotMutableStateImpl) this.k).getValue() + ", spec: " + ((FiniteAnimationSpec) ((SnapshotMutableStateImpl) this.l).getValue());
        }
    }

    public Transition(TransitionState transitionState, Transition transition, String str) {
        this.a = transitionState;
        this.b = transition;
        this.c = str;
        this.d = SnapshotStateKt.g(transitionState.a());
        this.f = SnapshotStateKt.g(new SegmentImpl(transitionState.a(), transitionState.a()));
        Boolean bool = Boolean.FALSE;
        this.i = SnapshotStateKt.g(bool);
        this.j = new SnapshotStateList();
        this.k = new SnapshotStateList();
        this.l = SnapshotStateKt.g(bool);
        this.m = SnapshotStateKt.e(new wh(this, 1));
        transitionState.d(this);
    }

    public final void a(Object obj, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        int i3;
        boolean h;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1493585151);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(obj);
            } else {
                h = gapComposer.h(obj);
            }
            if (h) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(this)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        boolean z3 = true;
        int i5 = 0;
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            if (!h()) {
                gapComposer.W(466062241);
                s(obj);
                int i6 = i2 & 112;
                if (i6 == 32) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Object K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                if (z2 || K == composer$Companion$Empty$1) {
                    K = SnapshotStateKt.e(new wh(this, i5));
                    gapComposer.g0(K);
                }
                if (((Boolean) ((State) K).getValue()).booleanValue()) {
                    gapComposer.W(466470356);
                    Object K2 = gapComposer.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = EffectsKt.h(gapComposer);
                        gapComposer.g0(K2);
                    }
                    CoroutineScope coroutineScope = (CoroutineScope) K2;
                    boolean h2 = gapComposer.h(coroutineScope);
                    if (i6 != 32) {
                        z3 = false;
                    }
                    boolean z4 = h2 | z3;
                    Object K3 = gapComposer.K();
                    if (z4 || K3 == composer$Companion$Empty$1) {
                        K3 = new b(coroutineScope, this);
                        gapComposer.g0(K3);
                    }
                    EffectsKt.b(coroutineScope, this, (Function1) K3, gapComposer);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(467712929);
                    gapComposer.p(false);
                }
                gapComposer.p(false);
            } else {
                gapComposer.W(467722849);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(i, 11, this, obj);
        }
    }

    public final long b() {
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, ((SnapshotMutableLongStateImpl) ((TransitionAnimationState) snapshotStateList.get(i)).u).j());
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            j = Math.max(j, ((Transition) snapshotStateList2.get(i2)).b());
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i);
            transitionAnimationState.o = null;
            transitionAnimationState.n = null;
            transitionAnimationState.r = false;
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Transition) snapshotStateList2.get(i2)).c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d() {
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            if (((TransitionAnimationState) snapshotStateList.get(i)).n != null) {
                return true;
            }
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (((Transition) snapshotStateList2.get(i2)).d()) {
                return true;
            }
        }
        return false;
    }

    public final long e() {
        Transition transition = this.b;
        if (transition != null) {
            return transition.e();
        }
        return ((SnapshotMutableLongStateImpl) this.g).j();
    }

    public final Segment f() {
        return (Segment) ((SnapshotMutableStateImpl) this.f).getValue();
    }

    public final boolean g() {
        if (((SnapshotMutableLongStateImpl) this.h).j() != Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public final boolean h() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.l).getValue()).booleanValue();
    }

    public final void i(long j, boolean z) {
        long j2;
        MutableLongState mutableLongState = this.h;
        long j3 = ((SnapshotMutableLongStateImpl) mutableLongState).j();
        TransitionState transitionState = this.a;
        if (j3 == Long.MIN_VALUE) {
            ((SnapshotMutableLongStateImpl) mutableLongState).k(j);
            ((SnapshotMutableStateImpl) transitionState.a).setValue(Boolean.TRUE);
        } else if (!((Boolean) ((SnapshotMutableStateImpl) transitionState.a).getValue()).booleanValue()) {
            ((SnapshotMutableStateImpl) transitionState.a).setValue(Boolean.TRUE);
        }
        p(false);
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        boolean z2 = true;
        for (int i = 0; i < size; i++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i);
            MutableState mutableState = transitionAnimationState.p;
            MutableState mutableState2 = transitionAnimationState.p;
            if (!((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
                if (z) {
                    j2 = transitionAnimationState.b().b();
                } else {
                    j2 = j;
                }
                transitionAnimationState.h(transitionAnimationState.b().f(j2));
                transitionAnimationState.t = transitionAnimationState.b().d(j2);
                if (transitionAnimationState.b().e(j2)) {
                    ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.TRUE);
                }
            }
            if (!((Boolean) ((SnapshotMutableStateImpl) mutableState2).getValue()).booleanValue()) {
                z2 = false;
            }
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Transition transition = (Transition) snapshotStateList2.get(i2);
            MutableState mutableState3 = transition.d;
            TransitionState transitionState2 = transition.a;
            if (!Intrinsics.a(((SnapshotMutableStateImpl) mutableState3).getValue(), transitionState2.a())) {
                transition.i(j, z);
            }
            if (!Intrinsics.a(((SnapshotMutableStateImpl) transition.d).getValue(), transitionState2.a())) {
                z2 = false;
            }
        }
        if (z2) {
            j();
        }
    }

    public final void j() {
        ((SnapshotMutableLongStateImpl) this.h).k(Long.MIN_VALUE);
        TransitionState transitionState = this.a;
        if (transitionState instanceof MutableTransitionState) {
            transitionState.c(((SnapshotMutableStateImpl) this.d).getValue());
        }
        o(0L);
        ((SnapshotMutableStateImpl) transitionState.a).setValue(Boolean.FALSE);
        SnapshotStateList snapshotStateList = this.k;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            ((Transition) snapshotStateList.get(i)).j();
        }
    }

    public final void k(float f) {
        Object obj;
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i);
            transitionAnimationState.getClass();
            if (f == -4.0f || f == -5.0f) {
                TargetBasedAnimation targetBasedAnimation = transitionAnimationState.o;
                if (targetBasedAnimation != null) {
                    transitionAnimationState.b().h(targetBasedAnimation.c);
                    transitionAnimationState.n = null;
                    transitionAnimationState.o = null;
                }
                if (f == -4.0f) {
                    obj = transitionAnimationState.b().d;
                } else {
                    obj = transitionAnimationState.b().c;
                }
                transitionAnimationState.b().h(obj);
                transitionAnimationState.b().i(obj);
                transitionAnimationState.h(obj);
                ((SnapshotMutableLongStateImpl) transitionAnimationState.u).k(transitionAnimationState.b().b());
            } else {
                ((SnapshotMutableFloatStateImpl) transitionAnimationState.q).k(f);
            }
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Transition) snapshotStateList2.get(i2)).k(f);
        }
    }

    public final void l(Object obj, Object obj2) {
        ((SnapshotMutableLongStateImpl) this.h).k(Long.MIN_VALUE);
        TransitionState transitionState = this.a;
        ((SnapshotMutableStateImpl) transitionState.a).setValue(Boolean.FALSE);
        boolean h = h();
        MutableState mutableState = this.d;
        if (!h || !Intrinsics.a(transitionState.a(), obj) || !Intrinsics.a(((SnapshotMutableStateImpl) mutableState).getValue(), obj2)) {
            if (!Intrinsics.a(transitionState.a(), obj) && (transitionState instanceof MutableTransitionState)) {
                transitionState.c(obj);
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(obj2);
            ((SnapshotMutableStateImpl) this.l).setValue(Boolean.TRUE);
            ((SnapshotMutableStateImpl) this.f).setValue(new SegmentImpl(obj, obj2));
        }
        SnapshotStateList snapshotStateList = this.k;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            Transition transition = (Transition) snapshotStateList.get(i);
            transition.getClass();
            if (transition.h()) {
                transition.l(transition.a.a(), ((SnapshotMutableStateImpl) transition.d).getValue());
            }
        }
        SnapshotStateList snapshotStateList2 = this.j;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((TransitionAnimationState) snapshotStateList2.get(i2)).e(0L);
        }
    }

    public final void m(long j) {
        MutableLongState mutableLongState = this.h;
        if (((SnapshotMutableLongStateImpl) mutableLongState).j() == Long.MIN_VALUE) {
            ((SnapshotMutableLongStateImpl) mutableLongState).k(j);
        }
        o(j);
        p(false);
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            ((TransitionAnimationState) snapshotStateList.get(i)).e(j);
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Transition transition = (Transition) snapshotStateList2.get(i2);
            if (!Intrinsics.a(((SnapshotMutableStateImpl) transition.d).getValue(), transition.a.a())) {
                transition.m(j);
            }
        }
    }

    public final void n(SeekableTransitionState.SeekingAnimationState seekingAnimationState) {
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i);
            MutableState mutableState = transitionAnimationState.s;
            if (!Intrinsics.a(transitionAnimationState.b().c, transitionAnimationState.b().d)) {
                transitionAnimationState.o = transitionAnimationState.b();
                transitionAnimationState.n = seekingAnimationState;
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
            ((SnapshotMutableStateImpl) transitionAnimationState.m).setValue(new TargetBasedAnimation(transitionAnimationState.w, transitionAnimationState.j, snapshotMutableStateImpl.getValue(), snapshotMutableStateImpl.getValue(), transitionAnimationState.t.c()));
            ((SnapshotMutableLongStateImpl) transitionAnimationState.u).k(transitionAnimationState.b().b());
            transitionAnimationState.r = true;
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Transition) snapshotStateList2.get(i2)).n(seekingAnimationState);
        }
    }

    public final void o(long j) {
        if (this.b == null) {
            ((SnapshotMutableLongStateImpl) this.g).k(j);
        }
    }

    public final void p(boolean z) {
        ((SnapshotMutableStateImpl) this.i).setValue(Boolean.valueOf(z));
    }

    public final void q() {
        TargetBasedAnimation targetBasedAnimation;
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        for (int i = 0; i < size; i++) {
            TransitionAnimationState transitionAnimationState = (TransitionAnimationState) snapshotStateList.get(i);
            SeekableTransitionState.SeekingAnimationState seekingAnimationState = transitionAnimationState.n;
            if (seekingAnimationState != null && (targetBasedAnimation = transitionAnimationState.o) != null) {
                long c = MathKt.c(seekingAnimationState.g * seekingAnimationState.d);
                Object f = targetBasedAnimation.f(c);
                if (transitionAnimationState.r) {
                    transitionAnimationState.b().i(f);
                }
                transitionAnimationState.b().h(f);
                ((SnapshotMutableLongStateImpl) transitionAnimationState.u).k(transitionAnimationState.b().b());
                if (transitionAnimationState.c() == -2.0f || transitionAnimationState.r) {
                    transitionAnimationState.h(f);
                } else {
                    transitionAnimationState.e(Transition.this.e());
                }
                if (c >= seekingAnimationState.g) {
                    transitionAnimationState.n = null;
                    transitionAnimationState.o = null;
                } else {
                    seekingAnimationState.c = false;
                }
            }
        }
        SnapshotStateList snapshotStateList2 = this.k;
        int size2 = snapshotStateList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((Transition) snapshotStateList2.get(i2)).q();
        }
    }

    public final void r(EnterExitState enterExitState) {
        boolean z;
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) this.e;
        Object value = snapshotMutableStateImpl.getValue();
        TransitionState transitionState = this.a;
        MutableState mutableState = this.d;
        if (value != null && enterExitState == null && Intrinsics.a(((SnapshotMutableStateImpl) mutableState).getValue(), transitionState.a())) {
            z = true;
        } else {
            z = false;
        }
        snapshotMutableStateImpl.setValue(enterExitState);
        if (z) {
            ((SnapshotMutableStateImpl) this.f).setValue(new SegmentImpl(value, ((SnapshotMutableStateImpl) mutableState).getValue()));
            transitionState.c(value);
            if (!g()) {
                p(true);
            }
            SnapshotStateList snapshotStateList = this.j;
            int size = snapshotStateList.size();
            for (int i = 0; i < size; i++) {
                ((SnapshotMutableFloatStateImpl) ((TransitionAnimationState) snapshotStateList.get(i)).q).k(-2.0f);
            }
        }
    }

    public final void s(Object obj) {
        MutableState mutableState = this.d;
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
        if (!Intrinsics.a(snapshotMutableStateImpl.getValue(), obj)) {
            ((SnapshotMutableStateImpl) this.f).setValue(new SegmentImpl(snapshotMutableStateImpl.getValue(), obj));
            TransitionState transitionState = this.a;
            if (!Intrinsics.a(transitionState.a(), snapshotMutableStateImpl.getValue())) {
                transitionState.c(snapshotMutableStateImpl.getValue());
            }
            ((SnapshotMutableStateImpl) mutableState).setValue(obj);
            if (!g()) {
                p(true);
            }
            SnapshotStateList snapshotStateList = this.j;
            int size = snapshotStateList.size();
            for (int i = 0; i < size; i++) {
                ((SnapshotMutableFloatStateImpl) ((TransitionAnimationState) snapshotStateList.get(i)).q).k(-2.0f);
            }
        }
    }

    public final String toString() {
        SnapshotStateList snapshotStateList = this.j;
        int size = snapshotStateList.size();
        String str = "Transition animation values: ";
        for (int i = 0; i < size; i++) {
            str = str + ((TransitionAnimationState) snapshotStateList.get(i)) + ", ";
        }
        return str;
    }
}
