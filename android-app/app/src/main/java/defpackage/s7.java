package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.f;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;
import net.blip.shared.FocusBlockerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s7 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ s7(NavBackStackEntry navBackStackEntry, List list, boolean z) {
        this.j = 0;
        this.l = navBackStackEntry;
        this.k = z;
        this.m = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v2, types: [t7, androidx.lifecycle.LifecycleObserver] */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.m;
        Object obj3 = this.l;
        final boolean z = this.k;
        switch (i) {
            case 0:
                final NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                final List list = (List) obj2;
                final ?? r8 = new LifecycleEventObserver() { // from class: t7
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        boolean z2 = z;
                        List list2 = list;
                        NavBackStackEntry navBackStackEntry2 = navBackStackEntry;
                        if (z2 && !list2.contains(navBackStackEntry2)) {
                            list2.add(navBackStackEntry2);
                        }
                        if (event == Lifecycle.Event.ON_START && !list2.contains(navBackStackEntry2)) {
                            list2.add(navBackStackEntry2);
                        }
                        if (event == Lifecycle.Event.ON_STOP) {
                            list2.remove(navBackStackEntry2);
                        }
                    }
                };
                navBackStackEntry.t.a(r8);
                return new DisposableEffectResult() { // from class: androidx.navigation.compose.DialogHostKt$PopulateVisibleList$lambda$0$0$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        NavBackStackEntry.this.t.b(r8);
                    }
                };
            case 1:
                FocusManager focusManager = (FocusManager) obj3;
                MutableState mutableState = (MutableState) obj2;
                FocusState focusState = (FocusState) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = FocusBlockerKt.a;
                focusState.getClass();
                if (!z) {
                    FocusStateImpl focusStateImpl = (FocusStateImpl) focusState;
                    if (focusStateImpl.b() || focusStateImpl.a()) {
                        FocusDirection focusDirection = (FocusDirection) mutableState.getValue();
                        if (focusDirection != null && focusDirection.a == 2) {
                            ((FocusOwnerImpl) focusManager).h(2, true);
                        } else if (focusDirection != null && focusDirection.a == 1) {
                            ((FocusOwnerImpl) focusManager).h(1, true);
                        } else {
                            FocusManager.a(focusManager);
                        }
                    }
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ContentTransform contentTransform = (ContentTransform) obj3;
                ContentTransform contentTransform2 = (ContentTransform) obj2;
                ((AnimatedContentTransitionScope) obj).getClass();
                if (!z) {
                    return contentTransform2;
                }
                return contentTransform;
            default:
                PagerState pagerState = (PagerState) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (z) {
                    f fVar = new f(pagerState, coroutineScope, 0);
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                    semanticsPropertyReceiver.b(SemanticsActions.y, new AccessibilityAction(null, fVar));
                    semanticsPropertyReceiver.b(SemanticsActions.A, new AccessibilityAction(null, new f(pagerState, coroutineScope, 1)));
                } else {
                    f fVar2 = new f(pagerState, coroutineScope, 2);
                    KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
                    semanticsPropertyReceiver.b(SemanticsActions.z, new AccessibilityAction(null, fVar2));
                    semanticsPropertyReceiver.b(SemanticsActions.B, new AccessibilityAction(null, new f(pagerState, coroutineScope, 3)));
                }
                return unit;
        }
    }

    public /* synthetic */ s7(int i, Object obj, Object obj2, boolean z) {
        this.j = i;
        this.k = z;
        this.l = obj;
        this.m = obj2;
    }
}
