package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JobCancellationException extends CancellationException {
    public final transient JobSupport j;

    public JobCancellationException(String str, Throwable th, JobSupport jobSupport) {
        super(str);
        this.j = jobSupport;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof JobCancellationException) {
                JobCancellationException jobCancellationException = (JobCancellationException) obj;
                if (Intrinsics.a(jobCancellationException.getMessage(), getMessage())) {
                    Object obj2 = jobCancellationException.j;
                    if (obj2 == null) {
                        obj2 = NonCancellable.k;
                    }
                    Object obj3 = this.j;
                    if (obj3 == null) {
                        obj3 = NonCancellable.k;
                    }
                    if (!Intrinsics.a(obj2, obj3) || !Intrinsics.a(jobCancellationException.getCause(), getCause())) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        int i;
        String message = getMessage();
        message.getClass();
        int hashCode = message.hashCode() * 31;
        Object obj = this.j;
        if (obj == null) {
            obj = NonCancellable.k;
        }
        int hashCode2 = (obj.hashCode() + hashCode) * 31;
        Throwable cause = getCause();
        if (cause != null) {
            i = cause.hashCode();
        } else {
            i = 0;
        }
        return hashCode2 + i;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; job=");
        Object obj = this.j;
        if (obj == null) {
            obj = NonCancellable.k;
        }
        sb.append(obj);
        return sb.toString();
    }
}
