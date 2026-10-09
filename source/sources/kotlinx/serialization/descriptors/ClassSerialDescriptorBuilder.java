package kotlinx.serialization.descriptors;

import defpackage.k8;
import java.util.ArrayList;
import java.util.HashSet;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ClassSerialDescriptorBuilder {
    public final String a;
    public final ArrayList b = new ArrayList();
    public final HashSet c = new HashSet();
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();

    public ClassSerialDescriptorBuilder(String str) {
        this.a = str;
    }

    public static void a(ClassSerialDescriptorBuilder classSerialDescriptorBuilder, String str, SerialDescriptor serialDescriptor) {
        classSerialDescriptorBuilder.getClass();
        serialDescriptor.getClass();
        if (classSerialDescriptorBuilder.c.add(str)) {
            classSerialDescriptorBuilder.b.add(str);
            classSerialDescriptorBuilder.d.add(serialDescriptor);
            classSerialDescriptorBuilder.e.add(EmptyList.j);
            classSerialDescriptorBuilder.f.add(false);
            return;
        }
        k8.t("Element with name '", str, "' is already registered in ", classSerialDescriptorBuilder.a);
    }
}
