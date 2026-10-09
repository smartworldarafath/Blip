package defpackage;

import android.content.Context;
import android.os.Process;
import android.util.Log;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.preferences.SharedPreferencesMigrationKt;
import androidx.datastore.preferences.core.MutablePreferences;
import com.google.firebase.datastorage.JavaDataStorage;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class y9 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ JavaDataStorage k;

    public /* synthetic */ y9(JavaDataStorage javaDataStorage, int i) {
        this.j = i;
        this.k = javaDataStorage;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        JavaDataStorage javaDataStorage = this.k;
        switch (i) {
            case 0:
                CorruptionException corruptionException = (CorruptionException) obj;
                KProperty[] kPropertyArr = JavaDataStorage.d;
                corruptionException.getClass();
                Log.w(Reflection.a(JavaDataStorage.class).c(), "CorruptionException in " + javaDataStorage.a + " DataStore running in process " + Process.myPid(), corruptionException);
                return new MutablePreferences(true);
            default:
                Context context = (Context) obj;
                KProperty[] kPropertyArr2 = JavaDataStorage.d;
                context.getClass();
                String str = javaDataStorage.a;
                LinkedHashSet linkedHashSet = SharedPreferencesMigrationKt.a;
                linkedHashSet.getClass();
                return CollectionsKt.B(new SharedPreferencesMigration(context, str, SharedPreferencesMigrationKt.b(linkedHashSet), SharedPreferencesMigrationKt.a()));
        }
    }
}
