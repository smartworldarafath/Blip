package io.sentry.kotlin.multiplatform.protocol;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryException {
    public final String a;
    public final String b;
    public final String c;
    public final Long d;

    public SentryException(String str, String str2, String str3, Long l) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SentryException)) {
            return false;
        }
        SentryException sentryException = (SentryException) obj;
        if (Intrinsics.a(this.a, sentryException.a) && Intrinsics.a(this.b, sentryException.b) && Intrinsics.a(this.c, sentryException.c) && Intrinsics.a(this.d, sentryException.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i = 0;
        String str = this.a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = hashCode * 31;
        String str2 = this.b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        String str3 = this.c;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        Long l = this.d;
        if (l != null) {
            i = l.hashCode();
        }
        return i4 + i;
    }

    public final String toString() {
        return "SentryException(type=" + this.a + ", value=" + this.b + ", module=" + this.c + ", threadId=" + this.d + ')';
    }
}
