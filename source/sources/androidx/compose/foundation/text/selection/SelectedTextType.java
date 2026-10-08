package androidx.compose.foundation.text.selection;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectedTextType {
    public static final SelectedTextType j;
    public static final /* synthetic */ SelectedTextType[] k;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.selection.SelectedTextType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.selection.SelectedTextType] */
    static {
        ?? r0 = new Enum("EditableText", 0);
        j = r0;
        SelectedTextType[] selectedTextTypeArr = {r0, new Enum("StaticText", 1)};
        k = selectedTextTypeArr;
        EnumEntriesKt.a(selectedTextTypeArr);
    }

    public static SelectedTextType valueOf(String str) {
        return (SelectedTextType) Enum.valueOf(SelectedTextType.class, str);
    }

    public static SelectedTextType[] values() {
        return (SelectedTextType[]) k.clone();
    }
}
