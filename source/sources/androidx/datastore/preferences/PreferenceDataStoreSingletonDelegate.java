package androidx.datastore.preferences;

import android.content.Context;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.PreferenceDataStore;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import java.io.File;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate {
    public final String a;
    public final ReplaceFileCorruptionHandler b;
    public final Function1 c;
    public final CoroutineScope d;
    public final Object e = new Object();
    public volatile PreferenceDataStore f;

    public PreferenceDataStoreSingletonDelegate(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 function1, CoroutineScope coroutineScope) {
        this.a = str;
        this.b = replaceFileCorruptionHandler;
        this.c = function1;
        this.d = coroutineScope;
    }

    public final Object a(Object obj, KProperty kProperty) {
        PreferenceDataStore preferenceDataStore;
        Context context = (Context) obj;
        context.getClass();
        kProperty.getClass();
        PreferenceDataStore preferenceDataStore2 = this.f;
        if (preferenceDataStore2 == null) {
            synchronized (this.e) {
                try {
                    if (this.f == null) {
                        final Context applicationContext = context.getApplicationContext();
                        ReplaceFileCorruptionHandler replaceFileCorruptionHandler = this.b;
                        Function1 function1 = this.c;
                        applicationContext.getClass();
                        this.f = PreferenceDataStoreFactory.a(replaceFileCorruptionHandler, (List) function1.b(applicationContext), this.d, new Function0<File>() { // from class: androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate$getValue$1$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                return new File(applicationContext.getApplicationContext().getFilesDir(), "datastore/".concat(this.a.concat(".preferences_pb")));
                            }
                        });
                    }
                    preferenceDataStore = this.f;
                    preferenceDataStore.getClass();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return preferenceDataStore;
        }
        return preferenceDataStore2;
    }
}
