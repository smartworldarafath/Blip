package androidx.compose.ui.node;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Invalidation {
    public static final Invalidation j;
    public static final Invalidation k;
    public static final Invalidation l;
    public static final Invalidation m;
    public static final /* synthetic */ Invalidation[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.node.Invalidation] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.node.Invalidation] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.node.Invalidation] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.ui.node.Invalidation] */
    static {
        ?? r0 = new Enum("LookaheadMeasurement", 0);
        j = r0;
        ?? r1 = new Enum("LookaheadPlacement", 1);
        k = r1;
        ?? r2 = new Enum("Measurement", 2);
        l = r2;
        ?? r3 = new Enum("Placement", 3);
        m = r3;
        Invalidation[] invalidationArr = {r0, r1, r2, r3};
        n = invalidationArr;
        EnumEntriesKt.a(invalidationArr);
    }

    public static Invalidation valueOf(String str) {
        return (Invalidation) Enum.valueOf(Invalidation.class, str);
    }

    public static Invalidation[] values() {
        return (Invalidation[]) n.clone();
    }
}
