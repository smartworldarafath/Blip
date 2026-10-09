package io.sentry.kotlin.multiplatform.protocol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryId {
    public static final SentryId c = new SentryId("");
    public final String a;
    public final io.sentry.protocol.SentryId b;

    public SentryId(String str) {
        io.sentry.protocol.SentryId sentryId;
        this.a = str;
        if (str.length() == 0) {
            sentryId = io.sentry.protocol.SentryId.k;
        } else {
            sentryId = new io.sentry.protocol.SentryId(str);
        }
        this.b = sentryId;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SentryId) || !this.a.equals(((SentryId) obj).a)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return String.valueOf(this.b);
    }
}
