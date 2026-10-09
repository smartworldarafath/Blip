package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.os.BundleCompat;
import defpackage.fe;
import defpackage.n;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ActivityResultRegistry {
    public final LinkedHashMap a = new LinkedHashMap();
    public final LinkedHashMap b = new LinkedHashMap();
    public final LinkedHashMap c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();
    public final transient LinkedHashMap e = new LinkedHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final Bundle g = new Bundle();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CallbackAndContract<O> {
        public final ActivityResultCallback a;
        public final ActivityResultContract b;

        public CallbackAndContract(ActivityResultCallback activityResultCallback, ActivityResultContract activityResultContract) {
            this.a = activityResultCallback;
            this.b = activityResultContract;
        }
    }

    public final void a(int i, Serializable serializable) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.e.get(str);
        if (callbackAndContract != null) {
            activityResultCallback = callbackAndContract.a;
        } else {
            activityResultCallback = null;
        }
        if (activityResultCallback == null) {
            this.g.remove(str);
            this.f.put(str, serializable);
        } else {
            ActivityResultCallback activityResultCallback2 = callbackAndContract.a;
            if (this.d.remove(str)) {
                activityResultCallback2.d(serializable);
            }
        }
    }

    public final boolean b(int i, int i2, Intent intent) {
        ActivityResultCallback activityResultCallback;
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.e.get(str);
        if (callbackAndContract != null) {
            activityResultCallback = callbackAndContract.a;
        } else {
            activityResultCallback = null;
        }
        if (activityResultCallback != null) {
            ArrayList arrayList = this.d;
            if (arrayList.contains(str)) {
                callbackAndContract.a.d(callbackAndContract.b.c(intent, i2));
                arrayList.remove(str);
                return true;
            }
        }
        this.f.remove(str);
        this.g.putParcelable(str, new ActivityResult(intent, i2));
        return true;
    }

    public abstract void c(int i, ActivityResultContract activityResultContract, Object obj);

    public final ActivityResultRegistry$register$3 d(String str, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
        str.getClass();
        LinkedHashMap linkedHashMap = this.b;
        if (((Integer) linkedHashMap.get(str)) == null) {
            Iterator it = SequencesKt.b(new n(0)).iterator();
            while (it.hasNext()) {
                Number number = (Number) it.next();
                Integer valueOf = Integer.valueOf(number.intValue());
                LinkedHashMap linkedHashMap2 = this.a;
                if (!linkedHashMap2.containsKey(valueOf)) {
                    int intValue = number.intValue();
                    linkedHashMap2.put(Integer.valueOf(intValue), str);
                    linkedHashMap.put(str, Integer.valueOf(intValue));
                }
            }
            fe.o("Sequence contains no element matching the predicate.");
            return null;
        }
        this.e.put(str, new CallbackAndContract(activityResultCallback, activityResultContract));
        LinkedHashMap linkedHashMap3 = this.f;
        if (linkedHashMap3.containsKey(str)) {
            Object obj = linkedHashMap3.get(str);
            linkedHashMap3.remove(str);
            activityResultCallback.d(obj);
        }
        Bundle bundle = this.g;
        ActivityResult activityResult = (ActivityResult) BundleCompat.a(str, bundle);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.d(activityResultContract.c(activityResult.k, activityResult.j));
        }
        return new ActivityResultRegistry$register$3(this, str, activityResultContract);
    }
}
