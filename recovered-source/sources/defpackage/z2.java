package defpackage;

import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z2 implements Executor {
    public final /* synthetic */ int j;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.j) {
            case 0:
                ArchTaskExecutor.a().a.b.execute(runnable);
                return;
            case 1:
                return;
            default:
                runnable.run();
                return;
        }
    }

    private final void b(Runnable runnable) {
    }
}
