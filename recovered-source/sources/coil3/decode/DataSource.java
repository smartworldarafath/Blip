package coil3.decode;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataSource {
    public static final DataSource j;
    public static final DataSource k;
    public static final DataSource l;
    public static final DataSource m;
    public static final /* synthetic */ DataSource[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [coil3.decode.DataSource, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [coil3.decode.DataSource, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [coil3.decode.DataSource, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [coil3.decode.DataSource, java.lang.Enum] */
    static {
        ?? r0 = new Enum("MEMORY_CACHE", 0);
        j = r0;
        ?? r1 = new Enum("MEMORY", 1);
        k = r1;
        ?? r2 = new Enum("DISK", 2);
        l = r2;
        ?? r3 = new Enum("NETWORK", 3);
        m = r3;
        DataSource[] dataSourceArr = {r0, r1, r2, r3};
        n = dataSourceArr;
        EnumEntriesKt.a(dataSourceArr);
    }

    public static DataSource valueOf(String str) {
        return (DataSource) Enum.valueOf(DataSource.class, str);
    }

    public static DataSource[] values() {
        return (DataSource[]) n.clone();
    }
}
