package androidx.compose.runtime;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PausedCompositionState {
    public static final PausedCompositionState j;
    public static final PausedCompositionState k;
    public static final PausedCompositionState l;
    public static final PausedCompositionState m;
    public static final PausedCompositionState n;
    public static final PausedCompositionState o;
    public static final PausedCompositionState p;
    public static final /* synthetic */ PausedCompositionState[] q;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, androidx.compose.runtime.PausedCompositionState] */
    static {
        ?? r0 = new Enum("Invalid", 0);
        j = r0;
        ?? r1 = new Enum("Cancelled", 1);
        k = r1;
        ?? r2 = new Enum("InitialPending", 2);
        l = r2;
        ?? r3 = new Enum("RecomposePending", 3);
        m = r3;
        ?? r4 = new Enum("Recomposing", 4);
        n = r4;
        ?? r5 = new Enum("ApplyPending", 5);
        o = r5;
        ?? r6 = new Enum("Applied", 6);
        p = r6;
        PausedCompositionState[] pausedCompositionStateArr = {r0, r1, r2, r3, r4, r5, r6};
        q = pausedCompositionStateArr;
        EnumEntriesKt.a(pausedCompositionStateArr);
    }

    public static PausedCompositionState valueOf(String str) {
        return (PausedCompositionState) Enum.valueOf(PausedCompositionState.class, str);
    }

    public static PausedCompositionState[] values() {
        return (PausedCompositionState[]) q.clone();
    }
}
