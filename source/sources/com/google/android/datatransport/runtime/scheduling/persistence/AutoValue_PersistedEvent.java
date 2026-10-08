package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AutoValue_PersistedEvent extends PersistedEvent {
    public final long a;
    public final TransportContext b;
    public final EventInternal c;

    public AutoValue_PersistedEvent(long j, TransportContext transportContext, EventInternal eventInternal) {
        this.a = j;
        this.b = transportContext;
        this.c = eventInternal;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent
    public final EventInternal a() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof PersistedEvent) {
                AutoValue_PersistedEvent autoValue_PersistedEvent = (AutoValue_PersistedEvent) ((PersistedEvent) obj);
                if (this.a == autoValue_PersistedEvent.a && this.b.equals(autoValue_PersistedEvent.b) && this.c.equals(autoValue_PersistedEvent.c)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j = this.a;
        return this.c.hashCode() ^ ((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.a + ", transportContext=" + this.b + ", event=" + this.c + "}";
    }
}
