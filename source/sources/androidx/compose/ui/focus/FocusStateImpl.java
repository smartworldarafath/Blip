package androidx.compose.ui.focus;

import defpackage.k8;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusStateImpl implements FocusState {
    public static final FocusStateImpl j;
    public static final FocusStateImpl k;
    public static final FocusStateImpl l;
    public static final FocusStateImpl m;
    public static final /* synthetic */ FocusStateImpl[] n;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.focus.FocusStateImpl] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.focus.FocusStateImpl] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.focus.FocusStateImpl] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.ui.focus.FocusStateImpl] */
    static {
        ?? r0 = new Enum("Active", 0);
        j = r0;
        ?? r1 = new Enum("ActiveParent", 1);
        k = r1;
        ?? r2 = new Enum("Captured", 2);
        l = r2;
        ?? r3 = new Enum("Inactive", 3);
        m = r3;
        FocusStateImpl[] focusStateImplArr = {r0, r1, r2, r3};
        n = focusStateImplArr;
        EnumEntriesKt.a(focusStateImplArr);
    }

    public static FocusStateImpl valueOf(String str) {
        return (FocusStateImpl) Enum.valueOf(FocusStateImpl.class, str);
    }

    public static FocusStateImpl[] values() {
        return (FocusStateImpl[]) n.clone();
    }

    public final boolean a() {
        int ordinal = ordinal();
        if (ordinal == 0 || ordinal == 1 || ordinal == 2) {
            return true;
        }
        if (ordinal == 3) {
            return false;
        }
        k8.e();
        return false;
    }

    public final boolean b() {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        k8.e();
                        return false;
                    }
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }
}
