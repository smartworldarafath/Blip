package androidx.lifecycle;

import android.os.Bundle;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateHandle {
    public final LinkedHashMap a = new LinkedHashMap();
    public final SavedStateHandleImpl b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static SavedStateHandle a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                bundle = bundle2;
            }
            if (bundle == null) {
                return new SavedStateHandle();
            }
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            classLoader.getClass();
            bundle.setClassLoader(classLoader);
            MapBuilder mapBuilder = new MapBuilder(bundle.size());
            for (String str : bundle.keySet()) {
                str.getClass();
                mapBuilder.put(str, bundle.get(str));
            }
            return new SavedStateHandle(mapBuilder.b());
        }
    }

    public SavedStateHandle() {
        Map map;
        map = EmptyMap.j;
        this.b = new SavedStateHandleImpl(map);
    }

    public SavedStateHandle(MapBuilder mapBuilder) {
        this.b = new SavedStateHandleImpl(mapBuilder);
    }
}
