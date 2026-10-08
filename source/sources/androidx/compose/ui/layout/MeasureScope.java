package androidx.compose.ui.layout;

import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MeasureScope extends IntrinsicMeasureScope {
    static /* synthetic */ MeasureResult h0(MeasureScope measureScope, int i, int i2, Function1 function1) {
        Map map;
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, function1);
    }

    default MeasureResult B(int i, int i2, Map map, Function1 function1) {
        return v0(i, i2, map, null, function1);
    }

    MeasureResult v0(int i, int i2, Map map, Function1 function1, Function1 function12);
}
