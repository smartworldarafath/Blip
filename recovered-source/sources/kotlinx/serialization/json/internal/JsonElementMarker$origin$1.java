package kotlinx.serialization.json.internal;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class JsonElementMarker$origin$1 extends FunctionReferenceImpl implements Function2<SerialDescriptor, Integer, Boolean> {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        int intValue = ((Number) obj2).intValue();
        serialDescriptor.getClass();
        JsonElementMarker jsonElementMarker = (JsonElementMarker) this.k;
        jsonElementMarker.getClass();
        if (!serialDescriptor.k(intValue) && serialDescriptor.j(intValue).c()) {
            z = true;
        } else {
            z = false;
        }
        jsonElementMarker.b = z;
        return Boolean.valueOf(z);
    }
}
