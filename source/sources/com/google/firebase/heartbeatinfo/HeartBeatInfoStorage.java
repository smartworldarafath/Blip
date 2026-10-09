package com.google.firebase.heartbeatinfo;

import android.content.Context;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.datastorage.JavaDataStorage;
import com.google.firebase.datastorage.JavaDataStorageKt;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class HeartBeatInfoStorage {
    public static final Preferences.Key b = new Preferences.Key("fire-global");
    public static final Preferences.Key c = new Preferences.Key("fire-count");
    public static final Preferences.Key d = new Preferences.Key("last-used-date");
    public final JavaDataStorage a;

    public HeartBeatInfoStorage(Context context, String str) {
        this.a = new JavaDataStorage(context, "FirebaseHeartBeat".concat(str));
    }

    public static String b(long j) {
        return new Date(j).toInstant().atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
    }

    public static Preferences.Key c(MutablePreferences mutablePreferences, String str) {
        for (Map.Entry entry : mutablePreferences.a().entrySet()) {
            if (entry.getValue() instanceof Set) {
                Iterator it = ((Set) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (str.equals((String) it.next())) {
                        String str2 = ((Preferences.Key) entry.getKey()).a;
                        str2.getClass();
                        return new Preferences.Key(str2);
                    }
                }
            }
        }
        return null;
    }

    public static void d(MutablePreferences mutablePreferences, String str) {
        Preferences.Key c2 = c(mutablePreferences, str);
        if (c2 == null) {
            return;
        }
        HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.a(mutablePreferences, c2, new HashSet()));
        hashSet.remove(str);
        if (hashSet.isEmpty()) {
            mutablePreferences.b();
            mutablePreferences.a.remove(c2);
        } else {
            mutablePreferences.d(c2, hashSet);
        }
    }

    public final synchronized ArrayList a() {
        try {
            ArrayList arrayList = new ArrayList();
            String b2 = b(System.currentTimeMillis());
            for (Map.Entry entry : this.a.b().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    HashSet hashSet = new HashSet((Set) entry.getValue());
                    hashSet.remove(b2);
                    if (!hashSet.isEmpty()) {
                        arrayList.add(new AutoValue_HeartBeatResult(((Preferences.Key) entry.getKey()).a, new ArrayList(hashSet)));
                    }
                }
            }
            final long currentTimeMillis = System.currentTimeMillis();
            synchronized (this) {
                this.a.a(new Function1() { // from class: com.google.firebase.heartbeatinfo.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        ((MutablePreferences) obj).c(HeartBeatInfoStorage.b, Long.valueOf(currentTimeMillis));
                        return null;
                    }
                });
            }
            return arrayList;
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized boolean e(Preferences.Key key, long j) {
        if (b(((Long) this.a.c(key, -1L)).longValue()).equals(b(j))) {
            return false;
        }
        this.a.d(key, Long.valueOf(j));
        return true;
    }
}
