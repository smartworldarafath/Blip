package net.blip.android.ui.util;

import com.google.accompanist.permissions.PermissionStatus;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SuspendingPermissionState {
    public final PermissionStatus a;
    public final Function1 b;

    public SuspendingPermissionState(PermissionStatus permissionStatus, Function1 function1) {
        permissionStatus.getClass();
        function1.getClass();
        this.a = permissionStatus;
        this.b = function1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuspendingPermissionState)) {
            return false;
        }
        SuspendingPermissionState suspendingPermissionState = (SuspendingPermissionState) obj;
        if (Intrinsics.a(this.a, suspendingPermissionState.a) && Intrinsics.a(this.b, suspendingPermissionState.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "SuspendingPermissionState(status=" + this.a + ", request=" + this.b + ")";
    }
}
