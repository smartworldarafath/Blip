package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoValue_BackendResponse extends BackendResponse {
    public final BackendResponse.Status a;
    public final long b;

    public AutoValue_BackendResponse(BackendResponse.Status status, long j) {
        this.a = status;
        this.b = j;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public final long b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public final BackendResponse.Status c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof BackendResponse) {
                AutoValue_BackendResponse autoValue_BackendResponse = (AutoValue_BackendResponse) ((BackendResponse) obj);
                if (this.a.equals(autoValue_BackendResponse.a) && this.b == autoValue_BackendResponse.b) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        return ((int) ((j >>> 32) ^ j)) ^ hashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(this.a);
        sb.append(", nextRequestWaitMillis=");
        return q.k(sb, this.b, "}");
    }
}
