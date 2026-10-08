package kotlinx.coroutines.selects;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrySelectDetailedResult {
    public static final TrySelectDetailedResult j;
    public static final TrySelectDetailedResult k;
    public static final TrySelectDetailedResult l;
    public static final TrySelectDetailedResult m;
    public static final /* synthetic */ TrySelectDetailedResult[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, kotlinx.coroutines.selects.TrySelectDetailedResult] */
    static {
        ?? r0 = new Enum("SUCCESSFUL", 0);
        j = r0;
        ?? r1 = new Enum("REREGISTER", 1);
        k = r1;
        ?? r2 = new Enum("CANCELLED", 2);
        l = r2;
        ?? r3 = new Enum("ALREADY_SELECTED", 3);
        m = r3;
        TrySelectDetailedResult[] trySelectDetailedResultArr = {r0, r1, r2, r3};
        n = trySelectDetailedResultArr;
        EnumEntriesKt.a(trySelectDetailedResultArr);
    }

    public static TrySelectDetailedResult valueOf(String str) {
        return (TrySelectDetailedResult) Enum.valueOf(TrySelectDetailedResult.class, str);
    }

    public static TrySelectDetailedResult[] values() {
        return (TrySelectDetailedResult[]) n.clone();
    }
}
