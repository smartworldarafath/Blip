package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ExtensionRegistryLite {
    public static volatile ExtensionRegistryLite a;
    public static final ExtensionRegistryLite b;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.ExtensionRegistryLite, java.lang.Object] */
    static {
        ?? obj = new Object();
        Map map = Collections.EMPTY_MAP;
        b = obj;
    }

    public static ExtensionRegistryLite a() {
        ExtensionRegistryLite extensionRegistryLite;
        Protobuf protobuf = Protobuf.c;
        ExtensionRegistryLite extensionRegistryLite2 = a;
        if (extensionRegistryLite2 == null) {
            synchronized (ExtensionRegistryLite.class) {
                try {
                    extensionRegistryLite = a;
                    if (extensionRegistryLite == null) {
                        Class cls = ExtensionRegistryFactory.a;
                        ExtensionRegistryLite extensionRegistryLite3 = null;
                        if (cls != null) {
                            try {
                                extensionRegistryLite3 = (ExtensionRegistryLite) cls.getDeclaredMethod("getEmptyRegistry", null).invoke(null, null);
                            } catch (Exception unused) {
                            }
                        }
                        if (extensionRegistryLite3 != null) {
                            extensionRegistryLite = extensionRegistryLite3;
                        } else {
                            extensionRegistryLite = b;
                        }
                        a = extensionRegistryLite;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return extensionRegistryLite;
        }
        return extensionRegistryLite2;
    }
}
