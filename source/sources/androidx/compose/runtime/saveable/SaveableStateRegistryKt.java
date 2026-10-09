package androidx.compose.runtime.saveable;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import defpackage.vc;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SaveableStateRegistryKt {
    public static final StaticProvidableCompositionLocal a = new CompositionLocal(new vc(13));

    public static final SaveableStateRegistry a(Map map, Function1 function1) {
        return new SaveableStateRegistryImpl(map, function1);
    }
}
