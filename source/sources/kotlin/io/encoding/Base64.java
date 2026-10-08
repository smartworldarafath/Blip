package kotlin.io.encoding;

import defpackage.u2;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Base64 {
    public static final Default c;
    public final boolean a;
    public final boolean b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Default extends Base64 {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PaddingOption {
        public static final /* synthetic */ PaddingOption[] j;

        /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v2, types: [kotlin.io.encoding.Base64$PaddingOption, java.lang.Enum] */
        static {
            PaddingOption[] paddingOptionArr = {new Enum("PRESENT", 0), new Enum("ABSENT", 1), new Enum("PRESENT_OPTIONAL", 2), new Enum("ABSENT_OPTIONAL", 3)};
            j = paddingOptionArr;
            EnumEntriesKt.a(paddingOptionArr);
        }

        public static PaddingOption valueOf(String str) {
            return (PaddingOption) Enum.valueOf(PaddingOption.class, str);
        }

        public static PaddingOption[] values() {
            return (PaddingOption[]) j.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.io.encoding.Base64$Default, kotlin.io.encoding.Base64] */
    static {
        PaddingOption[] paddingOptionArr = PaddingOption.j;
        c = new Base64(-1, false, false);
        new Base64(-1, true, false);
        new Base64(76, false, true);
        new Base64(64, false, true);
    }

    public Base64(int i, boolean z, boolean z2) {
        PaddingOption[] paddingOptionArr = PaddingOption.j;
        this.a = z;
        this.b = z2;
        if (z && z2) {
            u2.g("Failed requirement.");
            throw null;
        }
    }
}
