package androidx.lifecycle;

import androidx.activity.ComponentActivity;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LifecycleOwnerKt {
    public static final LifecycleCoroutineScopeImpl a(ComponentActivity componentActivity) {
        LifecycleRegistry lifecycleRegistry = componentActivity.j;
        lifecycleRegistry.getClass();
        AtomicReference atomicReference = lifecycleRegistry.a;
        while (true) {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) atomicReference.a.get();
            if (lifecycleCoroutineScopeImpl != null) {
                return lifecycleCoroutineScopeImpl;
            }
            Job b = SupervisorKt.b();
            DefaultScheduler defaultScheduler = Dispatchers.a;
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = new LifecycleCoroutineScopeImpl(lifecycleRegistry, CoroutineContext.Element.DefaultImpls.c((JobSupport) b, MainDispatcherLoader.a.o));
            java.util.concurrent.atomic.AtomicReference atomicReference2 = atomicReference.a;
            while (!atomicReference2.compareAndSet(null, lifecycleCoroutineScopeImpl2)) {
                if (atomicReference2.get() != null) {
                    break;
                }
            }
            DefaultScheduler defaultScheduler2 = Dispatchers.a;
            BuildersKt.c(lifecycleCoroutineScopeImpl2, MainDispatcherLoader.a.o, null, new LifecycleCoroutineScopeImpl$register$1(lifecycleCoroutineScopeImpl2, null), 2);
            return lifecycleCoroutineScopeImpl2;
        }
    }
}
