package kotlinx.coroutines;

import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TimeoutCancellationException extends CancellationException {
    public final transient Job j;

    public TimeoutCancellationException(String str, Job job) {
        super(str);
        this.j = job;
    }
}
