package androidx.compose.ui.focus;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CustomDestinationResult {
    public static final CustomDestinationResult j;
    public static final CustomDestinationResult k;
    public static final CustomDestinationResult l;
    public static final /* synthetic */ CustomDestinationResult[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.focus.CustomDestinationResult, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.focus.CustomDestinationResult, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.focus.CustomDestinationResult, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.ui.focus.CustomDestinationResult, java.lang.Enum] */
    static {
        ?? r0 = new Enum("None", 0);
        j = r0;
        ?? r1 = new Enum("Cancelled", 1);
        k = r1;
        ?? r2 = new Enum("Redirected", 2);
        l = r2;
        CustomDestinationResult[] customDestinationResultArr = {r0, r1, r2, new Enum("RedirectCancelled", 3)};
        m = customDestinationResultArr;
        EnumEntriesKt.a(customDestinationResultArr);
    }

    public static CustomDestinationResult valueOf(String str) {
        return (CustomDestinationResult) Enum.valueOf(CustomDestinationResult.class, str);
    }

    public static CustomDestinationResult[] values() {
        return (CustomDestinationResult[]) m.clone();
    }
}
