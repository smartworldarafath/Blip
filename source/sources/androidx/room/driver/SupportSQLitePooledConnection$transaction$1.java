package androidx.room.driver;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.driver.SupportSQLitePooledConnection", f = "SupportSQLiteConnectionPool.android.kt", l = {83}, m = "transaction")
/* loaded from: classes.dex */
public final class SupportSQLitePooledConnection$transaction$1<R> extends ContinuationImpl {
    public Object m;
    public SupportSQLiteDatabase n;
    public /* synthetic */ Object o;
    public final /* synthetic */ SupportSQLitePooledConnection p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportSQLitePooledConnection$transaction$1(SupportSQLitePooledConnection supportSQLitePooledConnection, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.p = supportSQLitePooledConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.e(null, null, this);
    }
}
