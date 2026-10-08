package kotlinx.coroutines;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CoroutineStart {
    public static final CoroutineStart j;
    public static final CoroutineStart k;
    public static final CoroutineStart l;
    public static final CoroutineStart m;
    public static final /* synthetic */ CoroutineStart[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, kotlinx.coroutines.CoroutineStart] */
    static {
        ?? r0 = new Enum("DEFAULT", 0);
        j = r0;
        ?? r1 = new Enum("LAZY", 1);
        k = r1;
        ?? r2 = new Enum("ATOMIC", 2);
        l = r2;
        ?? r3 = new Enum("UNDISPATCHED", 3);
        m = r3;
        CoroutineStart[] coroutineStartArr = {r0, r1, r2, r3};
        n = coroutineStartArr;
        EnumEntriesKt.a(coroutineStartArr);
    }

    public static CoroutineStart valueOf(String str) {
        return (CoroutineStart) Enum.valueOf(CoroutineStart.class, str);
    }

    public static CoroutineStart[] values() {
        return (CoroutineStart[]) n.clone();
    }
}
