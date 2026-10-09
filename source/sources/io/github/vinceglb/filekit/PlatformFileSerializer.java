package io.github.vinceglb.filekit;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformFileSerializer implements KSerializer<PlatformFile> {
    public static final PlatformFileSerializer a = new Object();
    public static final PrimitiveSerialDescriptor b = SerialDescriptorsKt.a("io.github.vinceglb.filekit.PlatformFile");

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        return PlatformFile_androidKt.b(decoder.o());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        PlatformFile platformFile = (PlatformFile) obj;
        platformFile.getClass();
        encoder.o(PlatformFile_androidKt.c(platformFile));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        return b;
    }
}
