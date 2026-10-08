package androidx.compose.foundation.text.contextmenu.modifier;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToolbarHandlerState {
    public static final ToolbarHandlerState j;
    public static final ToolbarHandlerState k;
    public static final ToolbarHandlerState l;
    public static final /* synthetic */ ToolbarHandlerState[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState] */
    static {
        ?? r0 = new Enum("Uninitialized", 0);
        j = r0;
        ?? r1 = new Enum("Detached", 1);
        k = r1;
        ?? r2 = new Enum("Attached", 2);
        l = r2;
        ToolbarHandlerState[] toolbarHandlerStateArr = {r0, r1, r2};
        m = toolbarHandlerStateArr;
        EnumEntriesKt.a(toolbarHandlerStateArr);
    }

    public static ToolbarHandlerState valueOf(String str) {
        return (ToolbarHandlerState) Enum.valueOf(ToolbarHandlerState.class, str);
    }

    public static ToolbarHandlerState[] values() {
        return (ToolbarHandlerState[]) m.clone();
    }
}
