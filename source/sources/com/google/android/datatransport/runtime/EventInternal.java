package com.google.android.datatransport.runtime;

import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class EventInternal {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public final void a(String str, String str2) {
            ((HashMap) c()).put(str, str2);
        }

        public abstract EventInternal b();

        public abstract Map c();

        public abstract Builder d(Integer num);

        public abstract Builder e(EncodedPayload encodedPayload);

        public abstract Builder f(long j);

        public abstract Builder g(String str);

        public abstract Builder h(long j);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.EventInternal$Builder, com.google.android.datatransport.runtime.AutoValue_EventInternal$Builder, java.lang.Object] */
    public static Builder a() {
        ?? obj = new Object();
        obj.f = new HashMap();
        return obj;
    }

    public final String b(String str) {
        String str2 = (String) ((AutoValue_EventInternal) this).f.get(str);
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    public abstract Integer c();

    public abstract EncodedPayload d();

    public abstract long e();

    public final int f(String str) {
        String str2 = (String) ((AutoValue_EventInternal) this).f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final long g() {
        String str = (String) ((AutoValue_EventInternal) this).f.get("tz-offset");
        if (str == null) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }

    public final Map h() {
        return Collections.unmodifiableMap(((AutoValue_EventInternal) this).f);
    }

    public abstract String i();

    public abstract long j();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.EventInternal$Builder, com.google.android.datatransport.runtime.AutoValue_EventInternal$Builder, java.lang.Object] */
    public final Builder k() {
        ?? obj = new Object();
        AutoValue_EventInternal autoValue_EventInternal = (AutoValue_EventInternal) this;
        obj.g(autoValue_EventInternal.a);
        obj.b = autoValue_EventInternal.b;
        obj.e(autoValue_EventInternal.c);
        obj.d = Long.valueOf(autoValue_EventInternal.d);
        obj.e = Long.valueOf(autoValue_EventInternal.e);
        obj.f = new HashMap(autoValue_EventInternal.f);
        return obj;
    }
}
