package androidx.compose.ui.window;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SecureFlagPolicy {
    public static final SecureFlagPolicy j;
    public static final SecureFlagPolicy k;
    public static final /* synthetic */ SecureFlagPolicy[] l;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.window.SecureFlagPolicy] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.window.SecureFlagPolicy] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.window.SecureFlagPolicy] */
    static {
        ?? r0 = new Enum("Inherit", 0);
        j = r0;
        ?? r1 = new Enum("SecureOn", 1);
        k = r1;
        SecureFlagPolicy[] secureFlagPolicyArr = {r0, r1, new Enum("SecureOff", 2)};
        l = secureFlagPolicyArr;
        EnumEntriesKt.a(secureFlagPolicyArr);
    }

    public static SecureFlagPolicy valueOf(String str) {
        return (SecureFlagPolicy) Enum.valueOf(SecureFlagPolicy.class, str);
    }

    public static SecureFlagPolicy[] values() {
        return (SecureFlagPolicy[]) l.clone();
    }
}
