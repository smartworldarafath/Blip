package kotlinx.coroutines.flow;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SharingCommand {
    public static final SharingCommand j;
    public static final SharingCommand k;
    public static final SharingCommand l;
    public static final /* synthetic */ SharingCommand[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.flow.SharingCommand] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.flow.SharingCommand] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlinx.coroutines.flow.SharingCommand] */
    static {
        ?? r0 = new Enum("START", 0);
        j = r0;
        ?? r1 = new Enum("STOP", 1);
        k = r1;
        ?? r2 = new Enum("STOP_AND_RESET_REPLAY_CACHE", 2);
        l = r2;
        SharingCommand[] sharingCommandArr = {r0, r1, r2};
        m = sharingCommandArr;
        EnumEntriesKt.a(sharingCommandArr);
    }

    public static SharingCommand valueOf(String str) {
        return (SharingCommand) Enum.valueOf(SharingCommand.class, str);
    }

    public static SharingCommand[] values() {
        return (SharingCommand[]) m.clone();
    }
}
