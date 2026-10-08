package kotlin;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyThreadSafetyMode {
    public static final LazyThreadSafetyMode j;
    public static final LazyThreadSafetyMode k;
    public static final /* synthetic */ LazyThreadSafetyMode[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.LazyThreadSafetyMode, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.LazyThreadSafetyMode, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.LazyThreadSafetyMode, java.lang.Enum] */
    static {
        ?? r0 = new Enum("SYNCHRONIZED", 0);
        ?? r1 = new Enum("PUBLICATION", 1);
        j = r1;
        ?? r2 = new Enum("NONE", 2);
        k = r2;
        LazyThreadSafetyMode[] lazyThreadSafetyModeArr = {r0, r1, r2};
        l = lazyThreadSafetyModeArr;
        EnumEntriesKt.a(lazyThreadSafetyModeArr);
    }

    public static LazyThreadSafetyMode valueOf(String str) {
        return (LazyThreadSafetyMode) Enum.valueOf(LazyThreadSafetyMode.class, str);
    }

    public static LazyThreadSafetyMode[] values() {
        return (LazyThreadSafetyMode[]) l.clone();
    }
}
