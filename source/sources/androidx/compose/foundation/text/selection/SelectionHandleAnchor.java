package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectionHandleAnchor {
    public static final SelectionHandleAnchor j;
    public static final SelectionHandleAnchor k;
    public static final SelectionHandleAnchor l;
    public static final /* synthetic */ SelectionHandleAnchor[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.selection.SelectionHandleAnchor] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.selection.SelectionHandleAnchor] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.text.selection.SelectionHandleAnchor] */
    static {
        ?? r0 = new Enum("Left", 0);
        j = r0;
        ?? r1 = new Enum("Middle", 1);
        k = r1;
        ?? r2 = new Enum("Right", 2);
        l = r2;
        SelectionHandleAnchor[] selectionHandleAnchorArr = {r0, r1, r2};
        m = selectionHandleAnchorArr;
        EnumEntriesKt.a(selectionHandleAnchorArr);
    }

    public static SelectionHandleAnchor valueOf(String str) {
        return (SelectionHandleAnchor) Enum.valueOf(SelectionHandleAnchor.class, str);
    }

    public static SelectionHandleAnchor[] values() {
        return (SelectionHandleAnchor[]) m.clone();
    }
}
