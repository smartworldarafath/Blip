package kotlinx.coroutines;

import defpackage.f7;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.FunctionReference;
import kotlinx.coroutines.Job;

/* loaded from: classes.dex */
public abstract class JobKt {
    public static JobImpl a() {
        return new JobImpl(null);
    }

    public static final void b(CoroutineContext coroutineContext, CancellationException cancellationException) {
        Job job = (Job) coroutineContext.v(Job.Key.j);
        if (job != null) {
            job.n(cancellationException);
        }
    }

    public static final void c(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.v(Job.Key.j);
        if (job != null && !job.h()) {
            throw job.R();
        }
    }

    public static final Job d(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.v(Job.Key.j);
        if (job != null) {
            return job;
        }
        f7.i(coroutineContext, "Current context doesn't contain Job in it: ");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
    public static final DisposableHandle e(Job job, boolean z, JobNode jobNode) {
        if (job instanceof JobSupport) {
            return ((JobSupport) job).N(z, jobNode);
        }
        return job.P(jobNode.m(), z, new FunctionReference(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0));
    }

    public static final boolean f(CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.v(Job.Key.j);
        if (job != null) {
            return job.h();
        }
        return true;
    }
}
