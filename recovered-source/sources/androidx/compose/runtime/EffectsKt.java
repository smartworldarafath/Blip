package androidx.compose.runtime;

import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import java.util.Arrays;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EffectsKt {
    public static final DisposableEffectScope a = new Object();

    public static final void a(ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1, String str, ActivityResultContract activityResultContract, Function1 function1, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(componentActivity$activityResultRegistry$1) | gapComposer.f(str) | gapComposer.f(activityResultContract);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new DisposableEffectImpl(function1);
            gapComposer.g0(K);
        }
    }

    public static final void b(Object obj, Object obj2, Function1 function1, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(obj) | gapComposer.f(obj2);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new DisposableEffectImpl(function1);
            gapComposer.g0(K);
        }
    }

    public static final void c(Object obj, Function1 function1, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(obj);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new DisposableEffectImpl(function1);
            gapComposer.g0(K);
        }
    }

    public static final void d(Object[] objArr, Function1 function1, Composer composer) {
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        GapComposer gapComposer = (GapComposer) composer;
        boolean d = gapComposer.d(copyOf.length);
        for (Object obj : copyOf) {
            d |= gapComposer.f(obj);
        }
        Object K = gapComposer.K();
        if (!d && K != Composer.Companion.a) {
            return;
        }
        gapComposer.g0(new DisposableEffectImpl(function1));
    }

    public static final void e(Composer composer, Object obj, Function2 function2) {
        CoroutineContext coroutineContext = ((GapComposer) composer).R;
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(obj);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new LaunchedEffectImpl(coroutineContext, function2);
            gapComposer.g0(K);
        }
    }

    public static final void f(Object obj, Object obj2, Function2 function2, Composer composer) {
        CoroutineContext coroutineContext = ((GapComposer) composer).R;
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(obj) | gapComposer.f(obj2);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new LaunchedEffectImpl(coroutineContext, function2);
            gapComposer.g0(K);
        }
    }

    public static final void g(Function0 function0, Composer composer) {
        Operations operations = ((GapComposer) composer).M.b.a;
        operations.d(Operation.SideEffect.c);
        Operations.WriteScope.a(operations, 0, function0);
    }

    public static final CoroutineScope h(Composer composer) {
        return new RememberedCoroutineScope(((GapComposer) composer).R);
    }
}
