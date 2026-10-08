package androidx.compose.animation;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EnterExitState {
    public static final EnterExitState j;
    public static final EnterExitState k;
    public static final EnterExitState l;
    public static final /* synthetic */ EnterExitState[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.animation.EnterExitState] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.animation.EnterExitState] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.animation.EnterExitState] */
    static {
        ?? r0 = new Enum("PreEnter", 0);
        j = r0;
        ?? r1 = new Enum("Visible", 1);
        k = r1;
        ?? r2 = new Enum("PostExit", 2);
        l = r2;
        EnterExitState[] enterExitStateArr = {r0, r1, r2};
        m = enterExitStateArr;
        EnumEntriesKt.a(enterExitStateArr);
    }

    public static EnterExitState valueOf(String str) {
        return (EnterExitState) Enum.valueOf(EnterExitState.class, str);
    }

    public static EnterExitState[] values() {
        return (EnterExitState[]) m.clone();
    }
}
