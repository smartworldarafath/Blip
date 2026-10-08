package androidx.work;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkInfo$State {
    public static final WorkInfo$State j;
    public static final WorkInfo$State k;
    public static final WorkInfo$State l;
    public static final WorkInfo$State m;
    public static final WorkInfo$State n;
    public static final WorkInfo$State o;
    public static final /* synthetic */ WorkInfo$State[] p;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.work.WorkInfo$State] */
    static {
        ?? r0 = new Enum("ENQUEUED", 0);
        j = r0;
        ?? r1 = new Enum("RUNNING", 1);
        k = r1;
        ?? r2 = new Enum("SUCCEEDED", 2);
        l = r2;
        ?? r3 = new Enum("FAILED", 3);
        m = r3;
        ?? r4 = new Enum("BLOCKED", 4);
        n = r4;
        ?? r5 = new Enum("CANCELLED", 5);
        o = r5;
        WorkInfo$State[] workInfo$StateArr = {r0, r1, r2, r3, r4, r5};
        p = workInfo$StateArr;
        EnumEntriesKt.a(workInfo$StateArr);
    }

    public static WorkInfo$State valueOf(String str) {
        return (WorkInfo$State) Enum.valueOf(WorkInfo$State.class, str);
    }

    public static WorkInfo$State[] values() {
        return (WorkInfo$State[]) p.clone();
    }

    public final boolean a() {
        if (this != l && this != m && this != o) {
            return false;
        }
        return true;
    }
}
