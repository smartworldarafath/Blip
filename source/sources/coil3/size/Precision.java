package coil3.size;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Precision {
    public static final Precision j;
    public static final Precision k;
    public static final /* synthetic */ Precision[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, coil3.size.Precision] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, coil3.size.Precision] */
    static {
        ?? r0 = new Enum("EXACT", 0);
        j = r0;
        ?? r1 = new Enum("INEXACT", 1);
        k = r1;
        Precision[] precisionArr = {r0, r1};
        l = precisionArr;
        EnumEntriesKt.a(precisionArr);
    }

    public static Precision valueOf(String str) {
        return (Precision) Enum.valueOf(Precision.class, str);
    }

    public static Precision[] values() {
        return (Precision[]) l.clone();
    }
}
