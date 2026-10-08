package androidx.datastore.migrations;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.datastore.core.DataMigration;
import defpackage.k8;
import defpackage.u2;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SharedPreferencesMigration<T> implements DataMigration<T> {
    public final Function2 a;
    public final Function3 b;
    public final Context c;
    public final String d;
    public final Lazy e;
    public final LinkedHashSet f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api24Impl {
        public static final boolean a(Context context, String str) {
            context.getClass();
            str.getClass();
            return context.deleteSharedPreferences(str);
        }
    }

    public SharedPreferencesMigration(final Context context, final String str, Function2 function2, Function3 function3) {
        LinkedHashSet linkedHashSet = SharedPreferencesMigration_androidKt.a;
        context.getClass();
        linkedHashSet.getClass();
        Function0<SharedPreferences> function0 = new Function0<SharedPreferences>() { // from class: androidx.datastore.migrations.SharedPreferencesMigration.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
                sharedPreferences.getClass();
                return sharedPreferences;
            }
        };
        this.a = function2;
        this.b = function3;
        this.c = context;
        this.d = str;
        this.e = LazyKt.b(function0);
        this.f = null;
    }

    public final void a() {
        Context context;
        String str;
        Lazy lazy = this.e;
        SharedPreferences.Editor edit = ((SharedPreferences) lazy.getValue()).edit();
        LinkedHashSet linkedHashSet = this.f;
        if (linkedHashSet == null) {
            edit.clear();
        } else {
            Iterator<T> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                edit.remove((String) it.next());
            }
        }
        if (edit.commit()) {
            if (((SharedPreferences) lazy.getValue()).getAll().isEmpty() && (context = this.c) != null && (str = this.d) != null) {
                Api24Impl.a(context, str);
            }
            if (linkedHashSet != null) {
                linkedHashSet.clear();
                return;
            }
            return;
        }
        k8.j("Unable to delete migrated keys from SharedPreferences.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0063, code lost:
    
        if (r4.isEmpty() == false) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, ContinuationImpl continuationImpl) {
        SharedPreferencesMigration$shouldMigrate$1 sharedPreferencesMigration$shouldMigrate$1;
        Object obj2;
        int i;
        if (continuationImpl instanceof SharedPreferencesMigration$shouldMigrate$1) {
            sharedPreferencesMigration$shouldMigrate$1 = (SharedPreferencesMigration$shouldMigrate$1) continuationImpl;
            int i2 = sharedPreferencesMigration$shouldMigrate$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                sharedPreferencesMigration$shouldMigrate$1.p = i2 - Integer.MIN_VALUE;
                obj2 = sharedPreferencesMigration$shouldMigrate$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = sharedPreferencesMigration$shouldMigrate$1.p;
                boolean z = true;
                if (i == 0) {
                    if (i == 1) {
                        this = sharedPreferencesMigration$shouldMigrate$1.m;
                        ResultKt.b(obj2);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    sharedPreferencesMigration$shouldMigrate$1.m = this;
                    sharedPreferencesMigration$shouldMigrate$1.p = 1;
                    obj2 = this.a.n(obj, sharedPreferencesMigration$shouldMigrate$1);
                    if (obj2 == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                if (((Boolean) obj2).booleanValue()) {
                    return Boolean.FALSE;
                }
                LinkedHashSet linkedHashSet = this.f;
                Lazy lazy = this.e;
                if (linkedHashSet == null) {
                    Map<String, ?> all = ((SharedPreferences) lazy.getValue()).getAll();
                    all.getClass();
                } else {
                    SharedPreferences sharedPreferences = (SharedPreferences) lazy.getValue();
                    if (!linkedHashSet.isEmpty()) {
                        Iterator<T> it = linkedHashSet.iterator();
                        while (it.hasNext()) {
                            if (sharedPreferences.contains((String) it.next())) {
                                break;
                            }
                        }
                    }
                    z = false;
                    return Boolean.valueOf(z);
                }
            }
        }
        sharedPreferencesMigration$shouldMigrate$1 = new SharedPreferencesMigration$shouldMigrate$1(this, continuationImpl);
        obj2 = sharedPreferencesMigration$shouldMigrate$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = sharedPreferencesMigration$shouldMigrate$1.p;
        boolean z2 = true;
        if (i == 0) {
        }
        if (((Boolean) obj2).booleanValue()) {
        }
    }
}
