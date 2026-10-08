package coil3.request;

import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BaseRequestDelegate implements RequestDelegate {
    public final Job j;

    public /* synthetic */ BaseRequestDelegate(Job job) {
        this.j = job;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BaseRequestDelegate) {
            if (!this.j.equals(((BaseRequestDelegate) obj).j)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        return "BaseRequestDelegate(job=" + this.j + ")";
    }
}
