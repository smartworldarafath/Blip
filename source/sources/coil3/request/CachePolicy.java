package coil3.request;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CachePolicy {
    public static final CachePolicy l;
    public static final CachePolicy m;
    public static final /* synthetic */ CachePolicy[] n;
    public final boolean j;
    public final boolean k;

    static {
        CachePolicy cachePolicy = new CachePolicy("ENABLED", 0, true, true);
        l = cachePolicy;
        CachePolicy cachePolicy2 = new CachePolicy("READ_ONLY", 1, true, false);
        CachePolicy cachePolicy3 = new CachePolicy("WRITE_ONLY", 2, false, true);
        CachePolicy cachePolicy4 = new CachePolicy("DISABLED", 3, false, false);
        m = cachePolicy4;
        CachePolicy[] cachePolicyArr = {cachePolicy, cachePolicy2, cachePolicy3, cachePolicy4};
        n = cachePolicyArr;
        EnumEntriesKt.a(cachePolicyArr);
    }

    public CachePolicy(String str, int i, boolean z, boolean z2) {
        this.j = z;
        this.k = z2;
    }

    public static CachePolicy valueOf(String str) {
        return (CachePolicy) Enum.valueOf(CachePolicy.class, str);
    }

    public static CachePolicy[] values() {
        return (CachePolicy[]) n.clone();
    }
}
