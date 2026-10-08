package kotlinx.serialization.json.internal;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WriteMode {
    public static final WriteMode l;
    public static final WriteMode m;
    public static final WriteMode n;
    public static final WriteMode o;
    public static final /* synthetic */ WriteMode[] p;
    public static final /* synthetic */ EnumEntries q;
    public final char j;
    public final char k;

    static {
        WriteMode writeMode = new WriteMode("OBJ", 0, '{', '}');
        l = writeMode;
        WriteMode writeMode2 = new WriteMode("LIST", 1, '[', ']');
        m = writeMode2;
        WriteMode writeMode3 = new WriteMode("MAP", 2, '{', '}');
        n = writeMode3;
        WriteMode writeMode4 = new WriteMode("POLY_OBJ", 3, '[', ']');
        o = writeMode4;
        WriteMode[] writeModeArr = {writeMode, writeMode2, writeMode3, writeMode4};
        p = writeModeArr;
        q = EnumEntriesKt.a(writeModeArr);
    }

    public WriteMode(String str, int i, char c, char c2) {
        this.j = c;
        this.k = c2;
    }

    public static WriteMode valueOf(String str) {
        return (WriteMode) Enum.valueOf(WriteMode.class, str);
    }

    public static WriteMode[] values() {
        return (WriteMode[]) p.clone();
    }
}
