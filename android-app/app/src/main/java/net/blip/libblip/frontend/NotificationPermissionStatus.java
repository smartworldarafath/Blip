package net.blip.libblip.frontend;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Reflection;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationPermissionStatus implements WireEnum {
    public static final Companion k;
    public static final NotificationPermissionStatus$Companion$ADAPTER$1 l;
    public static final NotificationPermissionStatus m;
    public static final NotificationPermissionStatus n;
    public static final NotificationPermissionStatus o;
    public static final NotificationPermissionStatus p;
    public static final /* synthetic */ NotificationPermissionStatus[] q;
    public final int j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [net.blip.libblip.frontend.NotificationPermissionStatus$Companion, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.frontend.NotificationPermissionStatus$Companion$ADAPTER$1] */
    static {
        NotificationPermissionStatus notificationPermissionStatus = new NotificationPermissionStatus("UNKNOWN", 0, 0);
        m = notificationPermissionStatus;
        NotificationPermissionStatus notificationPermissionStatus2 = new NotificationPermissionStatus("CHECKING", 1, 1);
        n = notificationPermissionStatus2;
        NotificationPermissionStatus notificationPermissionStatus3 = new NotificationPermissionStatus("DENIED", 2, 2);
        o = notificationPermissionStatus3;
        NotificationPermissionStatus notificationPermissionStatus4 = new NotificationPermissionStatus("GRANTED", 3, 3);
        p = notificationPermissionStatus4;
        NotificationPermissionStatus[] notificationPermissionStatusArr = {notificationPermissionStatus, notificationPermissionStatus2, notificationPermissionStatus3, notificationPermissionStatus4};
        q = notificationPermissionStatusArr;
        EnumEntriesKt.a(notificationPermissionStatusArr);
        k = new Object();
        l = new EnumAdapter(Reflection.a(NotificationPermissionStatus.class), Syntax.l, notificationPermissionStatus);
    }

    public NotificationPermissionStatus(String str, int i, int i2) {
        this.j = i2;
    }

    public static NotificationPermissionStatus valueOf(String str) {
        return (NotificationPermissionStatus) Enum.valueOf(NotificationPermissionStatus.class, str);
    }

    public static NotificationPermissionStatus[] values() {
        return (NotificationPermissionStatus[]) q.clone();
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.j;
    }
}
