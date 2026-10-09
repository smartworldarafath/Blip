package kotlinx.coroutines.scheduling;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Task implements Runnable {
    public long j;
    public boolean k;

    public Task(long j, boolean z) {
        this.j = j;
        this.k = z;
    }
}
