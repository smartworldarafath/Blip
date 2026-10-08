package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PrimitiveArrayDescriptor extends ListLikeDescriptor {
    public final String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimitiveArrayDescriptor(SerialDescriptor serialDescriptor) {
        super(serialDescriptor);
        serialDescriptor.getClass();
        this.b = serialDescriptor.a() + "Array";
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String a() {
        return this.b;
    }
}
