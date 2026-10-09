package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.FunctionReference;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ElementMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonElementMarker {
    public final ElementMarker a;
    public boolean b;

    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.FunctionReference] */
    public JsonElementMarker(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        this.a = new ElementMarker(serialDescriptor, new FunctionReference(2, this, JsonElementMarker.class, "readIfAbsent", "readIfAbsent(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", 0));
    }
}
