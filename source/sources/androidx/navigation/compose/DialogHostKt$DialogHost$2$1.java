package androidx.navigation.compose;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.navigation.NavBackStackEntry;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.navigation.compose.DialogHostKt$DialogHost$2$1", f = "DialogHost.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class DialogHostKt$DialogHost$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ MutableState n;
    public final /* synthetic */ DialogNavigator o;
    public final /* synthetic */ SnapshotStateList p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogHostKt$DialogHost$2$1(MutableState mutableState, DialogNavigator dialogNavigator, SnapshotStateList snapshotStateList, Continuation continuation) {
        super(2, continuation);
        this.n = mutableState;
        this.o = dialogNavigator;
        this.p = snapshotStateList;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        DialogHostKt$DialogHost$2$1 dialogHostKt$DialogHost$2$1 = (DialogHostKt$DialogHost$2$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        dialogHostKt$DialogHost$2$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DialogHostKt$DialogHost$2$1(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        for (NavBackStackEntry navBackStackEntry : (Set) this.n.getValue()) {
            DialogNavigator dialogNavigator = this.o;
            if (!((List) dialogNavigator.b().e.getValue()).contains(navBackStackEntry) && !this.p.contains(navBackStackEntry)) {
                dialogNavigator.b().b(navBackStackEntry);
            }
        }
        return Unit.a;
    }
}
