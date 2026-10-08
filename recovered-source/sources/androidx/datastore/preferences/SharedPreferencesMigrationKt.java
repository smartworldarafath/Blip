package androidx.datastore.preferences;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SharedPreferencesMigrationKt {
    public static final LinkedHashSet a = new LinkedHashSet();

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function3] */
    public static final Function3 a() {
        return new SuspendLambda(3, null);
    }

    public static final Function2 b(Set set) {
        return new SharedPreferencesMigrationKt$getShouldRunMigration$1(set, null);
    }
}
