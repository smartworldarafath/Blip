package kotlinx.serialization.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InlineClassDescriptor extends PluginGeneratedSerialDescriptor {
    public final boolean k;

    public InlineClassDescriptor(String str, InlineClassDescriptorKt$InlinePrimitiveDescriptor$1 inlineClassDescriptorKt$InlinePrimitiveDescriptor$1) {
        super(str, inlineClassDescriptorKt$InlinePrimitiveDescriptor$1, 1);
        this.k = true;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof InlineClassDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                if (this.a.equals(serialDescriptor.a())) {
                    InlineClassDescriptor inlineClassDescriptor = (InlineClassDescriptor) obj;
                    if (inlineClassDescriptor.k && Arrays.equals((SerialDescriptor[]) this.i.getValue(), (SerialDescriptor[]) inlineClassDescriptor.i.getValue())) {
                        int f = serialDescriptor.f();
                        int i = this.c;
                        if (i == f) {
                            for (int i2 = 0; i2 < i; i2++) {
                                if (Intrinsics.a(j(i2).a(), serialDescriptor.j(i2).a()) && Intrinsics.a(j(i2).e(), serialDescriptor.j(i2).e())) {
                                }
                            }
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean h() {
        return this.k;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public final int hashCode() {
        return super.hashCode() * 31;
    }
}
