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
public final class MessagingStatus implements WireEnum {
    public static final Companion k;
    public static final MessagingStatus$Companion$ADAPTER$1 l;
    public static final MessagingStatus m;
    public static final MessagingStatus n;
    public static final MessagingStatus o;
    public static final MessagingStatus p;
    public static final /* synthetic */ MessagingStatus[] q;
    public final int j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, net.blip.libblip.frontend.MessagingStatus$Companion] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.squareup.wire.EnumAdapter, net.blip.libblip.frontend.MessagingStatus$Companion$ADAPTER$1] */
    static {
        MessagingStatus messagingStatus = new MessagingStatus("CLOSED", 0, 0);
        m = messagingStatus;
        MessagingStatus messagingStatus2 = new MessagingStatus("PENDING", 1, 1);
        n = messagingStatus2;
        MessagingStatus messagingStatus3 = new MessagingStatus("OPEN", 2, 2);
        o = messagingStatus3;
        MessagingStatus messagingStatus4 = new MessagingStatus("CLOSING", 3, 3);
        p = messagingStatus4;
        MessagingStatus[] messagingStatusArr = {messagingStatus, messagingStatus2, messagingStatus3, messagingStatus4};
        q = messagingStatusArr;
        EnumEntriesKt.a(messagingStatusArr);
        k = new Object();
        l = new EnumAdapter(Reflection.a(MessagingStatus.class), Syntax.l, messagingStatus);
    }

    public MessagingStatus(String str, int i, int i2) {
        this.j = i2;
    }

    public static MessagingStatus valueOf(String str) {
        return (MessagingStatus) Enum.valueOf(MessagingStatus.class, str);
    }

    public static MessagingStatus[] values() {
        return (MessagingStatus[]) q.clone();
    }

    @Override // com.squareup.wire.WireEnum
    public final int getValue() {
        return this.j;
    }
}
