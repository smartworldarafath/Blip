package kotlin.text;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RegexOption {
    public static final /* synthetic */ RegexOption[] j;

    static {
        RegexOption[] regexOptionArr = {new RegexOption("IGNORE_CASE", 0, 2), new RegexOption("MULTILINE", 1, 8), new RegexOption("LITERAL", 2, 16), new RegexOption("UNIX_LINES", 3, 1), new RegexOption("COMMENTS", 4, 4), new RegexOption("DOT_MATCHES_ALL", 5, 32), new RegexOption("CANON_EQ", 6, 128)};
        j = regexOptionArr;
        EnumEntriesKt.a(regexOptionArr);
    }

    public RegexOption(String str, int i, int i2) {
    }

    public static RegexOption valueOf(String str) {
        return (RegexOption) Enum.valueOf(RegexOption.class, str);
    }

    public static RegexOption[] values() {
        return (RegexOption[]) j.clone();
    }
}
