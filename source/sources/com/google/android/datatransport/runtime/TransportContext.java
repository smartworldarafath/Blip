package com.google.android.datatransport.runtime;

import android.util.Base64;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.AutoValue_TransportContext;
import com.google.auto.value.AutoValue;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@AutoValue
/* loaded from: classes.dex */
public abstract class TransportContext {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract TransportContext a();

        public abstract Builder b(String str);

        public abstract Builder c(byte[] bArr);

        public abstract Builder d(Priority priority);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.datatransport.runtime.TransportContext$Builder, com.google.android.datatransport.runtime.AutoValue_TransportContext$Builder, java.lang.Object] */
    public static Builder a() {
        ?? obj = new Object();
        obj.c = Priority.j;
        return obj;
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract Priority d();

    public final boolean e() {
        if (((AutoValue_TransportContext) this).b != null) {
            return true;
        }
        return false;
    }

    public final TransportContext f(Priority priority) {
        Builder a = a();
        AutoValue_TransportContext autoValue_TransportContext = (AutoValue_TransportContext) this;
        a.b(autoValue_TransportContext.a);
        a.d(priority);
        AutoValue_TransportContext.Builder builder = (AutoValue_TransportContext.Builder) a;
        builder.b = autoValue_TransportContext.b;
        return builder.a();
    }

    public final String toString() {
        String encodeToString;
        AutoValue_TransportContext autoValue_TransportContext = (AutoValue_TransportContext) this;
        byte[] bArr = autoValue_TransportContext.b;
        if (bArr == null) {
            encodeToString = "";
        } else {
            encodeToString = Base64.encodeToString(bArr, 2);
        }
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(autoValue_TransportContext.a);
        sb.append(", ");
        sb.append(autoValue_TransportContext.c);
        sb.append(", ");
        return q.l(sb, encodeToString, ")");
    }
}
