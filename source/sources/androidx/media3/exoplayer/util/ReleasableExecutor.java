package androidx.media3.exoplayer.util;

import defpackage.k8;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ReleasableExecutor extends Executor {
    static ReleasableExecutor E(final ExecutorService executorService, final k8 k8Var) {
        return new ReleasableExecutor() { // from class: androidx.media3.exoplayer.util.ReleasableExecutor.1
            @Override // androidx.media3.exoplayer.util.ReleasableExecutor
            public final void a() {
                k8Var.accept(executorService);
            }

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                executorService.execute(runnable);
            }
        };
    }

    void a();
}
