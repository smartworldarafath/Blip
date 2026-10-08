package androidx.navigation;

import android.annotation.SuppressLint;
import androidx.navigation.Navigator;
import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"TypeParameterUnusedInFormals"})
/* loaded from: classes.dex */
public class NavigatorProvider {
    public static final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap a = new LinkedHashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static String a(Class cls) {
            LinkedHashMap linkedHashMap = NavigatorProvider.b;
            String str = (String) linkedHashMap.get(cls);
            if (str == null) {
                Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
                if (name != null) {
                    str = name.value();
                } else {
                    str = null;
                }
                if (str != null && str.length() > 0) {
                    linkedHashMap.put(cls, str);
                } else {
                    fe.l("No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
                    return null;
                }
            }
            str.getClass();
            return str;
        }
    }

    public final void a(Navigator navigator) {
        navigator.getClass();
        String a = Companion.a(navigator.getClass());
        if (a.length() > 0) {
            LinkedHashMap linkedHashMap = this.a;
            Navigator navigator2 = (Navigator) linkedHashMap.get(a);
            if (Intrinsics.a(navigator2, navigator)) {
                return;
            }
            if (navigator2 != null && navigator2.b) {
                u2.i("Navigator ", navigator, " is replacing an already attached ", navigator2);
                return;
            } else if (!navigator.b) {
                return;
            } else {
                u2.h("Navigator ", navigator, " is already attached to another NavController");
                return;
            }
        }
        u2.g("navigator name cannot be an empty string");
    }

    public final Navigator b(String str) {
        str.getClass();
        if (str.length() > 0) {
            Navigator navigator = (Navigator) this.a.get(str);
            if (navigator != null) {
                return navigator;
            }
            u2.l(q.i("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
            return null;
        }
        u2.g("navigator name cannot be an empty string");
        return null;
    }
}
