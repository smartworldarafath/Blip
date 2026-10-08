package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.AutoValue_LogRequest;
import com.google.auto.value.AutoValue;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class LogRequest {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract LogRequest a();

        public abstract Builder b(ClientInfo clientInfo);

        public abstract Builder c(ArrayList arrayList);

        public abstract Builder d();

        public abstract Builder e(long j);

        public abstract Builder f(long j);

        public final void g(int i) {
            ((AutoValue_LogRequest.Builder) this).d = Integer.valueOf(i);
        }

        public final void h(String str) {
            ((AutoValue_LogRequest.Builder) this).e = str;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.cct.internal.LogRequest$Builder, java.lang.Object] */
    public static Builder a() {
        return new Object();
    }
}
