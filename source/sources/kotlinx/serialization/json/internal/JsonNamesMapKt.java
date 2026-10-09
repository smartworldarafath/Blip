package kotlinx.serialization.json.internal;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonIgnoreUnknownKeys;
import kotlinx.serialization.json.internal.DescriptorSchemaCache;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JsonNamesMapKt {
    public static final DescriptorSchemaCache.Key a = new Object();

    public static final boolean a(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        json.getClass();
        List annotations = serialDescriptor.getAnnotations();
        if (annotations == null || !annotations.isEmpty()) {
            Iterator it = annotations.iterator();
            while (it.hasNext()) {
                if (((Annotation) it.next()) instanceof JsonIgnoreUnknownKeys) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static final void b(SerialDescriptor serialDescriptor, Json json) {
        serialDescriptor.getClass();
        json.getClass();
        Intrinsics.a(serialDescriptor.e(), StructureKind.CLASS.a);
    }
}
