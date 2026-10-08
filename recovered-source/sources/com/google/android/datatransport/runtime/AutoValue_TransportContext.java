package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import defpackage.u2;
import io.sentry.d;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_TransportContext extends TransportContext {
    public final String a;
    public final byte[] b;
    public final Priority c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends TransportContext.Builder {
        public String a;
        public byte[] b;
        public Priority c;

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext a() {
            String str;
            if (this.a == null) {
                str = " backendName";
            } else {
                str = "";
            }
            if (this.c == null) {
                str = str.concat(" priority");
            }
            if (str.isEmpty()) {
                return new AutoValue_TransportContext(this.a, this.b, this.c);
            }
            u2.l("Missing required properties:".concat(str));
            return null;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder b(String str) {
            if (str != null) {
                this.a = str;
                return this;
            }
            d.f("Null backendName");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder c(byte[] bArr) {
            this.b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.TransportContext.Builder
        public final TransportContext.Builder d(Priority priority) {
            if (priority != null) {
                this.c = priority;
                return this;
            }
            d.f("Null priority");
            return null;
        }
    }

    public AutoValue_TransportContext(String str, byte[] bArr, Priority priority) {
        this.a = str;
        this.b = bArr;
        this.c = priority;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final String b() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final byte[] c() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.TransportContext
    public final Priority d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        byte[] bArr;
        if (obj == this) {
            return true;
        }
        if (obj instanceof TransportContext) {
            TransportContext transportContext = (TransportContext) obj;
            AutoValue_TransportContext autoValue_TransportContext = (AutoValue_TransportContext) transportContext;
            if (this.a.equals(autoValue_TransportContext.a)) {
                if (transportContext instanceof AutoValue_TransportContext) {
                    bArr = ((AutoValue_TransportContext) transportContext).b;
                } else {
                    bArr = autoValue_TransportContext.b;
                }
                if (Arrays.equals(this.b, bArr) && this.c.equals(autoValue_TransportContext.c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003);
    }
}
