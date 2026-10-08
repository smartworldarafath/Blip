package androidx.compose.animation.core;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RepeatMode {
    public static final RepeatMode j;
    public static final RepeatMode k;
    public static final /* synthetic */ RepeatMode[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.animation.core.RepeatMode, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.animation.core.RepeatMode, java.lang.Enum] */
    static {
        ?? r0 = new Enum("Restart", 0);
        j = r0;
        ?? r1 = new Enum("Reverse", 1);
        k = r1;
        RepeatMode[] repeatModeArr = {r0, r1};
        l = repeatModeArr;
        EnumEntriesKt.a(repeatModeArr);
    }

    public static RepeatMode valueOf(String str) {
        return (RepeatMode) Enum.valueOf(RepeatMode.class, str);
    }

    public static RepeatMode[] values() {
        return (RepeatMode[]) l.clone();
    }
}
