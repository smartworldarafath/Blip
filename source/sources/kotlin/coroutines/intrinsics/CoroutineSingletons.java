package kotlin.coroutines.intrinsics;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CoroutineSingletons {
    public static final CoroutineSingletons j;
    public static final CoroutineSingletons k;
    public static final CoroutineSingletons l;
    public static final /* synthetic */ CoroutineSingletons[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlin.coroutines.intrinsics.CoroutineSingletons] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlin.coroutines.intrinsics.CoroutineSingletons] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlin.coroutines.intrinsics.CoroutineSingletons] */
    static {
        ?? r0 = new Enum("COROUTINE_SUSPENDED", 0);
        j = r0;
        ?? r1 = new Enum("UNDECIDED", 1);
        k = r1;
        ?? r2 = new Enum("RESUMED", 2);
        l = r2;
        CoroutineSingletons[] coroutineSingletonsArr = {r0, r1, r2};
        m = coroutineSingletonsArr;
        EnumEntriesKt.a(coroutineSingletonsArr);
    }

    public static CoroutineSingletons valueOf(String str) {
        return (CoroutineSingletons) Enum.valueOf(CoroutineSingletons.class, str);
    }

    public static CoroutineSingletons[] values() {
        return (CoroutineSingletons[]) m.clone();
    }
}
