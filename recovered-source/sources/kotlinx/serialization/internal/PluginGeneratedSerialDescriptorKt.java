package kotlinx.serialization.internal;

import defpackage.ma;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.ranges.RangesKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorKt$elementDescriptors$1$1;
import kotlinx.serialization.descriptors.SerialDescriptorKt$special$$inlined$Iterable$1;
import kotlinx.serialization.descriptors.SerialKind;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PluginGeneratedSerialDescriptorKt {
    public static final int a(SerialDescriptor serialDescriptor, SerialDescriptor[] serialDescriptorArr) {
        int i;
        serialDescriptorArr.getClass();
        int hashCode = (serialDescriptor.a().hashCode() * 31) + Arrays.hashCode(serialDescriptorArr);
        SerialDescriptorKt$special$$inlined$Iterable$1 serialDescriptorKt$special$$inlined$Iterable$1 = new SerialDescriptorKt$special$$inlined$Iterable$1(serialDescriptor);
        Iterator<SerialDescriptor> it = serialDescriptorKt$special$$inlined$Iterable$1.iterator();
        int i2 = 1;
        int i3 = 1;
        while (true) {
            SerialDescriptorKt$elementDescriptors$1$1 serialDescriptorKt$elementDescriptors$1$1 = (SerialDescriptorKt$elementDescriptors$1$1) it;
            int i4 = 0;
            if (!serialDescriptorKt$elementDescriptors$1$1.hasNext()) {
                break;
            }
            int i5 = i3 * 31;
            String a = ((SerialDescriptor) serialDescriptorKt$elementDescriptors$1$1.next()).a();
            if (a != null) {
                i4 = a.hashCode();
            }
            i3 = i5 + i4;
        }
        Iterator<SerialDescriptor> it2 = serialDescriptorKt$special$$inlined$Iterable$1.iterator();
        while (true) {
            SerialDescriptorKt$elementDescriptors$1$1 serialDescriptorKt$elementDescriptors$1$12 = (SerialDescriptorKt$elementDescriptors$1$1) it2;
            if (serialDescriptorKt$elementDescriptors$1$12.hasNext()) {
                int i6 = i2 * 31;
                SerialKind e = ((SerialDescriptor) serialDescriptorKt$elementDescriptors$1$12.next()).e();
                if (e != null) {
                    i = e.hashCode();
                } else {
                    i = 0;
                }
                i2 = i6 + i;
            } else {
                return (((hashCode * 31) + i3) * 31) + i2;
            }
        }
    }

    public static final String b(SerialDescriptor serialDescriptor) {
        return CollectionsKt.y(RangesKt.j(0, serialDescriptor.f()), ", ", serialDescriptor.a() + '(', ")", new ma(10, serialDescriptor), 24);
    }
}
