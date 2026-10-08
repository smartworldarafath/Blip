package net.blip.android.ui.util;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SuspendingLauncher<I, O> {
    public final Function2 a;

    public SuspendingLauncher(Function2 function2) {
        function2.getClass();
        this.a = function2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof SuspendingLauncher) && Intrinsics.a(this.a, ((SuspendingLauncher) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SuspendingLauncher(launch=" + this.a + ")";
    }
}
