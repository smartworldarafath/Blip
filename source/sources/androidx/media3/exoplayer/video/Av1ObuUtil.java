package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import com.google.common.base.Preconditions;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Av1ObuUtil {
    public static final byte[] a = {-75, 0, 60, 0, 1, 4};

    public static void a(ByteBuffer byteBuffer, boolean z) {
        boolean z2;
        Iterator it = ObuParser.b(byteBuffer.asReadOnlyBuffer()).iterator();
        while (it.hasNext()) {
            ObuParser.Obu obu = (ObuParser.Obu) it.next();
            int i = obu.a;
            ByteBuffer byteBuffer2 = obu.b;
            if (i == 5) {
                if (i == 5) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                try {
                    Preconditions.e(z2);
                    ByteBuffer asReadOnlyBuffer = byteBuffer2.asReadOnlyBuffer();
                    if (ObuParser.a(asReadOnlyBuffer) == 4) {
                        if (z && asReadOnlyBuffer.remaining() >= 6) {
                            int position = asReadOnlyBuffer.position();
                            for (int i2 = 0; i2 < 6; i2++) {
                                if (asReadOnlyBuffer.get(position + i2) == a[i2]) {
                                }
                            }
                        }
                        byteBuffer.put(byteBuffer2.position(), (byte) 31);
                        break;
                    }
                } catch (BufferUnderflowException unused) {
                }
            }
        }
    }
}
