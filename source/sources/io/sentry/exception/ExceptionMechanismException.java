package io.sentry.exception;

import io.sentry.protocol.Mechanism;
import io.sentry.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExceptionMechanismException extends RuntimeException {
    public final Mechanism j;
    public final Throwable k;
    public final Thread l;
    public final boolean m;

    public ExceptionMechanismException(Mechanism mechanism, Throwable th, Thread thread, boolean z) {
        this.j = mechanism;
        Objects.b(th, "Throwable is required.");
        this.k = th;
        this.l = thread;
        this.m = z;
    }
}
