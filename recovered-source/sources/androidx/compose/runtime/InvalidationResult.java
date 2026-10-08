package androidx.compose.runtime;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InvalidationResult {
    public static final InvalidationResult j;
    public static final InvalidationResult k;
    public static final InvalidationResult l;
    public static final InvalidationResult m;
    public static final /* synthetic */ InvalidationResult[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.runtime.InvalidationResult] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.runtime.InvalidationResult] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.runtime.InvalidationResult] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.runtime.InvalidationResult] */
    static {
        ?? r0 = new Enum("IGNORED", 0);
        j = r0;
        ?? r1 = new Enum("SCHEDULED", 1);
        k = r1;
        ?? r2 = new Enum("DEFERRED", 2);
        l = r2;
        ?? r3 = new Enum("IMMINENT", 3);
        m = r3;
        InvalidationResult[] invalidationResultArr = {r0, r1, r2, r3};
        n = invalidationResultArr;
        EnumEntriesKt.a(invalidationResultArr);
    }

    public static InvalidationResult valueOf(String str) {
        return (InvalidationResult) Enum.valueOf(InvalidationResult.class, str);
    }

    public static InvalidationResult[] values() {
        return (InvalidationResult[]) n.clone();
    }
}
