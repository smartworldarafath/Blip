package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Clock;
import defpackage.q;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_CreationContext extends CreationContext {
    public final Context a;
    public final Clock b;
    public final Clock c;
    public final String d;

    public AutoValue_CreationContext(Context context, Clock clock, Clock clock2, String str) {
        if (context != null) {
            this.a = context;
            if (clock != null) {
                this.b = clock;
                if (clock2 != null) {
                    this.c = clock2;
                    if (str != null) {
                        this.d = str;
                        return;
                    } else {
                        d.f("Null backendName");
                        throw null;
                    }
                }
                d.f("Null monotonicClock");
                throw null;
            }
            d.f("Null wallClock");
            throw null;
        }
        d.f("Null applicationContext");
        throw null;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Context a() {
        return this.a;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Clock b() {
        return this.c;
    }

    @Override // com.google.android.datatransport.runtime.backends.CreationContext
    public final Clock c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CreationContext) {
            AutoValue_CreationContext autoValue_CreationContext = (AutoValue_CreationContext) ((CreationContext) obj);
            if (this.a.equals(autoValue_CreationContext.a) && this.b.equals(autoValue_CreationContext.b) && this.c.equals(autoValue_CreationContext.c) && this.d.equals(autoValue_CreationContext.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.a);
        sb.append(", wallClock=");
        sb.append(this.b);
        sb.append(", monotonicClock=");
        sb.append(this.c);
        sb.append(", backendName=");
        return q.l(sb, this.d, "}");
    }
}
