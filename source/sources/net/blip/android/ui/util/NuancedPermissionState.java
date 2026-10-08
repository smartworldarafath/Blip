package net.blip.android.ui.util;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NuancedPermissionState {
    public final boolean a;
    public final Function1 b;

    public NuancedPermissionState(Function1 function1, boolean z) {
        function1.getClass();
        this.a = z;
        this.b = function1;
    }

    public static void a(NuancedPermissionState nuancedPermissionState) {
        nuancedPermissionState.b.b(true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NuancedPermissionState)) {
            return false;
        }
        NuancedPermissionState nuancedPermissionState = (NuancedPermissionState) obj;
        if (this.a == nuancedPermissionState.a && Intrinsics.a(this.b, nuancedPermissionState.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "NuancedPermissionState(granted=" + this.a + ", doRequest=" + this.b + ")";
    }
}
