package androidx.compose.foundation.lazy.layout;

import java.util.Map;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        Map c = ((LazySaveableStateHolder) obj2).c();
        if (c.isEmpty()) {
            return null;
        }
        return c;
    }
}
