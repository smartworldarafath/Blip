package androidx.activity.result;

import android.os.Bundle;
import android.util.Log;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.os.BundleCompat;
import defpackage.k8;
import io.sentry.d;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ActivityResultRegistry$register$3 extends ActivityResultLauncher<Object> {
    public final /* synthetic */ ActivityResultRegistry a;
    public final /* synthetic */ String b;
    public final /* synthetic */ ActivityResultContract c;

    public ActivityResultRegistry$register$3(ActivityResultRegistry activityResultRegistry, String str, ActivityResultContract activityResultContract) {
        this.a = activityResultRegistry;
        this.b = str;
        this.c = activityResultContract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void a(Object obj) {
        ActivityResultRegistry activityResultRegistry = this.a;
        LinkedHashMap linkedHashMap = activityResultRegistry.b;
        ArrayList arrayList = activityResultRegistry.d;
        String str = this.b;
        Object obj2 = linkedHashMap.get(str);
        ActivityResultContract activityResultContract = this.c;
        if (obj2 != null) {
            int intValue = ((Number) obj2).intValue();
            arrayList.add(str);
            try {
                activityResultRegistry.c(intValue, activityResultContract, obj);
                return;
            } catch (Exception e) {
                arrayList.remove(str);
                throw e;
            }
        }
        k8.n("Attempting to launch an unregistered ActivityResultLauncher with contract ", activityResultContract, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().");
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void b() {
        Integer num;
        ActivityResultRegistry activityResultRegistry = this.a;
        Bundle bundle = activityResultRegistry.g;
        LinkedHashMap linkedHashMap = activityResultRegistry.f;
        String str = this.b;
        str.getClass();
        if (!activityResultRegistry.d.contains(str) && (num = (Integer) activityResultRegistry.b.remove(str)) != null) {
            activityResultRegistry.a.remove(num);
        }
        activityResultRegistry.e.remove(str);
        if (linkedHashMap.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + linkedHashMap.get(str));
            linkedHashMap.remove(str);
        }
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + ((ActivityResult) BundleCompat.a(str, bundle)));
            bundle.remove(str);
        }
        if (activityResultRegistry.c.get(str) == null) {
            return;
        }
        d.i();
    }
}
