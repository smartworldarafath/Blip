package androidx.compose.ui.unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextUnitKt {
    public static final void a(long j, long j2) {
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        if ((j & 1095216660480L) == 0 || (1095216660480L & j2) == 0) {
            InlineClassHelperKt.a("Cannot perform operation for Unspecified type.");
        }
        if (!TextUnitType.a(TextUnit.b(j), TextUnit.b(j2))) {
            InlineClassHelperKt.a("Cannot perform operation for " + TextUnitType.b(TextUnit.b(j)) + " and " + TextUnitType.b(TextUnit.b(j2)));
        }
    }

    public static final long b(double d) {
        return e(8589934592L, (float) d);
    }

    public static final long c(double d) {
        return e(4294967296L, (float) d);
    }

    public static final long d(int i) {
        return e(4294967296L, i);
    }

    public static final long e(long j, float f) {
        long floatToRawIntBits = j | (Float.floatToRawIntBits(f) & 4294967295L);
        TextUnitType[] textUnitTypeArr = TextUnit.b;
        return floatToRawIntBits;
    }
}
