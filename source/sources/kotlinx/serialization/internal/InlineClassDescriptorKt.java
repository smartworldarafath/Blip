package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InlineClassDescriptorKt {
    public static final InlineClassDescriptor a(String str, KSerializer kSerializer) {
        return new InlineClassDescriptor(str, new InlineClassDescriptorKt$InlinePrimitiveDescriptor$1(kSerializer));
    }
}
