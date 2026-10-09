package kotlinx.coroutines.channels;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BufferOverflow {
    public static final BufferOverflow j;
    public static final BufferOverflow k;
    public static final BufferOverflow l;
    public static final /* synthetic */ BufferOverflow[] m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, kotlinx.coroutines.channels.BufferOverflow] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, kotlinx.coroutines.channels.BufferOverflow] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, kotlinx.coroutines.channels.BufferOverflow] */
    static {
        ?? r0 = new Enum("SUSPEND", 0);
        j = r0;
        ?? r1 = new Enum("DROP_OLDEST", 1);
        k = r1;
        ?? r2 = new Enum("DROP_LATEST", 2);
        l = r2;
        BufferOverflow[] bufferOverflowArr = {r0, r1, r2};
        m = bufferOverflowArr;
        EnumEntriesKt.a(bufferOverflowArr);
    }

    public static BufferOverflow valueOf(String str) {
        return (BufferOverflow) Enum.valueOf(BufferOverflow.class, str);
    }

    public static BufferOverflow[] values() {
        return (BufferOverflow[]) m.clone();
    }
}
