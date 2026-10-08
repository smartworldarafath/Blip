package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.EventInternal;
import defpackage.u2;
import io.sentry.d;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_EventInternal extends EventInternal {
    public final String a;
    public final Integer b;
    public final EncodedPayload c;
    public final long d;
    public final long e;
    public final Map f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends EventInternal.Builder {
        public String a;
        public Integer b;
        public EncodedPayload c;
        public Long d;
        public Long e;
        public HashMap f;

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal b() {
            String str;
            if (this.a == null) {
                str = " transportName";
            } else {
                str = "";
            }
            if (this.c == null) {
                str = str.concat(" encodedPayload");
            }
            if (this.d == null) {
                str = str.concat(" eventMillis");
            }
            if (this.e == null) {
                str = str.concat(" uptimeMillis");
            }
            if (this.f == null) {
                str = str.concat(" autoMetadata");
            }
            if (str.isEmpty()) {
                return new AutoValue_EventInternal(this.a, this.b, this.c, this.d.longValue(), this.e.longValue(), this.f);
            }
            u2.l("Missing required properties:".concat(str));
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final Map c() {
            HashMap hashMap = this.f;
            if (hashMap != null) {
                return hashMap;
            }
            u2.l("Property \"autoMetadata\" has not been set");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder d(Integer num) {
            this.b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder e(EncodedPayload encodedPayload) {
            if (encodedPayload != null) {
                this.c = encodedPayload;
                return this;
            }
            d.f("Null encodedPayload");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder f(long j) {
            this.d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder g(String str) {
            if (str != null) {
                this.a = str;
                return this;
            }
            d.f("Null transportName");
            return null;
        }

        @Override // com.google.android.datatransport.runtime.EventInternal.Builder
        public final EventInternal.Builder h(long j) {
            this.e = Long.valueOf(j);
            return this;
        }
    }

    public AutoValue_EventInternal(String str, Integer num, EncodedPayload encodedPayload, long j, long j2, HashMap hashMap) {
        this.a = str;
        this.b = num;
        this.c = encodedPayload;
        this.d = j;
        this.e = j2;
        this.f = hashMap;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final Integer c() {
        return this.b;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final EncodedPayload d() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final long e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EventInternal) {
            AutoValue_EventInternal autoValue_EventInternal = (AutoValue_EventInternal) ((EventInternal) obj);
            if (this.a.equals(autoValue_EventInternal.a)) {
                Integer num = autoValue_EventInternal.b;
                Integer num2 = this.b;
                if (num2 != null ? num2.equals(num) : num == null) {
                    if (this.c.equals(autoValue_EventInternal.c) && this.d == autoValue_EventInternal.d && this.e == autoValue_EventInternal.e && this.f.equals(autoValue_EventInternal.f)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.b;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int hashCode3 = (((hashCode2 ^ hashCode) * 1000003) ^ this.c.hashCode()) * 1000003;
        long j = this.d;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.e;
        return this.f.hashCode() ^ ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final String i() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.EventInternal
    public final long j() {
        return this.e;
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.a + ", code=" + this.b + ", encodedPayload=" + this.c + ", eventMillis=" + this.d + ", uptimeMillis=" + this.e + ", autoMetadata=" + this.f + "}";
    }
}
