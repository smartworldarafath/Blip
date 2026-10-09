package net.blip.android.ui.util;

import android.os.Environment;
import defpackage.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CameraLauncherOptions {
    public final Function0 a;
    public final String b;

    public CameraLauncherOptions() {
        n nVar = new n(17);
        String str = Environment.DIRECTORY_PICTURES;
        str.getClass();
        this.a = nVar;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraLauncherOptions)) {
            return false;
        }
        CameraLauncherOptions cameraLauncherOptions = (CameraLauncherOptions) obj;
        if (Intrinsics.a(this.a, cameraLauncherOptions.a) && Intrinsics.a(this.b, cameraLauncherOptions.b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CameraLauncherOptions(filename=" + this.a + ", directory=" + this.b + ")";
    }
}
