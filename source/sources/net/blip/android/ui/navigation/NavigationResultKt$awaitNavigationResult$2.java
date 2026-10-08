package net.blip.android.ui.navigation;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import defpackage.u2;
import java.util.LinkedHashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.navigation.NavigationResultKt$awaitNavigationResult$2", f = "NavigationResult.kt", l = {55}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class NavigationResultKt$awaitNavigationResult$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public int n;
    public final /* synthetic */ NavController o;
    public final /* synthetic */ int p;
    public final /* synthetic */ NavBackStackEntry q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavigationResultKt$awaitNavigationResult$2(NavController navController, int i, NavBackStackEntry navBackStackEntry, Continuation continuation) {
        super(2, continuation);
        this.o = navController;
        this.p = i;
        this.q = navBackStackEntry;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NavigationResultKt$awaitNavigationResult$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new NavigationResultKt$awaitNavigationResult$2(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            NavController navController = this.o;
            CancellableFlow e = FlowKt.e((CancellableFlow) FlowKt.a(navController.b.A));
            NavBackStackEntry navBackStackEntry = this.q;
            NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$map$1 navigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$map$1 = new NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$map$1(new NavigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$filter$1(e, navController, navBackStackEntry), navBackStackEntry);
            this.n = 1;
            obj = FlowKt.n(navigationResultKt$awaitNavigationResult$2$invokeSuspend$$inlined$map$1, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        if (((Boolean) obj).booleanValue()) {
            LinkedHashMap linkedHashMap = NavigationResultStore.a;
            Object remove = NavigationResultStore.a.remove(Integer.valueOf(this.p));
            if (remove != null) {
                return remove;
            }
        }
        return null;
    }
}
