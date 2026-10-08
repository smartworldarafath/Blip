package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.ComponentActivity;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.core.os.BundleKt;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.savedstate.SavedStateRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i5 implements SavedStateRegistry.SavedStateProvider {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ i5(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle a() {
        ArrayList<? extends Parcelable> arrayList;
        Pair[] pairArr;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i2 = ComponentActivity.D;
                Bundle bundle = new Bundle();
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = ((ComponentActivity) obj).q;
                componentActivity$activityResultRegistry$1.getClass();
                LinkedHashMap linkedHashMap = componentActivity$activityResultRegistry$1.b;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(linkedHashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(linkedHashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(componentActivity$activityResultRegistry$1.d));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", new Bundle(componentActivity$activityResultRegistry$1.g));
                return bundle;
            case 1:
                Map c = ((SaveableStateRegistry) obj).c();
                Bundle bundle2 = new Bundle();
                for (Map.Entry entry : c.entrySet()) {
                    String str = (String) entry.getKey();
                    List list = (List) entry.getValue();
                    if (list instanceof ArrayList) {
                        arrayList = (ArrayList) list;
                    } else {
                        arrayList = new ArrayList<>(list);
                    }
                    bundle2.putParcelableArrayList(str, arrayList);
                }
                return bundle2;
            default:
                SavedStateHandleImpl savedStateHandleImpl = (SavedStateHandleImpl) obj;
                for (Map.Entry entry2 : MapsKt.i(savedStateHandleImpl.d).entrySet()) {
                    savedStateHandleImpl.a(((MutableStateFlow) entry2.getValue()).getValue(), (String) entry2.getKey());
                }
                for (Map.Entry entry3 : MapsKt.i(savedStateHandleImpl.b).entrySet()) {
                    savedStateHandleImpl.a(((SavedStateRegistry.SavedStateProvider) entry3.getValue()).a(), (String) entry3.getKey());
                }
                LinkedHashMap linkedHashMap2 = savedStateHandleImpl.a;
                if (linkedHashMap2.isEmpty()) {
                    pairArr = new Pair[0];
                } else {
                    ArrayList arrayList2 = new ArrayList(linkedHashMap2.size());
                    for (Map.Entry entry4 : linkedHashMap2.entrySet()) {
                        arrayList2.add(new Pair((String) entry4.getKey(), entry4.getValue()));
                    }
                    pairArr = (Pair[]) arrayList2.toArray(new Pair[0]);
                }
                return BundleKt.a((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        }
    }
}
