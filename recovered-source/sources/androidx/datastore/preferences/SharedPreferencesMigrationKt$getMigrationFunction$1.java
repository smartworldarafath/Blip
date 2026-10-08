package androidx.datastore.preferences;

import androidx.datastore.migrations.SharedPreferencesView;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1", f = "SharedPreferencesMigration.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SharedPreferencesMigrationKt$getMigrationFunction$1 extends SuspendLambda implements Function3<SharedPreferencesView, Preferences, Continuation<? super Preferences>, Object> {
    public /* synthetic */ SharedPreferencesView n;
    public /* synthetic */ Preferences o;

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, androidx.datastore.preferences.SharedPreferencesMigrationKt$getMigrationFunction$1] */
    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        ?? suspendLambda = new SuspendLambda(3, (Continuation) obj3);
        suspendLambda.n = (SharedPreferencesView) obj;
        suspendLambda.o = (Preferences) obj2;
        return suspendLambda.v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        SharedPreferencesView sharedPreferencesView = this.n;
        Preferences preferences = this.o;
        Set keySet = preferences.a().keySet();
        ArrayList arrayList = new ArrayList(CollectionsKt.m(keySet, 10));
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            arrayList.add(((Preferences.Key) it.next()).a);
        }
        Map<String, ?> all = sharedPreferencesView.a.getAll();
        all.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it2.next();
            String key = next.getKey();
            Set set = sharedPreferencesView.b;
            if (set != null) {
                z = set.contains(key);
            }
            if (z) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.d(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key2 = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Set) {
                value = CollectionsKt.a0((Iterable) value);
            }
            linkedHashMap2.put(key2, value);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            if (!arrayList.contains((String) entry2.getKey())) {
                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
            }
        }
        MutablePreferences mutablePreferences = new MutablePreferences(new LinkedHashMap(preferences.a()), false);
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            String str = (String) entry3.getKey();
            Object value2 = entry3.getValue();
            if (value2 instanceof Boolean) {
                str.getClass();
                mutablePreferences.d(new Preferences.Key(str), value2);
            } else if (value2 instanceof Float) {
                str.getClass();
                mutablePreferences.d(new Preferences.Key(str), value2);
            } else if (value2 instanceof Integer) {
                str.getClass();
                mutablePreferences.d(new Preferences.Key(str), value2);
            } else if (value2 instanceof Long) {
                str.getClass();
                mutablePreferences.d(new Preferences.Key(str), value2);
            } else if (value2 instanceof String) {
                str.getClass();
                mutablePreferences.d(new Preferences.Key(str), value2);
            } else if (value2 instanceof Set) {
                str.getClass();
                mutablePreferences.d(new Preferences.Key(str), (Set) value2);
            }
        }
        return new MutablePreferences(new LinkedHashMap(mutablePreferences.a()), true);
    }
}
