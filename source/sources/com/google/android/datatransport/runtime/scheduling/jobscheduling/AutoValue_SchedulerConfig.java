package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.time.Clock;
import io.sentry.d;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoValue_SchedulerConfig extends SchedulerConfig {
    public final Clock a;
    public final Map b;

    public AutoValue_SchedulerConfig(Clock clock, Map map) {
        if (clock != null) {
            this.a = clock;
            if (map != null) {
                this.b = map;
                return;
            } else {
                d.f("Null values");
                throw null;
            }
        }
        d.f("Null clock");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SchedulerConfig) {
            AutoValue_SchedulerConfig autoValue_SchedulerConfig = (AutoValue_SchedulerConfig) ((SchedulerConfig) obj);
            if (this.a.equals(autoValue_SchedulerConfig.a) && this.b.equals(autoValue_SchedulerConfig.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.a + ", values=" + this.b + "}";
    }
}
