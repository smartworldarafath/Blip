package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendRequest;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_BackendRequest extends BackendRequest {
    public final Iterable a;
    public final byte[] b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends BackendRequest.Builder {
        public ArrayList a;
        public byte[] b;

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest a() {
            String str;
            if (this.a == null) {
                str = " events";
            } else {
                str = "";
            }
            if (str.isEmpty()) {
                return new AutoValue_BackendRequest(this.a, this.b);
            }
            u2.l("Missing required properties:".concat(str));
            return null;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest.Builder b(ArrayList arrayList) {
            this.a = arrayList;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.BackendRequest.Builder
        public final BackendRequest.Builder c(byte[] bArr) {
            this.b = bArr;
            return this;
        }
    }

    public AutoValue_BackendRequest(ArrayList arrayList, byte[] bArr) {
        this.a = arrayList;
        this.b = bArr;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public final Iterable b() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRequest
    public final byte[] c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        byte[] bArr;
        if (obj == this) {
            return true;
        }
        if (obj instanceof BackendRequest) {
            BackendRequest backendRequest = (BackendRequest) obj;
            AutoValue_BackendRequest autoValue_BackendRequest = (AutoValue_BackendRequest) backendRequest;
            if (this.a.equals(autoValue_BackendRequest.a)) {
                if (backendRequest instanceof AutoValue_BackendRequest) {
                    bArr = ((AutoValue_BackendRequest) backendRequest).b;
                } else {
                    bArr = autoValue_BackendRequest.b;
                }
                if (Arrays.equals(this.b, bArr)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "BackendRequest{events=" + this.a + ", extras=" + Arrays.toString(this.b) + "}";
    }
}
