package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RepeatOnLifecycleKt {
    public static final Object a(LifecycleOwner lifecycleOwner, Function2 function2, Continuation continuation) {
        Object c;
        Lifecycle.State state = Lifecycle.State.j;
        Lifecycle g = lifecycleOwner.g();
        Lifecycle.State state2 = Lifecycle.State.j;
        Lifecycle.State state3 = ((LifecycleRegistry) g).i;
        Lifecycle.State state4 = Lifecycle.State.j;
        Unit unit = Unit.a;
        if (state3 == state4 || (c = CoroutineScopeKt.c(new RepeatOnLifecycleKt$repeatOnLifecycle$3(g, function2, null), continuation)) != CoroutineSingletons.j) {
            c = unit;
        }
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return unit;
    }
}
