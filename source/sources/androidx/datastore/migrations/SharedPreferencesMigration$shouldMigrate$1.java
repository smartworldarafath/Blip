package androidx.datastore.migrations;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.migrations.SharedPreferencesMigration", f = "SharedPreferencesMigration.android.kt", l = {151}, m = "shouldMigrate")
/* loaded from: classes.dex */
public final class SharedPreferencesMigration$shouldMigrate$1 extends ContinuationImpl {
    public SharedPreferencesMigration m;
    public /* synthetic */ Object n;
    public final /* synthetic */ SharedPreferencesMigration o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedPreferencesMigration$shouldMigrate$1(SharedPreferencesMigration sharedPreferencesMigration, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = sharedPreferencesMigration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.b(null, this);
    }
}
