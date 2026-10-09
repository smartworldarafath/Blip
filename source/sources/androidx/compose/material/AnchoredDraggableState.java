package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.f0;
import defpackage.u2;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnchoredDraggableState<T> {
    public final Function1 a;
    public final Function0 b;
    public final AnimationSpec c;
    public final Function1 d;
    public final MutableState g;
    public final State h;
    public final State i;
    public final MutableFloatState k;
    public final MutableState l;
    public final MutableState m;
    public final AnchoredDraggableState$anchoredDragScope$1 n;
    public final InternalMutatorMutex e = new InternalMutatorMutex();
    public final AnchoredDraggableState$draggableState$1 f = new AnchoredDraggableState$draggableState$1(this);
    public final MutableFloatState j = PrimitiveSnapshotStateKt.a(Float.NaN);

    public AnchoredDraggableState(Object obj, Function1 function1, Function0 function0, AnimationSpec animationSpec, Function1 function12) {
        Map map;
        this.a = function1;
        this.b = function0;
        this.c = animationSpec;
        this.d = function12;
        this.g = SnapshotStateKt.g(obj);
        int i = 0;
        this.h = SnapshotStateKt.e(new f0(this, i));
        this.i = SnapshotStateKt.e(new a(i, this));
        SnapshotStateKt.d(SnapshotStateKt.m(), new a(1, this));
        this.k = PrimitiveSnapshotStateKt.a(0.0f);
        this.l = SnapshotStateKt.g(null);
        map = EmptyMap.j;
        this.m = SnapshotStateKt.g(new MapDraggableAnchors(map));
        this.n = new AnchoredDraggableState$anchoredDragScope$1(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(MutatePriority mutatePriority, Function3 function3, ContinuationImpl continuationImpl) {
        AnchoredDraggableState$anchoredDrag$1 anchoredDraggableState$anchoredDrag$1;
        int i;
        Function1 function1;
        Object a;
        try {
            if (continuationImpl instanceof AnchoredDraggableState$anchoredDrag$1) {
                anchoredDraggableState$anchoredDrag$1 = (AnchoredDraggableState$anchoredDrag$1) continuationImpl;
                int i2 = anchoredDraggableState$anchoredDrag$1.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anchoredDraggableState$anchoredDrag$1.o = i2 - Integer.MIN_VALUE;
                    Object obj = anchoredDraggableState$anchoredDrag$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anchoredDraggableState$anchoredDrag$1.o;
                    function1 = this.d;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        InternalMutatorMutex internalMutatorMutex = this.e;
                        AnchoredDraggableState$anchoredDrag$2 anchoredDraggableState$anchoredDrag$2 = new AnchoredDraggableState$anchoredDrag$2(this, null, function3);
                        anchoredDraggableState$anchoredDrag$1.o = 1;
                        internalMutatorMutex.getClass();
                        if (CoroutineScopeKt.c(new InternalMutatorMutex$mutate$2(mutatePriority, internalMutatorMutex, anchoredDraggableState$anchoredDrag$2, null), anchoredDraggableState$anchoredDrag$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    if (a != null && Math.abs(e() - ((MapDraggableAnchors) d()).c(a)) <= 0.5f && ((Boolean) function1.b(a)).booleanValue()) {
                        g(a);
                    }
                    return Unit.a;
                }
            }
            if (i == 0) {
            }
            if (a != null) {
                g(a);
            }
            return Unit.a;
        } finally {
            a = ((MapDraggableAnchors) d()).a(e());
            if (a != null && Math.abs(e() - ((MapDraggableAnchors) d()).c(a)) <= 0.5f && ((Boolean) function1.b(a)).booleanValue()) {
                g(a);
            }
        }
        anchoredDraggableState$anchoredDrag$1 = new AnchoredDraggableState$anchoredDrag$1(this, continuationImpl);
        Object obj2 = anchoredDraggableState$anchoredDrag$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anchoredDraggableState$anchoredDrag$1.o;
        function1 = this.d;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, MutatePriority mutatePriority, Function4 function4, ContinuationImpl continuationImpl) {
        AnchoredDraggableState$anchoredDrag$3 anchoredDraggableState$anchoredDrag$3;
        int i;
        Function1 function1;
        Object a;
        try {
            if (continuationImpl instanceof AnchoredDraggableState$anchoredDrag$3) {
                anchoredDraggableState$anchoredDrag$3 = (AnchoredDraggableState$anchoredDrag$3) continuationImpl;
                int i2 = anchoredDraggableState$anchoredDrag$3.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anchoredDraggableState$anchoredDrag$3.o = i2 - Integer.MIN_VALUE;
                    Object obj2 = anchoredDraggableState$anchoredDrag$3.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anchoredDraggableState$anchoredDrag$3.o;
                    function1 = this.d;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        if (((MapDraggableAnchors) d()).a.containsKey(obj)) {
                            InternalMutatorMutex internalMutatorMutex = this.e;
                            AnchoredDraggableState$anchoredDrag$4 anchoredDraggableState$anchoredDrag$4 = new AnchoredDraggableState$anchoredDrag$4(this, obj, function4, null);
                            anchoredDraggableState$anchoredDrag$3.o = 1;
                            internalMutatorMutex.getClass();
                            if (CoroutineScopeKt.c(new InternalMutatorMutex$mutate$2(mutatePriority, internalMutatorMutex, anchoredDraggableState$anchoredDrag$4, null), anchoredDraggableState$anchoredDrag$3) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } else {
                            g(obj);
                            return Unit.a;
                        }
                    }
                    if (a != null && Math.abs(e() - ((MapDraggableAnchors) d()).c(a)) <= 0.5f && ((Boolean) function1.b(a)).booleanValue()) {
                        g(a);
                    }
                    return Unit.a;
                }
            }
            if (i == 0) {
            }
            if (a != null) {
                g(a);
            }
            return Unit.a;
        } finally {
            h(null);
            a = ((MapDraggableAnchors) d()).a(e());
            if (a != null && Math.abs(e() - ((MapDraggableAnchors) d()).c(a)) <= 0.5f && ((Boolean) function1.b(a)).booleanValue()) {
                g(a);
            }
        }
        anchoredDraggableState$anchoredDrag$3 = new AnchoredDraggableState$anchoredDrag$3(this, continuationImpl);
        Object obj22 = anchoredDraggableState$anchoredDrag$3.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = anchoredDraggableState$anchoredDrag$3.o;
        function1 = this.d;
    }

    public final Object c(float f, float f2, Object obj) {
        MapDraggableAnchors mapDraggableAnchors = (MapDraggableAnchors) d();
        float c = mapDraggableAnchors.c(obj);
        float floatValue = ((Number) this.b.a()).floatValue();
        if (c != f && !Float.isNaN(c)) {
            Function1 function1 = this.a;
            if (c < f) {
                if (f2 >= floatValue) {
                    Object b = mapDraggableAnchors.b(f, true);
                    b.getClass();
                    return b;
                }
                Object b2 = mapDraggableAnchors.b(f, true);
                b2.getClass();
                if (f >= Math.abs(Math.abs(((Number) function1.b(Float.valueOf(Math.abs(mapDraggableAnchors.c(b2) - c)))).floatValue()) + c)) {
                    return b2;
                }
            } else {
                if (f2 <= (-floatValue)) {
                    Object b3 = mapDraggableAnchors.b(f, false);
                    b3.getClass();
                    return b3;
                }
                Object b4 = mapDraggableAnchors.b(f, false);
                b4.getClass();
                float abs = Math.abs(c - Math.abs(((Number) function1.b(Float.valueOf(Math.abs(c - mapDraggableAnchors.c(b4))))).floatValue()));
                if (f >= 0.0f ? f <= abs : Math.abs(f) >= abs) {
                    return b4;
                }
            }
        }
        return obj;
    }

    public final DraggableAnchors d() {
        return (DraggableAnchors) ((SnapshotMutableStateImpl) this.m).getValue();
    }

    public final float e() {
        return ((SnapshotMutableFloatStateImpl) this.j).j();
    }

    public final float f() {
        if (!Float.isNaN(e())) {
            return e();
        }
        u2.l("The offset was read before being initialized. Did you access the offset in a phase before layout, like effects or composition?");
        return 0.0f;
    }

    public final void g(Object obj) {
        ((SnapshotMutableStateImpl) this.g).setValue(obj);
    }

    public final void h(Object obj) {
        ((SnapshotMutableStateImpl) this.l).setValue(obj);
    }
}
