package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.List;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaveableStateRegistryImpl$registerProvider$3 implements SaveableStateRegistry.Entry {
    public final /* synthetic */ MutableScatterMap a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Function0 c;

    public SaveableStateRegistryImpl$registerProvider$3(MutableScatterMap mutableScatterMap, String str, Function0 function0) {
        this.a = mutableScatterMap;
        this.b = str;
        this.c = function0;
    }

    public final void a() {
        MutableScatterMap mutableScatterMap = this.a;
        String str = this.b;
        List list = (List) mutableScatterMap.m(str);
        if (list != null) {
            list.remove(this.c);
        }
        if (list != null && !list.isEmpty()) {
            mutableScatterMap.o(str, list);
        }
    }
}
