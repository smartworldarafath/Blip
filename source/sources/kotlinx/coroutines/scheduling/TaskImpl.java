package kotlinx.coroutines.scheduling;

import kotlinx.coroutines.DebugStringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TaskImpl extends Task {
    public final Runnable l;

    public TaskImpl(Runnable runnable, long j, boolean z) {
        super(j, z);
        this.l = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.l.run();
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.l;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(DebugStringsKt.a(runnable));
        sb.append(", ");
        sb.append(this.j);
        sb.append(", ");
        boolean z = this.k;
        String str2 = TasksKt.a;
        if (z) {
            str = "Blocking";
        } else {
            str = "Non-blocking";
        }
        sb.append(str);
        sb.append(']');
        return sb.toString();
    }
}
