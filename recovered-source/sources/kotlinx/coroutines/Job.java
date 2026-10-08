package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Job extends CoroutineContext.Element {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key implements CoroutineContext.Key<Job> {
        public static final /* synthetic */ Key j = new Object();
    }

    Object O(ContinuationImpl continuationImpl);

    DisposableHandle P(boolean z, boolean z2, Function1 function1);

    CancellationException R();

    ChildHandle X(JobSupport jobSupport);

    boolean h();

    boolean isCancelled();

    void n(CancellationException cancellationException);

    boolean start();

    DisposableHandle v0(Function1 function1);
}
