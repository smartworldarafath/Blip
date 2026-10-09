package androidx.compose.ui.text.style;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResolvedTextDirection {
    public static final ResolvedTextDirection j;
    public static final ResolvedTextDirection k;
    public static final /* synthetic */ ResolvedTextDirection[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.text.style.ResolvedTextDirection, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.text.style.ResolvedTextDirection, java.lang.Enum] */
    static {
        ?? r0 = new Enum("Ltr", 0);
        j = r0;
        ?? r1 = new Enum("Rtl", 1);
        k = r1;
        ResolvedTextDirection[] resolvedTextDirectionArr = {r0, r1};
        l = resolvedTextDirectionArr;
        EnumEntriesKt.a(resolvedTextDirectionArr);
    }

    public static ResolvedTextDirection valueOf(String str) {
        return (ResolvedTextDirection) Enum.valueOf(ResolvedTextDirection.class, str);
    }

    public static ResolvedTextDirection[] values() {
        return (ResolvedTextDirection[]) l.clone();
    }
}
