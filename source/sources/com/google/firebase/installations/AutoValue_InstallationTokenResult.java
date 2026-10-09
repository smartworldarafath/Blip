package com.google.firebase.installations;

import com.google.firebase.installations.InstallationTokenResult;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_InstallationTokenResult extends InstallationTokenResult {
    public final String a;
    public final long b;
    public final long c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends InstallationTokenResult.Builder {
        public String a;
        public long b;
        public byte c;
    }

    public AutoValue_InstallationTokenResult(long j, long j2, String str) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }

    @Override // com.google.firebase.installations.InstallationTokenResult
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InstallationTokenResult) {
            AutoValue_InstallationTokenResult autoValue_InstallationTokenResult = (AutoValue_InstallationTokenResult) ((InstallationTokenResult) obj);
            if (this.a.equals(autoValue_InstallationTokenResult.a) && this.b == autoValue_InstallationTokenResult.b && this.c == autoValue_InstallationTokenResult.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        long j2 = this.c;
        return ((int) (j2 ^ (j2 >>> 32))) ^ ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InstallationTokenResult{token=");
        sb.append(this.a);
        sb.append(", tokenExpirationTimestamp=");
        sb.append(this.b);
        sb.append(", tokenCreationTimestamp=");
        return q.k(sb, this.c, "}");
    }
}
