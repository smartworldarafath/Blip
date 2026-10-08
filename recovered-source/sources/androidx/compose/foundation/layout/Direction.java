package androidx.compose.foundation.layout;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Direction {
    public static final Direction j;
    public static final Direction k;
    public static final Direction l;
    public static final /* synthetic */ Direction[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.layout.Direction] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.layout.Direction] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.layout.Direction] */
    static {
        ?? r0 = new Enum("Vertical", 0);
        j = r0;
        ?? r1 = new Enum("Horizontal", 1);
        k = r1;
        ?? r2 = new Enum("Both", 2);
        l = r2;
        Direction[] directionArr = {r0, r1, r2};
        m = directionArr;
        EnumEntriesKt.a(directionArr);
    }

    public static Direction valueOf(String str) {
        return (Direction) Enum.valueOf(Direction.class, str);
    }

    public static Direction[] values() {
        return (Direction[]) m.clone();
    }
}
