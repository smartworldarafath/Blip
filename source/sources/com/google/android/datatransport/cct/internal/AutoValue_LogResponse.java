package com.google.android.datatransport.cct.internal;

import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoValue_LogResponse extends LogResponse {
    public final long a;

    public AutoValue_LogResponse(long j) {
        this.a = j;
    }

    @Override // com.google.android.datatransport.cct.internal.LogResponse
    public final long b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LogResponse) {
            if (this.a == ((AutoValue_LogResponse) ((LogResponse) obj)).a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        return ((int) ((j >>> 32) ^ j)) ^ 1000003;
    }

    public final String toString() {
        return q.k(new StringBuilder("LogResponse{nextRequestWaitMillis="), this.a, "}");
    }
}
