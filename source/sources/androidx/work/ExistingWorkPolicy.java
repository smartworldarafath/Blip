package androidx.work;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExistingWorkPolicy {
    public static final /* synthetic */ ExistingWorkPolicy[] j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.ExistingWorkPolicy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.ExistingWorkPolicy] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.work.ExistingWorkPolicy] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.work.ExistingWorkPolicy] */
    static {
        ExistingWorkPolicy[] existingWorkPolicyArr = {new Enum("REPLACE", 0), new Enum("KEEP", 1), new Enum("APPEND", 2), new Enum("APPEND_OR_REPLACE", 3)};
        j = existingWorkPolicyArr;
        EnumEntriesKt.a(existingWorkPolicyArr);
    }

    public static ExistingWorkPolicy valueOf(String str) {
        return (ExistingWorkPolicy) Enum.valueOf(ExistingWorkPolicy.class, str);
    }

    public static ExistingWorkPolicy[] values() {
        return (ExistingWorkPolicy[]) j.clone();
    }
}
