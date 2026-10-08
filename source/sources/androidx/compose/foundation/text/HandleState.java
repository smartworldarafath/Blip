package androidx.compose.foundation.text;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HandleState {
    public static final HandleState j;
    public static final HandleState k;
    public static final HandleState l;
    public static final /* synthetic */ HandleState[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.HandleState] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.HandleState] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.text.HandleState] */
    static {
        ?? r0 = new Enum("None", 0);
        j = r0;
        ?? r1 = new Enum("Selection", 1);
        k = r1;
        ?? r2 = new Enum("Cursor", 2);
        l = r2;
        HandleState[] handleStateArr = {r0, r1, r2};
        m = handleStateArr;
        EnumEntriesKt.a(handleStateArr);
    }

    public static HandleState valueOf(String str) {
        return (HandleState) Enum.valueOf(HandleState.class, str);
    }

    public static HandleState[] values() {
        return (HandleState[]) m.clone();
    }
}
