package com.google.android.datatransport;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Priority {
    public static final Priority j;
    public static final Priority k;
    public static final Priority l;
    public static final /* synthetic */ Priority[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.datatransport.Priority] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.Priority] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.android.datatransport.Priority] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        j = r0;
        ?? r1 = new Enum("VERY_LOW", 1);
        k = r1;
        ?? r2 = new Enum("HIGHEST", 2);
        l = r2;
        m = new Priority[]{r0, r1, r2};
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }

    public static Priority[] values() {
        return (Priority[]) m.clone();
    }
}
