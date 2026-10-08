package io.sentry.android.core.internal.util;

import java.math.BigInteger;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NativeEventUtils {
    public static String a(String str) {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(new BigInteger("10" + str, 16).toByteArray());
            wrap.get();
            return String.format("%08x-%04x-%04x-%04x-%04x%08x", Integer.valueOf(wrap.order(ByteOrder.LITTLE_ENDIAN).getInt()), Short.valueOf(wrap.getShort()), Short.valueOf(wrap.getShort()), Short.valueOf(wrap.order(ByteOrder.BIG_ENDIAN).getShort()), Short.valueOf(wrap.getShort()), Integer.valueOf(wrap.getInt()));
        } catch (NumberFormatException | BufferUnderflowException unused) {
            return null;
        }
    }
}
