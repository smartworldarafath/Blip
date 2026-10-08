package defpackage;

import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import androidx.navigation.compose.NavHostEventHandler;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ub implements Function1 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;

    public /* synthetic */ ub(NavHostEventHandler navHostEventHandler, boolean z) {
        this.l = navHostEventHandler;
        this.k = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Object obj2 = this.l;
        boolean z = this.k;
        switch (i) {
            case 0:
                final NavHostEventHandler navHostEventHandler = (NavHostEventHandler) obj2;
                final LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj;
                navHostEventHandler.f(z);
                return new LifecycleStopOrDisposeEffectResult(lifecycleStartStopEffectScope, navHostEventHandler) { // from class: androidx.navigation.compose.NavHostEventHandlerKt$rememberNavHostEventHandler$lambda$2$0$$inlined$onStopOrDispose$1
                    public final /* synthetic */ NavHostEventHandler a;

                    {
                        this.a = navHostEventHandler;
                    }

                    @Override // androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult
                    public final void a() {
                        this.a.f(false);
                    }
                };
            default:
                String str = (String) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                if (z) {
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                    SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.k;
                    KProperty kProperty = SemanticsPropertiesKt.a[3];
                    Object obj3 = new Object();
                    semanticsPropertyKey.getClass();
                    semanticsPropertyReceiver.b(semanticsPropertyKey, obj3);
                }
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.d;
                KProperty kProperty2 = SemanticsPropertiesKt.a[2];
                semanticsPropertyKey2.getClass();
                semanticsPropertyReceiver.b(semanticsPropertyKey2, str);
                semanticsPropertyReceiver.b(SemanticsActions.v, new AccessibilityAction(null, new vc(21)));
                return Unit.a;
        }
    }

    public /* synthetic */ ub(String str, boolean z) {
        this.k = z;
        this.l = str;
    }
}
