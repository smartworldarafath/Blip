package com.google.firebase.heartbeatinfo;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        MutablePreferences mutablePreferences = (MutablePreferences) obj;
        Preferences.Key key = HeartBeatInfoStorage.c;
        Map a = mutablePreferences.a();
        LinkedHashMap linkedHashMap = mutablePreferences.a;
        long j = 0;
        for (Map.Entry entry : a.entrySet()) {
            if (entry.getValue() instanceof Set) {
                Preferences.Key key2 = (Preferences.Key) entry.getKey();
                Set set = (Set) entry.getValue();
                String b = HeartBeatInfoStorage.b(System.currentTimeMillis());
                if (set.contains(b)) {
                    Object[] objArr = {b};
                    HashSet hashSet = new HashSet(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    if (hashSet.add(obj2)) {
                        mutablePreferences.c(key2, Collections.unmodifiableSet(hashSet));
                        j++;
                    } else {
                        io.sentry.d.e(obj2, "duplicate element: ");
                        return null;
                    }
                } else {
                    key2.getClass();
                    mutablePreferences.b();
                    linkedHashMap.remove(key2);
                }
            }
        }
        if (j == 0) {
            key.getClass();
            mutablePreferences.b();
            linkedHashMap.remove(key);
        } else {
            mutablePreferences.c(key, Long.valueOf(j));
        }
        return null;
    }
}
