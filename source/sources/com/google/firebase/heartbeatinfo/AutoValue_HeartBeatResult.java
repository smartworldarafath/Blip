package com.google.firebase.heartbeatinfo;

import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_HeartBeatResult extends HeartBeatResult {
    public final String a;
    public final ArrayList b;

    public AutoValue_HeartBeatResult(String str, ArrayList arrayList) {
        if (str != null) {
            this.a = str;
            this.b = arrayList;
        } else {
            io.sentry.d.f("Null userAgent");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof HeartBeatResult) {
                AutoValue_HeartBeatResult autoValue_HeartBeatResult = (AutoValue_HeartBeatResult) ((HeartBeatResult) obj);
                if (this.a.equals(autoValue_HeartBeatResult.a) && this.b.equals(autoValue_HeartBeatResult.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.a + ", usedDates=" + this.b + "}";
    }
}
