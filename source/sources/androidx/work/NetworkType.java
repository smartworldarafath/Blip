package androidx.work;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkType {
    public static final NetworkType j;
    public static final NetworkType k;
    public static final NetworkType l;
    public static final NetworkType m;
    public static final NetworkType n;
    public static final NetworkType o;
    public static final /* synthetic */ NetworkType[] p;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.work.NetworkType, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.work.NetworkType, java.lang.Enum] */
    static {
        ?? r0 = new Enum("NOT_REQUIRED", 0);
        j = r0;
        ?? r1 = new Enum("CONNECTED", 1);
        k = r1;
        ?? r2 = new Enum("UNMETERED", 2);
        l = r2;
        ?? r3 = new Enum("NOT_ROAMING", 3);
        m = r3;
        ?? r4 = new Enum("METERED", 4);
        n = r4;
        ?? r5 = new Enum("TEMPORARILY_UNMETERED", 5);
        o = r5;
        NetworkType[] networkTypeArr = {r0, r1, r2, r3, r4, r5};
        p = networkTypeArr;
        EnumEntriesKt.a(networkTypeArr);
    }

    public static NetworkType valueOf(String str) {
        return (NetworkType) Enum.valueOf(NetworkType.class, str);
    }

    public static NetworkType[] values() {
        return (NetworkType[]) p.clone();
    }
}
