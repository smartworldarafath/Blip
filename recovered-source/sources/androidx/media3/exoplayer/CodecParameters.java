package androidx.media3.exoplayer;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CodecParameters {
    public static final CodecParameters b = new CodecParameters(new Builder().a);
    public final Map a;

    public CodecParameters(HashMap hashMap) {
        this.a = Collections.unmodifiableMap(hashMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CodecParameters)) {
            return false;
        }
        return this.a.equals(((CodecParameters) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final HashMap a;

        public Builder(CodecParameters codecParameters) {
            this.a = new HashMap(codecParameters.a);
        }

        public Builder() {
            this.a = new HashMap();
        }
    }
}
