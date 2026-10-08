package androidx.compose.runtime.saveable;

import java.util.Map;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SaveableStateRegistry {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Entry {
    }

    boolean b(Object obj);

    Map c();

    Object d(String str);

    Entry e(String str, Function0 function0);
}
