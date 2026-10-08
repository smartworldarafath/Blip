package com.google.firebase.heartbeatinfo;

import android.util.Base64OutputStream;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.google.firebase.datastorage.JavaDataStorageKt;
import com.google.firebase.platforminfo.DefaultUserAgentPublisher;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.zip.GZIPOutputStream;
import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ DefaultHeartBeatController b;

    public /* synthetic */ b(DefaultHeartBeatController defaultHeartBeatController, int i) {
        this.a = i;
        this.b = defaultHeartBeatController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        String byteArrayOutputStream;
        switch (this.a) {
            case 0:
                DefaultHeartBeatController defaultHeartBeatController = this.b;
                synchronized (defaultHeartBeatController) {
                    try {
                        HeartBeatInfoStorage heartBeatInfoStorage = (HeartBeatInfoStorage) defaultHeartBeatController.a.get();
                        ArrayList a = heartBeatInfoStorage.a();
                        synchronized (heartBeatInfoStorage) {
                            heartBeatInfoStorage.a.a(new Object());
                        }
                        JSONArray jSONArray = new JSONArray();
                        for (int i = 0; i < a.size(); i++) {
                            HeartBeatResult heartBeatResult = (HeartBeatResult) a.get(i);
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("agent", ((AutoValue_HeartBeatResult) heartBeatResult).a);
                            jSONObject.put("dates", new JSONArray((Collection) ((AutoValue_HeartBeatResult) heartBeatResult).b));
                            jSONArray.put(jSONObject);
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("heartbeats", jSONArray);
                        jSONObject2.put("version", "2");
                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                        Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                            try {
                                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                                gZIPOutputStream.close();
                                base64OutputStream.close();
                                byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                            } finally {
                            }
                        } catch (Throwable th) {
                            try {
                                base64OutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                return byteArrayOutputStream;
            default:
                DefaultHeartBeatController defaultHeartBeatController2 = this.b;
                synchronized (defaultHeartBeatController2) {
                    final HeartBeatInfoStorage heartBeatInfoStorage2 = (HeartBeatInfoStorage) defaultHeartBeatController2.a.get();
                    long currentTimeMillis = System.currentTimeMillis();
                    final String b = ((DefaultUserAgentPublisher) ((UserAgentPublisher) defaultHeartBeatController2.c.get())).b();
                    synchronized (heartBeatInfoStorage2) {
                        final String b2 = HeartBeatInfoStorage.b(currentTimeMillis);
                        b.getClass();
                        final Preferences.Key key = new Preferences.Key(b);
                        heartBeatInfoStorage2.a.a(new Function1(heartBeatInfoStorage2, b2, b, key) { // from class: com.google.firebase.heartbeatinfo.c
                            public final /* synthetic */ String j;
                            public final /* synthetic */ String k;
                            public final /* synthetic */ Preferences.Key l;

                            {
                                this.j = b2;
                                this.k = b;
                                this.l = key;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj) {
                                Object obj2;
                                MutablePreferences mutablePreferences = (MutablePreferences) obj;
                                Preferences.Key key2 = HeartBeatInfoStorage.b;
                                Preferences.Key key3 = HeartBeatInfoStorage.c;
                                Preferences.Key key4 = HeartBeatInfoStorage.d;
                                String str = "";
                                String str2 = (String) JavaDataStorageKt.a(mutablePreferences, key4, "");
                                String str3 = this.j;
                                boolean equals = str2.equals(str3);
                                Preferences.Key key5 = this.l;
                                Object obj3 = null;
                                if (equals) {
                                    Preferences.Key c = HeartBeatInfoStorage.c(mutablePreferences, str3);
                                    if (c == null || c.a.equals(this.k)) {
                                        return null;
                                    }
                                    HeartBeatInfoStorage.d(mutablePreferences, str3);
                                    HashSet hashSet = new HashSet((Collection) JavaDataStorageKt.a(mutablePreferences, key5, new HashSet()));
                                    hashSet.add(str3);
                                    mutablePreferences.d(key5, hashSet);
                                    return null;
                                }
                                long longValue = ((Long) JavaDataStorageKt.a(mutablePreferences, key3, 0L)).longValue();
                                if (longValue + 1 == 30) {
                                    long longValue2 = ((Long) JavaDataStorageKt.a(mutablePreferences, key3, 0L)).longValue();
                                    Set hashSet2 = new HashSet();
                                    String str4 = null;
                                    for (Map.Entry entry : mutablePreferences.a().entrySet()) {
                                        if (entry.getValue() instanceof Set) {
                                            Set<String> set = (Set) entry.getValue();
                                            for (String str5 : set) {
                                                Object obj4 = obj3;
                                                if (str4 == null || str4.compareTo(str5) > 0) {
                                                    str = ((Preferences.Key) entry.getKey()).a;
                                                    str4 = str5;
                                                    hashSet2 = set;
                                                }
                                                obj3 = obj4;
                                            }
                                        }
                                        obj3 = obj3;
                                    }
                                    obj2 = obj3;
                                    HashSet hashSet3 = new HashSet(hashSet2);
                                    hashSet3.remove(str4);
                                    str.getClass();
                                    mutablePreferences.d(new Preferences.Key(str), hashSet3);
                                    longValue = longValue2 - 1;
                                    mutablePreferences.d(key3, Long.valueOf(longValue));
                                } else {
                                    obj2 = null;
                                }
                                HashSet hashSet4 = new HashSet((Collection) JavaDataStorageKt.a(mutablePreferences, key5, new HashSet()));
                                hashSet4.add(str3);
                                mutablePreferences.d(key5, hashSet4);
                                mutablePreferences.d(key3, Long.valueOf(longValue + 1));
                                mutablePreferences.d(key4, str3);
                                return obj2;
                            }
                        });
                    }
                }
                return null;
        }
    }
}
