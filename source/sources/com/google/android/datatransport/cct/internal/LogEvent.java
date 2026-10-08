package com.google.android.datatransport.cct.internal;

import com.google.auto.value.AutoValue;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class LogEvent {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract LogEvent a();

        public abstract Builder b(Integer num);

        public abstract Builder c(long j);

        public abstract Builder d(long j);

        public abstract Builder e(NetworkConnectionInfo networkConnectionInfo);

        public abstract Builder f(long j);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.cct.internal.LogEvent$Builder, java.lang.Object, com.google.android.datatransport.cct.internal.AutoValue_LogEvent$Builder] */
    public static Builder a(String str) {
        ?? obj = new Object();
        obj.e = str;
        return obj;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.cct.internal.LogEvent$Builder, java.lang.Object, com.google.android.datatransport.cct.internal.AutoValue_LogEvent$Builder] */
    public static Builder b(byte[] bArr) {
        ?? obj = new Object();
        obj.d = bArr;
        return obj;
    }
}
