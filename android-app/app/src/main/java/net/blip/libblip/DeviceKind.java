package net.blip.libblip;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Reflection;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeviceKind implements WireEnum {
    public static final Companion k;
    public static final DeviceKind$Companion$ADAPTER$1 l;
    public static final DeviceKind m;
    public static final DeviceKind n;
    public static final DeviceKind o;
    public static final DeviceKind p;
    public static final DeviceKind q;
    public static final /* synthetic */ DeviceKind[] r;
    public final int j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [net.blip.libblip.DeviceKind$Companion, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [net.blip.libblip.DeviceKind$Companion$ADAPTER$1, com.squareup.wire.EnumAdapter] */
    static {
        DeviceKind deviceKind = new DeviceKind("GenericDevice", 0, 0);
        m = deviceKind;
        DeviceKind deviceKind2 = new DeviceKind("Phone", 1, 2);
        n = deviceKind2;
        DeviceKind deviceKind3 = new DeviceKind("Tablet", 2, 3);
        o = deviceKind3;
        DeviceKind deviceKind4 = new DeviceKind("Laptop", 3, 4);
        p = deviceKind4;
        DeviceKind deviceKind5 = new DeviceKind("Desktop", 4, 5);
        q = deviceKind5;
        DeviceKind[] deviceKindArr = {deviceKind, deviceKind2, deviceKind3, deviceKind4, deviceKind5};
        r = deviceKindArr;
        EnumEntriesKt.a(deviceKindArr);
        k = new Object();
        l = new EnumAdapter(Reflection.a(DeviceKind.class), Syntax.l, deviceKind);
    }

    public DeviceKind(String str, int i, int i2) {
        this.j = i2;
    }

    public static DeviceKind valueOf(String str) {
        return (DeviceKind) Enum.valueOf(DeviceKind.class, str);
    }

    public static DeviceKind[] values() {
        return (DeviceKind[]) r.clone();
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.j;
    }
}
