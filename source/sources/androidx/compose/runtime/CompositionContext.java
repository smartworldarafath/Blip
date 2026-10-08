package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import defpackage.r1;
import java.util.Set;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositionContext {
    public abstract void a(ControlledComposition controlledComposition, Function2 function2);

    public abstract ScatterSet b(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, Function2 function2);

    public abstract boolean d();

    public abstract boolean e();

    public abstract boolean f();

    public abstract long g();

    public abstract Composition h();

    public PersistentCompositionLocalMap i() {
        return CompositionContextKt.a;
    }

    public abstract CoroutineContext j();

    public abstract boolean k();

    public abstract void l(ControlledComposition controlledComposition);

    public abstract MovableContentState m(MovableContentStateReference movableContentStateReference);

    public abstract ScatterSet n(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet);

    public abstract void o(Set set);

    public abstract void q(RecomposeScopeImpl recomposeScopeImpl);

    public abstract void r(CompositionImpl compositionImpl);

    public abstract CancellationHandle s(r1 r1Var);

    public abstract void v(CompositionImpl compositionImpl);

    public void c() {
    }

    public void t() {
    }

    public void p(GapComposer gapComposer) {
    }

    public void u(GapComposer gapComposer) {
    }
}
