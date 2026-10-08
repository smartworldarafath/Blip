package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InlineClassDescriptorKt$InlinePrimitiveDescriptor$1 implements GeneratedSerializer<Object> {
    public final /* synthetic */ KSerializer a;

    public InlineClassDescriptorKt$InlinePrimitiveDescriptor$1(KSerializer kSerializer) {
        this.a = kSerializer;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object a(Decoder decoder) {
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void b(Encoder encoder, Object obj) {
        throw new IllegalStateException("unsupported");
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final SerialDescriptor c() {
        throw new IllegalStateException("unsupported");
    }
}
