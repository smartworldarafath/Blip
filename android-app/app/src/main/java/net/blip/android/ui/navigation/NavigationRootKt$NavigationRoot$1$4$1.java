package net.blip.android.ui.navigation;

import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.Color;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.ui.androidtheme.AndroidColorsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.navigation.NavigationRootKt$NavigationRoot$1$4$1", f = "NavigationRoot.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class NavigationRootKt$NavigationRoot$1$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ String n;
    public final /* synthetic */ MutableState o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavigationRootKt$NavigationRoot$1$4$1(String str, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.n = str;
        this.o = mutableState;
        this.p = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        NavigationRootKt$NavigationRoot$1$4$1 navigationRootKt$NavigationRoot$1$4$1 = (NavigationRootKt$NavigationRoot$1$4$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        navigationRootKt$NavigationRoot$1$4$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new NavigationRootKt$NavigationRoot$1$4$1(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        long j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Set e = SetsKt.e("gallery/{urls}");
        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = NavigationRootKt.a;
        MutableState mutableState = this.o;
        String str = (String) mutableState.getValue();
        String str2 = this.n;
        String[] strArr = {str2, str};
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i = 0; i < 2; i++) {
            String str3 = strArr[i];
            if (str3 != null) {
                linkedHashSet.add(str3);
            }
        }
        if (CollectionsKt.w(linkedHashSet, e).isEmpty()) {
            j = Color.g;
        } else {
            j = AndroidColorsKt.c.p;
        }
        this.p.setValue(new Color(j));
        mutableState.setValue(str2);
        return Unit.a;
    }
}
