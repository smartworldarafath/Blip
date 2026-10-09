package net.blip.android.netstatus;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkGenerationTracker {
    public final boolean a;
    public Long b;
    public String c;
    public Boolean d;
    public Boolean e;
    public Boolean f;
    public long g;

    public NetworkGenerationTracker(boolean z) {
        this.a = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NetworkObservation a() {
        boolean z;
        Boolean bool = this.d;
        Boolean bool2 = Boolean.FALSE;
        if (!Intrinsics.a(bool, bool2)) {
            Boolean bool3 = this.e;
            Boolean bool4 = Boolean.TRUE;
            if (!Intrinsics.a(bool3, bool4)) {
                if (Intrinsics.a(this.d, bool4) && Intrinsics.a(this.e, bool2)) {
                    z = true;
                    if (!Intrinsics.a(this.f, Boolean.valueOf(z))) {
                        return null;
                    }
                    this.f = Boolean.valueOf(z);
                    long j = this.g + 1;
                    this.g = j;
                    return new NetworkObservation(j, z);
                }
                return null;
            }
        }
        z = false;
        if (!Intrinsics.a(this.f, Boolean.valueOf(z))) {
        }
    }
}
