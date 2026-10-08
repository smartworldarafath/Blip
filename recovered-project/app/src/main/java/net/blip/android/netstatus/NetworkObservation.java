package net.blip.android.netstatus;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkObservation {
    public final boolean a;
    public final long b;

    public NetworkObservation(long j, boolean z) {
        this.a = z;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkObservation)) {
            return false;
        }
        NetworkObservation networkObservation = (NetworkObservation) obj;
        if (this.a == networkObservation.a && this.b == networkObservation.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "NetworkObservation(available=" + this.a + ", generation=" + this.b + ")";
    }
}
