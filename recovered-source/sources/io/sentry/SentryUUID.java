package io.sentry;

import io.sentry.util.SentryRandom;
import io.sentry.util.UUIDStringUtils;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SentryUUID {
    public static String a() {
        byte[] bArr = new byte[16];
        SentryRandom.a().b(bArr);
        byte b = (byte) (bArr[6] & 15);
        bArr[6] = b;
        bArr[6] = (byte) (b | 64);
        byte b2 = (byte) (bArr[8] & 63);
        bArr[8] = b2;
        bArr[8] = (byte) (b2 | 128);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < 8; i++) {
            j2 = (j2 << 8) | (bArr[i] & 255);
        }
        for (int i2 = 8; i2 < 16; i2++) {
            j = (j << 8) | (bArr[i2] & 255);
        }
        UUID uuid = new UUID(j2, j);
        char[] cArr = UUIDStringUtils.a;
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        UUIDStringUtils.a(r7, mostSignificantBits);
        char[] cArr2 = UUIDStringUtils.a;
        char[] cArr3 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, cArr2[(int) (((-1152921504606846976L) & leastSignificantBits) >>> 60)], cArr2[(int) ((1080863910568919040L & leastSignificantBits) >>> 56)], cArr2[(int) ((67553994410557440L & leastSignificantBits) >>> 52)], cArr2[(int) ((4222124650659840L & leastSignificantBits) >>> 48)], cArr2[(int) ((263882790666240L & leastSignificantBits) >>> 44)], cArr2[(int) ((16492674416640L & leastSignificantBits) >>> 40)], cArr2[(int) ((1030792151040L & leastSignificantBits) >>> 36)], cArr2[(int) ((64424509440L & leastSignificantBits) >>> 32)], cArr2[(int) ((4026531840L & leastSignificantBits) >>> 28)], cArr2[(int) ((251658240 & leastSignificantBits) >>> 24)], cArr2[(int) ((15728640 & leastSignificantBits) >>> 20)], cArr2[(int) ((983040 & leastSignificantBits) >>> 16)], cArr2[(int) ((61440 & leastSignificantBits) >>> 12)], cArr2[(int) ((3840 & leastSignificantBits) >>> 8)], cArr2[(int) ((240 & leastSignificantBits) >>> 4)], cArr2[(int) (15 & leastSignificantBits)]};
        return new String(cArr3);
    }
}
