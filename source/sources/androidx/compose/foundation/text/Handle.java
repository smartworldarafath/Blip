package androidx.compose.foundation.text;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Handle {
    public static final Handle j;
    public static final Handle k;
    public static final Handle l;
    public static final /* synthetic */ Handle[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.text.Handle] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.text.Handle] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.text.Handle] */
    static {
        ?? r0 = new Enum("Cursor", 0);
        j = r0;
        ?? r1 = new Enum("SelectionStart", 1);
        k = r1;
        ?? r2 = new Enum("SelectionEnd", 2);
        l = r2;
        Handle[] handleArr = {r0, r1, r2};
        m = handleArr;
        EnumEntriesKt.a(handleArr);
    }

    public static Handle valueOf(String str) {
        return (Handle) Enum.valueOf(Handle.class, str);
    }

    public static Handle[] values() {
        return (Handle[]) m.clone();
    }
}
