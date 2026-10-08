package defpackage;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.contextaware.OnContextAvailableListener;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class j5 implements OnContextAvailableListener {
    public final /* synthetic */ ComponentActivity a;

    public /* synthetic */ j5(ComponentActivity componentActivity) {
        this.a = componentActivity;
    }

    public final void a(Context context) {
        int i = ComponentActivity.D;
        context.getClass();
        ComponentActivity componentActivity = this.a;
        Bundle a = componentActivity.m.b.a("android:support:activity-result");
        if (a != null) {
            ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = componentActivity.q;
            LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.b;
            LinkedHashMap linkedHashMap2 = componentActivity$activityResultRegistry$1.a;
            Bundle bundle = componentActivity$activityResultRegistry$1.g;
            ArrayList<Integer> integerArrayList = a.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            ArrayList<String> stringArrayList = a.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList != null && integerArrayList != null) {
                ArrayList<String> stringArrayList2 = a.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                if (stringArrayList2 != null) {
                    componentActivity$activityResultRegistry$1.d.addAll(stringArrayList2);
                }
                Bundle bundle2 = a.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT");
                if (bundle2 != null) {
                    bundle.putAll(bundle2);
                }
                int size = stringArrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    String str = stringArrayList.get(i2);
                    if (linkedHashMap.containsKey(str)) {
                        Integer num = (Integer) linkedHashMap.remove(str);
                        if (!bundle.containsKey(str)) {
                            TypeIntrinsics.b(linkedHashMap2).remove(num);
                        }
                    }
                    Integer num2 = integerArrayList.get(i2);
                    num2.getClass();
                    int intValue = num2.intValue();
                    String str2 = stringArrayList.get(i2);
                    str2.getClass();
                    String str3 = str2;
                    linkedHashMap2.put(Integer.valueOf(intValue), str3);
                    componentActivity$activityResultRegistry$1.b.put(str3, Integer.valueOf(intValue));
                }
            }
        }
    }
}
