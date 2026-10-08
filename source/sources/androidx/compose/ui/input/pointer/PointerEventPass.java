package androidx.compose.ui.input.pointer;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerEventPass {
    public static final PointerEventPass j;
    public static final PointerEventPass k;
    public static final PointerEventPass l;
    public static final /* synthetic */ PointerEventPass[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.input.pointer.PointerEventPass] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.input.pointer.PointerEventPass] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.input.pointer.PointerEventPass] */
    static {
        ?? r0 = new Enum("Initial", 0);
        j = r0;
        ?? r1 = new Enum("Main", 1);
        k = r1;
        ?? r2 = new Enum("Final", 2);
        l = r2;
        PointerEventPass[] pointerEventPassArr = {r0, r1, r2};
        m = pointerEventPassArr;
        EnumEntriesKt.a(pointerEventPassArr);
    }

    public static PointerEventPass valueOf(String str) {
        return (PointerEventPass) Enum.valueOf(PointerEventPass.class, str);
    }

    public static PointerEventPass[] values() {
        return (PointerEventPass[]) m.clone();
    }
}
