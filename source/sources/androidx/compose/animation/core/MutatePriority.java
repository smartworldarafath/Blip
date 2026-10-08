package androidx.compose.animation.core;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutatePriority {
    public static final MutatePriority j;
    public static final /* synthetic */ MutatePriority[] k;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.animation.core.MutatePriority] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.animation.core.MutatePriority] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.animation.core.MutatePriority] */
    static {
        ?? r0 = new Enum("Default", 0);
        j = r0;
        MutatePriority[] mutatePriorityArr = {r0, new Enum("UserInput", 1), new Enum("PreventUserInput", 2)};
        k = mutatePriorityArr;
        EnumEntriesKt.a(mutatePriorityArr);
    }

    public static MutatePriority valueOf(String str) {
        return (MutatePriority) Enum.valueOf(MutatePriority.class, str);
    }

    public static MutatePriority[] values() {
        return (MutatePriority[]) k.clone();
    }
}
