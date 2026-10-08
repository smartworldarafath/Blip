package net.blip.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import defpackage.c9;
import defpackage.j6;
import defpackage.q;
import kotlin.Lazy;
import kotlin.LazyKt;
import net.blip.libblip.DeviceKind;
import net.blip.libblip.HardwareInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"HardwareIds"})
/* loaded from: classes.dex */
public final class HardwareInfoAndroid implements HardwareInfo {
    public final Lazy a;
    public final Lazy b = LazyKt.b(new j6(23));
    public final String c = Build.MANUFACTURER;
    public final String d = Build.MODEL;
    public final String e = "Android";
    public final String f = q.g(Build.VERSION.SDK_INT, "SDK ");
    public final DeviceKind g;

    public HardwareInfoAndroid(Context context) {
        DeviceKind deviceKind;
        this.a = LazyKt.b(new c9(context, 0));
        if ((context.getResources().getConfiguration().screenLayout & 15) >= 4) {
            deviceKind = DeviceKind.o;
        } else {
            deviceKind = DeviceKind.n;
        }
        this.g = deviceKind;
    }
}
