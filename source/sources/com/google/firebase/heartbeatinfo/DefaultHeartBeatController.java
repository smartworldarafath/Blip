package com.google.firebase.heartbeatinfo;

import android.content.Context;
import androidx.core.os.UserManagerCompat;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.components.Lazy;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultHeartBeatController implements HeartBeatController, HeartBeatInfo {
    public final Lazy a;
    public final Context b;
    public final Provider c;
    public final Set d;
    public final Executor e;

    public DefaultHeartBeatController(final Context context, final String str, Set set, Provider provider, Executor executor) {
        this.a = new Lazy(new Provider() { // from class: com.google.firebase.heartbeatinfo.a
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return new HeartBeatInfoStorage(context, str);
            }
        });
        this.d = set;
        this.e = executor;
        this.c = provider;
        this.b = context;
    }

    public final synchronized HeartBeatInfo.HeartBeat a() {
        boolean e;
        long currentTimeMillis = System.currentTimeMillis();
        final HeartBeatInfoStorage heartBeatInfoStorage = (HeartBeatInfoStorage) this.a.get();
        synchronized (heartBeatInfoStorage) {
            e = heartBeatInfoStorage.e(HeartBeatInfoStorage.b, currentTimeMillis);
        }
        if (e) {
            synchronized (heartBeatInfoStorage) {
                final String b = HeartBeatInfoStorage.b(System.currentTimeMillis());
                heartBeatInfoStorage.a.a(new Function1(heartBeatInfoStorage, b) { // from class: com.google.firebase.heartbeatinfo.e
                    public final /* synthetic */ String j;

                    {
                        this.j = b;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        MutablePreferences mutablePreferences = (MutablePreferences) obj;
                        Preferences.Key key = HeartBeatInfoStorage.d;
                        String str = this.j;
                        mutablePreferences.c(key, str);
                        HeartBeatInfoStorage.d(mutablePreferences, str);
                        return null;
                    }
                });
            }
            return HeartBeatInfo.HeartBeat.GLOBAL;
        }
        return HeartBeatInfo.HeartBeat.NONE;
    }

    public final Task b() {
        if (!UserManagerCompat.a(this.b)) {
            return Tasks.e("");
        }
        return Tasks.c(this.e, new b(this, 0));
    }

    public final void c() {
        if (this.d.size() <= 0) {
            Tasks.e(null);
        } else if (!UserManagerCompat.a(this.b)) {
            Tasks.e(null);
        } else {
            Tasks.c(this.e, new b(this, 1));
        }
    }
}
