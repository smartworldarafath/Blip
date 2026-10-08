package androidx.work;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackoffPolicy {
    public static final BackoffPolicy j;
    public static final BackoffPolicy k;
    public static final /* synthetic */ BackoffPolicy[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.BackoffPolicy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.BackoffPolicy] */
    static {
        ?? r0 = new Enum("EXPONENTIAL", 0);
        j = r0;
        ?? r1 = new Enum("LINEAR", 1);
        k = r1;
        BackoffPolicy[] backoffPolicyArr = {r0, r1};
        l = backoffPolicyArr;
        EnumEntriesKt.a(backoffPolicyArr);
    }

    public static BackoffPolicy valueOf(String str) {
        return (BackoffPolicy) Enum.valueOf(BackoffPolicy.class, str);
    }

    public static BackoffPolicy[] values() {
        return (BackoffPolicy[]) l.clone();
    }
}
