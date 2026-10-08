package androidx.room;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class RoomDatabase$closeBarrier$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        RoomDatabase roomDatabase = (RoomDatabase) this.k;
        ContextScope contextScope = roomDatabase.a;
        if (contextScope != null) {
            CoroutineScopeKt.b(contextScope, null);
            roomDatabase.f();
            RoomConnectionManager roomConnectionManager = roomDatabase.d;
            if (roomConnectionManager != null) {
                roomConnectionManager.f.close();
                return Unit.a;
            }
            Intrinsics.e("connectionManager");
            throw null;
        }
        Intrinsics.e("coroutineScope");
        throw null;
    }
}
