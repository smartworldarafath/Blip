package kotlinx.serialization.internal;

import java.util.List;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Platform_commonKt {
    public static final SerialDescriptor[] a = new SerialDescriptor[0];

    public static final SerialDescriptor[] a(List list) {
        SerialDescriptor[] serialDescriptorArr;
        if (list == null || list.isEmpty()) {
            list = null;
        }
        if (list != null && (serialDescriptorArr = (SerialDescriptor[]) list.toArray(new SerialDescriptor[0])) != null) {
            return serialDescriptorArr;
        }
        return a;
    }
}
