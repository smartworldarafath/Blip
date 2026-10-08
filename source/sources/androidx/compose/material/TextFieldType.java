package androidx.compose.material;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldType {
    public static final /* synthetic */ TextFieldType[] j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.material.TextFieldType] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.material.TextFieldType] */
    static {
        TextFieldType[] textFieldTypeArr = {new Enum("Filled", 0), new Enum("Outlined", 1)};
        j = textFieldTypeArr;
        EnumEntriesKt.a(textFieldTypeArr);
    }

    public static TextFieldType valueOf(String str) {
        return (TextFieldType) Enum.valueOf(TextFieldType.class, str);
    }

    public static TextFieldType[] values() {
        return (TextFieldType[]) j.clone();
    }
}
