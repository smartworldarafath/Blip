package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Encoding;
import io.sentry.d;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EncodedPayload {
    public final Encoding a;
    public final byte[] b;

    public EncodedPayload(Encoding encoding, byte[] bArr) {
        if (encoding != null) {
            if (bArr != null) {
                this.a = encoding;
                this.b = bArr;
                return;
            } else {
                d.f("bytes is null");
                throw null;
            }
        }
        d.f("encoding is null");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncodedPayload)) {
            return false;
        }
        EncodedPayload encodedPayload = (EncodedPayload) obj;
        if (!this.a.equals(encodedPayload.a)) {
            return false;
        }
        return Arrays.equals(this.b, encodedPayload.b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.a + ", bytes=[...]}";
    }
}
