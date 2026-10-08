package okhttp3.internal.concurrent;

import defpackage.q;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TaskLoggerKt {
    public static final void a(Task task, TaskQueue taskQueue, String str) {
        TaskRunner.i.fine(taskQueue.b + ' ' + String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)) + ": " + task.a);
    }

    public static final String b(long j) {
        String k;
        if (j <= -999500000) {
            k = q.k(new StringBuilder(), (j - 500000000) / 1000000000, " s ");
        } else if (j <= -999500) {
            k = q.k(new StringBuilder(), (j - 500000) / 1000000, " ms");
        } else if (j <= 0) {
            k = q.k(new StringBuilder(), (j - 500) / 1000, " µs");
        } else if (j < 999500) {
            k = q.k(new StringBuilder(), (j + 500) / 1000, " µs");
        } else if (j < 999500000) {
            k = q.k(new StringBuilder(), (j + 500000) / 1000000, " ms");
        } else {
            k = q.k(new StringBuilder(), (j + 500000000) / 1000000000, " s ");
        }
        return String.format("%6s", Arrays.copyOf(new Object[]{k}, 1));
    }
}
