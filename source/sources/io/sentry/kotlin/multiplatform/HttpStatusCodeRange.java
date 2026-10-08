package io.sentry.kotlin.multiplatform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HttpStatusCodeRange {
    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof HttpStatusCodeRange)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(599) + (Integer.hashCode(500) * 31);
    }

    public final String toString() {
        return "HttpStatusCodeRange(min=500, max=599)";
    }
}
