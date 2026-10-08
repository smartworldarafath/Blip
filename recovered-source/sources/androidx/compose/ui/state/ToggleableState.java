package androidx.compose.ui.state;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToggleableState {
    public static final ToggleableState j;
    public static final ToggleableState k;
    public static final /* synthetic */ ToggleableState[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.state.ToggleableState, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.state.ToggleableState, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.state.ToggleableState, java.lang.Enum] */
    static {
        ?? r0 = new Enum("On", 0);
        j = r0;
        ?? r1 = new Enum("Off", 1);
        k = r1;
        ToggleableState[] toggleableStateArr = {r0, r1, new Enum("Indeterminate", 2)};
        l = toggleableStateArr;
        EnumEntriesKt.a(toggleableStateArr);
    }

    public static ToggleableState valueOf(String str) {
        return (ToggleableState) Enum.valueOf(ToggleableState.class, str);
    }

    public static ToggleableState[] values() {
        return (ToggleableState[]) l.clone();
    }
}
