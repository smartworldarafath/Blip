package kotlinx.coroutines.tasks;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TasksKt {
    public static final Object a(Task task, ContinuationImpl continuationImpl) {
        if (task.j()) {
            Exception f = task.f();
            if (f == null) {
                if (!task.i()) {
                    return task.g();
                }
                throw new CancellationException("Task " + task + " was cancelled normally.");
            }
            throw f;
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuationImpl));
        cancellableContinuationImpl.v();
        task.b(DirectExecutor.j, new OnCompleteListener() { // from class: kotlinx.coroutines.tasks.TasksKt$awaitImpl$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void h(Task task2) {
                Exception f2 = task2.f();
                CancellableContinuationImpl cancellableContinuationImpl2 = CancellableContinuationImpl.this;
                if (f2 == null) {
                    if (task2.i()) {
                        cancellableContinuationImpl2.p(null);
                        return;
                    } else {
                        cancellableContinuationImpl2.g(task2.g());
                        return;
                    }
                }
                cancellableContinuationImpl2.g(new Result.Failure(f2));
            }
        });
        Object u = cancellableContinuationImpl.u();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        return u;
    }
}
