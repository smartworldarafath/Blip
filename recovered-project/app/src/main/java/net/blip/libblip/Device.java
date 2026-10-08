package net.blip.libblip;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.jb;
import defpackage.q;
import java.time.Instant;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Device extends Message {
    public static final Device$Companion$ADAPTER$1 t = new ProtoAdapter(FieldEncoding.m, Reflection.a(Device.class), "type.googleapis.com/blip.Device", Syntax.l, null, 0);
    public final String m;
    public final DeviceKind n;
    public final String o;
    public final DeviceReach p;
    public final Instant q;
    public final boolean r;
    public final DeviceSettings s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Device(String str, DeviceKind deviceKind, String str2, DeviceReach deviceReach, Instant instant, boolean z, DeviceSettings deviceSettings, ByteString byteString) {
        super(t, byteString);
        str.getClass();
        deviceKind.getClass();
        str2.getClass();
        byteString.getClass();
        this.m = str;
        this.n = deviceKind;
        this.o = str2;
        this.p = deviceReach;
        this.q = instant;
        this.r = z;
        this.s = deviceSettings;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Device)) {
            return false;
        }
        Device device = (Device) obj;
        if (Intrinsics.a(a(), device.a()) && Intrinsics.a(this.m, device.m) && this.n == device.n && Intrinsics.a(this.o, device.o) && Intrinsics.a(this.p, device.p) && Intrinsics.a(this.q, device.q) && this.r == device.r && Intrinsics.a(this.s, device.s)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3 = this.l;
        if (i3 == 0) {
            int c = jb.c(this.o, (this.n.hashCode() + jb.c(this.m, a().hashCode() * 37, 37)) * 37, 37);
            int i4 = 0;
            DeviceReach deviceReach = this.p;
            if (deviceReach != null) {
                i = deviceReach.hashCode();
            } else {
                i = 0;
            }
            int i5 = (c + i) * 37;
            Instant instant = this.q;
            if (instant != null) {
                i2 = instant.hashCode();
            } else {
                i2 = 0;
            }
            int b = jb.b((i5 + i2) * 37, 37, this.r);
            DeviceSettings deviceSettings = this.s;
            if (deviceSettings != null) {
                i4 = deviceSettings.hashCode();
            }
            int i6 = b + i4;
            this.l = i6;
            return i6;
        }
        return i3;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "device_id=", arrayList);
        arrayList.add("kind=" + this.n);
        q.z(this.o, "name=", arrayList);
        DeviceReach deviceReach = this.p;
        if (deviceReach != null) {
            arrayList.add("reach=" + deviceReach);
        }
        Instant instant = this.q;
        if (instant != null) {
            arrayList.add("last_online=" + instant);
        }
        q.A("is_self=", this.r, arrayList);
        DeviceSettings deviceSettings = this.s;
        if (deviceSettings != null) {
            arrayList.add("settings=" + deviceSettings);
        }
        return CollectionsKt.y(arrayList, ", ", "Device{", "}", null, 56);
    }
}
