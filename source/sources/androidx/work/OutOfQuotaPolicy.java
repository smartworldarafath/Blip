package androidx.work;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OutOfQuotaPolicy {
    public static final OutOfQuotaPolicy j;
    public static final OutOfQuotaPolicy k;
    public static final /* synthetic */ OutOfQuotaPolicy[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.OutOfQuotaPolicy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.OutOfQuotaPolicy] */
    static {
        ?? r0 = new Enum("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
        j = r0;
        ?? r1 = new Enum("DROP_WORK_REQUEST", 1);
        k = r1;
        OutOfQuotaPolicy[] outOfQuotaPolicyArr = {r0, r1};
        l = outOfQuotaPolicyArr;
        EnumEntriesKt.a(outOfQuotaPolicyArr);
    }

    public static OutOfQuotaPolicy valueOf(String str) {
        return (OutOfQuotaPolicy) Enum.valueOf(OutOfQuotaPolicy.class, str);
    }

    public static OutOfQuotaPolicy[] values() {
        return (OutOfQuotaPolicy[]) l.clone();
    }
}
