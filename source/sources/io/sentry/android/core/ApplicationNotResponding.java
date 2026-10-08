package io.sentry.android.core;

import io.sentry.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ApplicationNotResponding extends RuntimeException {
    public final Thread j;

    public ApplicationNotResponding(String str, Thread thread) {
        super(str);
        Objects.b(thread, "Thread must be provided.");
        this.j = thread;
        setStackTrace(thread.getStackTrace());
    }

    public ApplicationNotResponding(String str) {
        super(str);
        this.j = null;
    }
}
