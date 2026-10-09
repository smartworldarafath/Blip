package kotlinx.serialization.json.internal;

import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.UByteSerializer;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.internal.UShortSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StreamingJsonEncoderKt {
    public static final Set a = ArraysKt.x(new SerialDescriptor[]{UIntSerializer.b, ULongSerializer.b, UByteSerializer.b, UShortSerializer.b});

    public static final boolean a(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        if (serialDescriptor.h() && a.contains(serialDescriptor)) {
            return true;
        }
        return false;
    }
}
